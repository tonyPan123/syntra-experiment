use circular_buffer::CircularBuffer;
use clap::Parser;
use env_logger::Env;
use itertools::Itertools;
use log::{debug, info};
use num_traits::ToPrimitive;
use serde::Serialize;
use std::cmp::Ordering;
use std::collections::{HashMap, HashSet};
use std::fmt::{Display, Formatter};
use std::fs::File;
use std::path::Path;
use std::rc::{Rc, Weak};
use lazy_static::lazy_static;

use cc_common::*;
use minimax::State;
// use network_model_z3::NetworkModelZ3;
use network_model_nc::NetworkModelNC;
use ds::tree::Tree;
use ds::*;

// ------------------------------------------------------------------------------------------
// Minimax move
#[derive(Clone, PartialEq, Debug, Eq, Hash, Serialize)]
#[allow(clippy::upper_case_acronyms)]
pub enum CCMove<NA: NetworkAction> {
    CCA(CCAAction),
    Network(NA),
}

impl<NA: NetworkAction> Display for CCMove<NA> {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match self {
            CCMove::CCA(a) => write!(f, "rate={:.2}", a.rate.to_f64().unwrap()),
            CCMove::Network(n) => write!(f, "{}", n),
        }
    }
}

impl<NA: NetworkAction> minimax::Move for CCMove<NA> {}

// ------------------------------------------------------------------------------------------
// Minimax transposition table state, and search tree
#[derive(Clone, Debug, Eq, PartialEq, Hash)]
struct CCTTState<O: Observation> {
    history: Vec<O>,
    move_cca: Option<CCAAction>,
}

impl<O: Observation> minimax::TTState for CCTTState<O> {}

#[derive(Debug, Serialize)]
struct TreeData<O: Observation, NA: NetworkAction> {
    observation: O,
    #[serde(with = "serde_optional_real")]
    cca_rate: Option<RealNumRep>,
    history: Vec<O>,
    belief_bounds: BeliefBounds,
    metrics: Metrics,
    chosen_move: Option<CCMove<NA>>,
    chosen_value: Option<CCValue>,
}

// ------------------------------------------------------------------------------------------
// Minimax value
#[derive(Clone, PartialEq, Debug, Copy, Serialize)]
enum CCValue {
    Inf,
    NegInf,
    Value {
        belief_bounds: BeliefBounds,
        metrics: Metrics,
    },
}

// const DEFAULT_PERMUTATION: &[&str] = &[
//     "c", "b", "ld", "s", "qdel", "sc", "sb", "sclmul", "scladd", "schmul", "schadd", "ttsc",
// ];
const DEFAULT_PERMUTATION: &[&str] = &[
    //"lt", "schadd", "scladd", "ttsc",
    //"lt", "schadd", "cb", "ttcb",
    "lt", "schadd", "ttscbadd", "scb", "c",
    //"schadd", "cb", "ttcb",
];
lazy_static! {
    static ref OBJ_PERMUTATION: Vec<String> = {
        let args = Args::parse();
        let mut ret: Vec<String> = args.obj_perm.clone();
        let set: HashSet<String> = ret.iter().map(|x| x.into()).collect();
        for p in DEFAULT_PERMUTATION.iter() {
            if !set.contains(*p) {
                ret.push(p.to_string());
            }
        }
        ret
    };
}

impl CCValue {
    fn cmp_c_beliefs(b1: &BeliefBounds, b2: &BeliefBounds) -> Option<Ordering> {
        (b1.max_c - b1.min_c).partial_cmp(&(b2.max_c - b2.min_c))
    }

    fn cmp_b_beliefs(b1: &BeliefBounds, b2: &BeliefBounds) -> Option<Ordering> {
        (b1.max_b - b1.min_b).partial_cmp(&(b2.max_b - b2.min_b))
    }

    // fn cmp_metrics(m1: &Metrics, m2: &Metrics) -> Option<Ordering> {
    //     m1.partial_cmp(m2)
    // }

    fn cmp_entry_point(&self, other: &Self) -> Option<Ordering> {
        let (b1, m1) = match self {
            CCValue::Value {
                belief_bounds,
                metrics,
            } => (belief_bounds, metrics),
            _ => panic!("Should not be here"),
        };
        let (b2, m2) = match other {
            CCValue::Value {
                belief_bounds,
                metrics,
            } => (belief_bounds, metrics),
            _ => panic!("Should not be here"),
        };

        let c = Self::cmp_c_beliefs(b1, b2);
        let b = Self::cmp_b_beliefs(b1, b2);

        // let m = Self::cmp_metrics(m1, m2);
        // If shrink = true, then we want less than. bool would give greater
        // than, so we reverse the order of 1 and 2.
        let sc = m2.shrink_c.partial_cmp(&m1.shrink_c);
        let sb = m2.shrink_b.partial_cmp(&m1.shrink_b);
        let schmul = m2.shrink_maxc_mul.partial_cmp(&m1.shrink_maxc_mul);
        let schadd = m2.shrink_maxc_add.partial_cmp(&m1.shrink_maxc_add);
        let sclmul = m2.shrink_minc_mul.partial_cmp(&m1.shrink_minc_mul);
        let scladd = m2.shrink_minc_add.partial_cmp(&m1.shrink_minc_add);

        let s = m1.neg_delivered.partial_cmp(&m2.neg_delivered);
        let ld = m1.loss.partial_cmp(&m2.loss);
        let qdel = m1.qdel.partial_cmp(&m2.qdel);
        let ttsc = m1.time_to_shrink_c.partial_cmp(&m2.time_to_shrink_c);
        let ttscl = m1.time_to_shrink_c_l.partial_cmp(&m2.time_to_shrink_c_l);
        let lt = m2.loss_tol.partial_cmp(&m1.loss_tol);
        let ttc = m1.time_to_c.partial_cmp(&m2.time_to_c);
        let cb = m2.minc_minb_sum.partial_cmp(&m1.minc_minb_sum);
        let ttcb = m1.time_to_c_b.partial_cmp(&m2.time_to_c_b);
        let ttscbadd = m1.time_to_shrink_minc_minb_add.partial_cmp(&m2.time_to_shrink_minc_minb_add);
        let scb = m2.shrink_minc_minb.partial_cmp(&m1.shrink_minc_minb);

        let mut dict = HashMap::new();
        dict.insert("c", c);
        dict.insert("b", b);
        dict.insert("sc", sc);
        dict.insert("sb", sb);
        dict.insert("s", s);
        dict.insert("ld", ld);
        dict.insert("qdel", qdel);
        dict.insert("schmul", schmul);
        dict.insert("schadd", schadd);
        dict.insert("sclmul", sclmul);
        dict.insert("scladd", scladd);
        dict.insert("ttsc", ttsc);
        dict.insert("lt", lt);
        dict.insert("ttc", ttc);
        dict.insert("ttscl", ttscl);
        dict.insert("cb", cb);
        dict.insert("ttcb", ttcb);
        dict.insert("ttscbadd", ttscbadd);
        dict.insert("scb", scb);

        for p in OBJ_PERMUTATION.iter() {
            let r = dict[p.as_str()];
            if r.is_some() && r.unwrap() != Ordering::Equal {
                return r;
            }
        }
        None
    }
}

impl minimax::Value for CCValue {
    fn inf() -> Self {
        CCValue::Inf
    }

    fn neg_inf() -> Self {
        CCValue::NegInf
    }

    fn fully_known(&self) -> bool {
        false
    }
}

impl PartialOrd for CCValue {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        // smaller beliefs implies smaller value.
        // better metrics implies smaller value.
        match self {
            CCValue::Inf => match other {
                CCValue::Inf => Some(Ordering::Equal),
                _ => Some(Ordering::Greater),
            },
            CCValue::NegInf => match other {
                CCValue::NegInf => Some(Ordering::Equal),
                _ => Some(Ordering::Less),
            },
            CCValue::Value { .. } => match other {
                CCValue::Inf => Some(Ordering::Less),
                CCValue::NegInf => Some(Ordering::Greater),
                CCValue::Value { .. } => self.cmp_entry_point(other),
            },
        }
    }
}

// ------------------------------------------------------------------------------------------
// Minimax state
#[derive(Debug)]
struct CongCtrlState<NM: NetworkModel> {
    // TODO: Only compute something if strictly needed.
    // fill other values with None.
    network_model: NM, // NetworkModelType<'a>,

    // Simulation
    history: CircularBuffer<HISTORY_SIZE, NM::O>,
    belief_bounds: BeliefBounds, // at the end of ^^ history.

    // Speculation

    // The belief bounds don't take into account the move_cca variable. I.e.,
    // the bounds are always computed after the network's move and are used for
    // enumerating CCA's moves and defining objective function.

    // All the stacks are in lock step
    history_stack: Vec<NM::O>, // board state after network move
    belief_bounds_stack: Vec<BeliefBounds>, // beliefs at the end of the sequence of observations
    move_choices_cca_stack: Vec<Vec<CCMove<NM::NA>>>, // move choices at each step of the speculation for the CCA.
    move_choices_network_stack: Vec<Vec<CCMove<NM::NA>>>, // move choices at each step of the speculation for the network.

    // Joint
    move_cca: Option<CCAAction>, // board state after CCA move (as we lack a observation)

    // To understand decisions based on speculation.
    root: Option<Rc<Tree<TreeData<NM::O, NM::NA>>>>, // Only keeping root so that we don't drop the tree.
    current: Weak<Tree<TreeData<NM::O, NM::NA>>>,
    recording_tree: bool,

    disable_pre_enumeration: bool,

    // Config
    loss_tolerance_abs: RealNumRep,
    delay_tolerance_frac: RealNumRep,

    n_nodes_explored: u32,

    parallel_binary_search: bool,
}

impl<NM: NetworkModel> minimax::State for CongCtrlState<NM> {
    // Used for speculation into the future game states

    type M = CCMove<NM::NA>;
    type V = CCValue;
    type T = CCTTState<NM::O>;

    fn maximizer(&self) -> bool {
        // if CCA has moved then it is network's turn (i.e., maximizer)
        // CCA is minimizer
        self.move_cca.is_some()
    }

    fn game_over(&self) -> Option<Self::V> {
        None
    }

    fn best_move_guess(&mut self, _tt: &minimax::TranspositionTable<Self>) -> Option<Self::M> {
        if self.maximizer() {
            // network's turn
            self.move_choices_network_stack.last_mut().unwrap().pop()
        } else {
            self.move_choices_cca_stack.last_mut().unwrap().pop()
        }
    }

    fn best_move_sort(&mut self, tt: &minimax::TranspositionTable<Self>, tt_state: Self::T) {
        // do nothing
    }

    fn value(&self) -> Self::V {
        let latest = self.get_latest_belief_bounds();
        // let start = &self.belief_bounds;

        CCValue::Value {
            metrics: self.compute_metrics(),
            // self.belief_bounds_stack.last().unwrap().clone(),
            belief_bounds: *latest,
            // Deepen tree may query for a value after CCA move.
            // TODO: update it to only query on even moves.
            // Basically just explore even depths.
        }
    }

    fn make_move_depth(&mut self, m: &Self::M, depth: u16) {
        self.make_move(m);
    }

    fn make_move(&mut self, m: &Self::M) {
        self.n_nodes_explored += 1;
        debug!("Make move {:?}", m);
        match m {
            CCMove::CCA(a) => {
                self.move_cca = Some(*a);
                if self.disable_pre_enumeration {
                    self.move_choices_network_stack.push(Vec::new());
                } else {
                    self.move_choices_network_stack
                        .push(self.compute_feasible_network_moves());
                }
            }
            CCMove::Network(n) => {
                let last = self.get_last_history_item();
                let observation = self.network_model.compute_observation(last, n, &self.move_cca);

                self.move_cca = None;
                self.history_stack.push(observation);
                self.belief_bounds_stack.push(self.compute_belief_bounds());
                self.move_choices_cca_stack.push(self.compute_cca_moves());
            }
        }
        self.tree_make_move();
    }

    fn pop_move(&mut self) {
        if self.maximizer() {
            // network's turn now. Implies popping CCA's move.
            debug!("Pop move: {:?}", self.move_cca);
            self.move_cca = None;
            self.move_choices_network_stack.pop();
            // After a CCA's make_move, we compute next move choices for the
            // network, so we pop those.
        } else {
            let ret = self.history_stack.pop();
            let last_history_item = self.get_last_history_item();
            let rate = ret.as_ref().unwrap().get_a() - last_history_item.get_a();
            self.move_cca = Some(CCAAction { rate });
            debug!("Pop move: {:?}", ret);
            self.belief_bounds_stack.pop();
            self.move_choices_cca_stack.pop();
        }
        self.tree_pop_move();
    }

    fn reset_moves(&mut self) {
        // Only reset when all the speculative moves have been popped.
        // Assuming we never start speculation from the network's POV.
        assert!(self.history_stack.is_empty());
        assert!(self.belief_bounds_stack.is_empty());
        assert!(self.move_cca.is_none());
        assert!(self.move_choices_network_stack.is_empty());

        // Moves may have been dequeued from the choices. We need to reset this
        // operation. As the speculation is starting afresh.
        assert!(self.move_choices_cca_stack.len() == 1);
        self.move_choices_cca_stack.pop();
        self.move_choices_cca_stack.push(self.compute_cca_moves());
    }

    fn tt_state(&self) -> CCTTState<NM::O> {
        let mut history = Vec::new();
        for o in self.history.iter() {
            history.push(o.clone());
        }
        history.append(&mut self.history_stack.clone());
        CCTTState {
            history,
            move_cca: self.move_cca,
        }
    }

    fn chosen_move(&self, m: &Option<CCMove<NM::NA>>, v: &CCValue) {
        if self.recording_tree {
            let this = self.current.upgrade().unwrap();
            this.borrow_data_mut().chosen_move = m.clone();
            this.borrow_data_mut().chosen_value = Some(*v);
        }
    }
}

impl<NM: NetworkModel> CongCtrlState<NM> {
    fn init(&mut self) {
        for obs in self.network_model.get_initial_history() {
            self.history.push_back(obs);
        }
    }

    fn get_tree_data(&self) -> TreeData<NM::O, NM::NA> {
        TreeData {
            observation: self.get_last_history_item().clone(),
            cca_rate: if self.move_cca.is_none() {
                None
            } else {
                Some(self.move_cca.unwrap().rate)
            },
            history: self.get_relevant_history(Some(FEASIBLE_SIZE)),
            belief_bounds: *self.get_latest_belief_bounds(),
            metrics: self.compute_metrics(),
            chosen_move: None,
            chosen_value: None,
        }
    }

    fn start_recording_tree(&mut self) {
        self.recording_tree = true;
        self.root = Some(Rc::new(Tree::new(self.get_tree_data())));
        self.current = Rc::downgrade(self.root.as_ref().unwrap());
    }

    fn clear_tree(&mut self) {
        self.recording_tree = false;
        self.root = None;
        self.current = Weak::new();
    }

    fn tree_make_move(&mut self) {
        if self.recording_tree {
            let child = Rc::new(Tree::new(self.get_tree_data()));
            let w_child = Rc::downgrade(&child);
            Tree::add_child(&self.current, child);
            self.current = w_child;
        }
    }

    fn tree_pop_move(&mut self) {
        if self.recording_tree {
            let this = self.current.upgrade().unwrap();
            let parent = this.parent();
            self.current = parent;
        }
    }

    fn any_move_guess(&mut self) -> Option<CCMove<NM::NA>> {
        if self.maximizer() {
            // network's turn
            self.move_choices_network_stack.last_mut().unwrap().pop()
        } else {
            self.move_choices_cca_stack.last_mut().unwrap().pop()
        }
    }

    fn prepare_speculation(&mut self) {
        self.belief_bounds = self.compute_belief_bounds();
        self.move_choices_cca_stack.push(self.compute_cca_moves());
    }

    fn commit_and_prepare(&mut self) {
        self.commit_move();
        self.prepare_speculation();
    }

    fn commit_move(&mut self) {
        // info!("Committing moves");
        // Used for simulation
        assert!(!self.maximizer()); // CCA's turn
        assert!(self.history_stack.len() == 1);
        assert!(self.belief_bounds_stack.len() == 1);
        assert!(self.move_choices_network_stack.len() == 1);
        assert!(self.move_choices_cca_stack.len() == 2);

        self.history.push_back(self.history_stack.pop().unwrap());
        self.belief_bounds_stack.pop();
        self.move_choices_network_stack.pop();
        self.move_choices_cca_stack.pop();
        self.move_choices_cca_stack.pop();
    }

    fn compute_metrics(&self) -> Metrics {
        let last = self.get_last_history_item();
        let first = self.history.get(HISTORY_SIZE - 1).unwrap();

        let qmax1: usize = self.history.iter().map(|o| o.get_qdel()).max().unwrap();
        let qmax2: usize = self
            .history_stack
            .iter()
            .map(|o| o.get_qdel())
            .max()
            .unwrap_or(0);
        let qmax = std::cmp::max(qmax1, qmax2);

        let latest = self.get_latest_belief_bounds();
        let start = &self.belief_bounds;
        let one: RealNumRep = 1.into();

        let mut time_to_shrink_c = (HISTORY_SIZE + SPECULATION_SIZE + 1) as RealNumInt;
        for (idx, bb) in self.belief_bounds_stack.iter().enumerate() {
            if bb.min_c > start.min_c || bb.max_c < start.max_c {
                time_to_shrink_c = idx as RealNumInt;
                break;
            }
        }

        let mut time_to_shrink_c_l = (HISTORY_SIZE + SPECULATION_SIZE + 1) as RealNumInt;
        for (idx, bb) in self.belief_bounds_stack.iter().enumerate() {
            //if bb.c_add_gap() < start.c_add_gap() {
            // Need to check min_c is gradually increasing 
            if bb.min_c >= start.min_c + one * 2 {
            //if bb.min_c > start.min_c {
                time_to_shrink_c_l = idx as RealNumInt;
                break;
            }
        }

        let mut time_to_shrink_c_h = (HISTORY_SIZE + SPECULATION_SIZE + 1) as RealNumInt;
        for (idx, bb) in self.belief_bounds_stack.iter().enumerate() {
            //if bb.c_add_gap() < start.c_add_gap() {
            // Need to check min_c is gradually increasing 
            if bb.max_c < start.max_c {
            //if bb.min_c > start.min_c {
                time_to_shrink_c_h = idx as RealNumInt;
                break;
            }
        }

        let mut time_to_c = (HISTORY_SIZE + SPECULATION_SIZE + 1) as RealNumInt;
        for (idx, bb) in self.belief_bounds_stack.iter().enumerate() {
            if bb.min_c == latest.min_c && bb.max_c == latest.max_c {
                time_to_c = idx as RealNumInt;
                break;
            }
        }

        // This should be true when speculation size is of even size
        let minc_minb_sum = self.network_model.compute_min_c_b_sum(&self.get_relevant_history(Some(FEASIBLE_SIZE)), &None).unwrap();
        let mut time_to_c_b = (HISTORY_SIZE + SPECULATION_SIZE + 1) as RealNumInt;
        let relevant_history = &self.get_relevant_history(Some(FEASIBLE_SIZE + self.history_stack.len()));
        for ptr in 0..relevant_history.len() - FEASIBLE_SIZE + 1 {
            let rh = &relevant_history[ptr .. (ptr + FEASIBLE_SIZE)];
            if self.network_model.compute_min_c_b_sum(rh, &None).unwrap() >= minc_minb_sum {
                time_to_c_b = (ptr - 1) as RealNumInt;
                break;
            }
        }
        let start_minc_minb_sum = self.network_model.compute_min_c_b_sum(&relevant_history[0 .. FEASIBLE_SIZE], &None).unwrap();
        let mut time_to_shrink_minc_minb_add = (HISTORY_SIZE + SPECULATION_SIZE + 1) as RealNumInt;
        for ptr in 0..relevant_history.len() - FEASIBLE_SIZE + 1 {
            let rh = &relevant_history[ptr .. (ptr + FEASIBLE_SIZE)];
            // Account for unsoundness during QE 
            if self.network_model.compute_min_c_b_sum(rh, &None).unwrap() >= start_minc_minb_sum + self.loss_tolerance_abs * 2 - RealNumRep::new_raw(1, 1 << 4){
                time_to_shrink_minc_minb_add = (ptr - 1) as RealNumInt;
                break;
            }
        }

        let steps = self.history.len() as RealNumInt + self.history_stack.len() as RealNumInt - 1;
        
        //let steady_state = self.history.get(HISTORY_SIZE - 1).unwrap().get_ld() > 0.into();
        let steady_state = self.history.get(HISTORY_SIZE - 1).unwrap().get_lo().last().unwrap().0 >= 2;
        //let steady_state = self.belief_bounds.max_c < LARGEST_BW.into();
        let loss_tol = if steady_state { (last.get_ld() - first.get_ld()) <= self.loss_tolerance_abs * 2} 
            else { (last.get_ld() - first.get_ld()) <= self.loss_tolerance_abs};
            
        Metrics {
            neg_delivered: (first.get_s()) - (last.get_s()),
            qdel: std::cmp::max(0.into(), (qmax as i32 - 1).into()),
            loss: std::cmp::max(0.into(), last.get_ld() - first.get_ld() - self.loss_tolerance_abs),
            // Basically is latest smaller than start:
            //shrink_c: latest.c_add_gap() < start.c_add_gap(),
            shrink_c: latest.min_c > start.min_c || latest.max_c < start.max_c,
            shrink_b: latest.max_b < LARGEST_BW.into(),
            shrink_maxc_mul: latest.max_c <= start.max_c / 2,
            shrink_maxc_add: latest.max_c < LARGEST_BW.into(),
            shrink_minc_mul: latest.min_c >= start.min_c * 2,
            shrink_minc_add: latest.min_c >= start.min_c + one * 2,
            time_to_shrink_c,
            //loss_tol: last.get_ld() <= latest.min_c,
            //loss_tol,
            loss_tol: (last.get_ld() - first.get_ld()) <= self.loss_tolerance_abs * 2,
            time_to_shrink_c_l, 
            time_to_shrink_c_h,
            time_to_c,
            minc_minb_sum,
            time_to_c_b,
            time_to_shrink_minc_minb_add,
            shrink_minc_minb: minc_minb_sum >= start_minc_minb_sum,
        }
    }

    // fn get_feasible_moves(&self) -> Vec<CCMove> {
    //     if self.maximizer() {
    //         // network's turn
    //         return self.get_feasible_network_moves();
    //     } else {
    //         return self.get_cca_moves();
    //     }
    // }

    fn get_last_history_item(&self) -> &NM::O {
        if !self.history_stack.is_empty() {
            return self.history_stack.last().unwrap();
        } else {
            return self.history.back().unwrap();
        }
    }

    fn get_relevant_history(&self, size: Option<usize>) -> Vec<NM::O> {
        // We want to build vector with at most FEASIBLE_SIZE-1 observations
        // worth of history. "Minus 1" because that's what we will be binary
        // searching for. We also want as many elements as possible from the
        // history_stack. Basically we copy the last elements from
        // history_stack, if space is left we also copy from history.

        let mut ret: Vec<NM::O> = Vec::new();

        let total = size.unwrap_or(FEASIBLE_SIZE-1);
        let n_stack = self.history_stack.len();
        let n_committed = self.history.len();

        let mut copy = std::cmp::min(total as i64 - n_stack as i64, n_committed as i64);
        copy = std::cmp::max(copy, 0);
        let start = n_committed - copy as usize;
        for i in start..n_committed {
            ret.push(self.history.get(i).unwrap().clone());
        }

        let mut copy = std::cmp::min(n_stack, FEASIBLE_SIZE - 1);
        copy = std::cmp::max(copy, 0);
        let start = n_stack - copy;
        // ret.extend(self.history_stack[start..].iter().copied());
        ret.extend(self.history_stack[start..].to_vec().clone());
        ret
    }

    fn compute_feasible_network_moves(&self) -> Vec<CCMove<NM::NA>> {
        assert!(self.maximizer()); // only call when its network's turn.
        // let ret = self
        //     .network_model
        //     .compute_feasible_network_moves(&self.get_relevant_history(None), &self.move_cca);

        // Sending full history to be able to compute belief paths, the compute
        // feasible moves then pops the oldest observation.
        let ret = self
            .network_model
            //.compute_feasible_network_moves(&self.get_relevant_history(Some(FEASIBLE_SIZE + self.history_stack.len())), &self.move_cca);
            .compute_feasible_network_moves(&self.get_relevant_history(Some(FEASIBLE_SIZE + self.history_stack.len())), &self.move_cca);
        //ret.into_iter().map(CCMove::Network).unique().collect()
        ret.into_iter().map(CCMove::Network).collect()
    }

    fn compute_cca_moves(&self) -> Vec<CCMove<NM::NA>> {
        assert!(!self.maximizer()); // only call when its CCA's turn.
        let start = std::time::Instant::now();
        let belief_bounds = self.get_latest_belief_bounds();

        let rh = self.get_relevant_history(Some(FEASIBLE_SIZE));
        let mc = self.move_cca;

        let max_allowed_rate = self.network_model.compute_max_allowed_rate(
            &rh,
            &mc,
            0.into(),
            self.delay_tolerance_frac,
            1,
        );
        // debug!("Got max_allowed_rate: {:?}", max_allowed_rate);

        // let max_allowed_rate2 = self.network_model.compute_max_allowed_rate(
        //     &rh,
        //     &mc,
        //     self.loss_tolerance_abs,
        //     self.delay_tolerance_frac,
        //     2,
        // );
        let min_c = belief_bounds.min_c;
        let max_q = belief_bounds.max_q;
        let ret: Vec<CCMove<NM::NA>> = [
            max_allowed_rate.unwrap(),
            std::cmp::max(0.into(), min_c - max_q),
            max_allowed_rate.unwrap() + self.loss_tolerance_abs, 
            // max_allowed_rate2.unwrap(),
            // std::cmp::max(min_c - RealNumRep::from(ALPHA), ALPHA.into()),
            //min_c,
            //min_c * 2,
            //min_c + ALPHA,
            //belief_bounds.max_c,
            // min_c / 2,
        ]
        .iter()
        .filter(|x| **x >= 0.into())
        .map(|r| CCMove::CCA(CCAAction { rate: *r }))
        .collect();
        let ret = ret.into_iter().unique().collect();
        // https://stackoverflow.com/questions/47636618/vecdedup-does-not-work-how-do-i-deduplicate-a-vector-of-strings
        debug!("CCA choices:\n{:?}\n in {:.2?} time.", ret, start.elapsed());
        ret
    }

    fn compute_belief_bounds(&self) -> BeliefBounds {
        self.network_model
            .compute_belief_bounds(&self.get_relevant_history(Some(FEASIBLE_SIZE)), &self.move_cca)
    }

    fn get_network_move_sim(&self, args: &Args) -> Option<CCMove<NM::NA>> {
        self.network_model
            .get_network_move_sim(&self.get_relevant_history(None), &self.move_cca, args.sim_ideal)
            .map(CCMove::Network)
    }

    fn get_latest_belief_bounds(&self) -> &BeliefBounds {
        if let Some(ret) = self.belief_bounds_stack.last() {
            ret
        } else {
            &self.belief_bounds
        }
    }

    pub fn new(network_model: NM) -> CongCtrlState<NM> {
        let history = CircularBuffer::new();
        let belief_bounds = BeliefBounds::default();
        let move_cca = None;
        let history_stack = Vec::new();
        let belief_bounds_stack = Vec::new();
        let move_choices_cca_stack = Vec::new();
        let move_choices_network_stack = Vec::new();
        CongCtrlState {
            network_model,
            history,
            belief_bounds,
            move_cca,
            history_stack,
            belief_bounds_stack,
            move_choices_cca_stack,
            move_choices_network_stack,
            root: None,
            current: Weak::new(),
            recording_tree: false,
            disable_pre_enumeration: false,
            loss_tolerance_abs: (2 * ALPHA).into(),
            delay_tolerance_frac: 3.into(),
            n_nodes_explored: 0,
            parallel_binary_search: false,
            // pool: rayon::ThreadPoolBuilder::new()
            //     .num_threads(N_THREADS)
            //     .build()
            //     .unwrap(),
        }
    }
}

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Args {
    // https://docs.rs/clap/latest/clap/_derive/_cookbook/typed_derive/index.html
    #[arg(short, long)]
    csv: bool,

    #[arg(long, default_value_t=true)]
    sim: bool,
    #[arg(long, default_value_t=20.into())]
    sim_c: RealNumRep,
    #[arg(long, default_value_t=10.into())]
    sim_b: RealNumRep,
    #[arg(long)]
    sim_ideal: bool,

    #[arg(long)]
    tree: bool,

    #[arg(long, num_args=0..)]
    obj_perm: Vec<String>,

    #[arg(short, long)]
    out: Option<String>,

    #[arg(long)]
    sim_max_rate: bool,
    #[arg(long, default_value_t = 1)]
    probe_duration: u32,
    #[arg(long, default_value_t=(2 * ALPHA).into())]
    loss_tolerance_abs: RealNumRep,
    #[arg(long, default_value_t=3.into())]
    delay_tolerance_frac: RealNumRep,

    #[arg(long)]
    parallel: bool,
}

fn get_sim_tag(args: &Args) -> String {
    let mut ret = String::new();
    ret.push_str("net");
    if args.sim {
        if args.sim_ideal {
            ret.push_str("_ideal");
        } else {
            ret.push_str("_cbrd");
        }
        ret.push_str(&format!("_c{}_b{}", args.sim_c, args.sim_b));
    }
    ret
}

fn get_obj_tag() -> String {
    let mut ret = String::new();
    ret.push_str("obj");
    for obj in OBJ_PERMUTATION.iter() {
        ret.push_str(&format!("_{}", obj));
    }
    ret
}

struct SimStrategy<'a> {
    sim_state: u32,
    args: &'a Args,
    loss_fraction: RealNumRep,
}

impl SimStrategy<'_> {
    fn new(args: &Args) -> SimStrategy {
        SimStrategy {
            sim_state: 1,
            args,
            loss_fraction: 1.into(),
        }
    }

    fn get_rate<NM: NetworkModel>(&mut self, ccs: &CongCtrlState<NM>) -> Option<CCMove<NM::NA>> {
        let bb = ccs.get_latest_belief_bounds();
        let history = ccs.get_relevant_history(Some(FEASIBLE_SIZE));
        let move_cca = ccs.move_cca;
        let n = history.len();

        if n >= 2 && history[n - 1].get_ld() > history[n - 2].get_ld() {
            self.loss_fraction = self.loss_fraction / 2;
        }

        if bb.max_q <= 1.into() {
            self.sim_state = self.args.probe_duration;
        }

        if self.sim_state == 0 {
            Some(CCMove::CCA(CCAAction {
                rate: std::cmp::max(bb.min_c - bb.max_q, 0.into()),
            }))
        } else {
        //unimplemented!("Need to re-implement max allowed rate computation");
            let this_loss_abs = self.args.loss_tolerance_abs;
            //std::cmp::max(self.args.loss_tolerance_abs, bb.min_c * self.loss_fraction);
            let ret = ccs.network_model.compute_max_allowed_rate(
                &history,
                &move_cca,
                0.into(),
                self.args.delay_tolerance_frac,
                self.sim_state,
            );
            if self.sim_state == self.args.probe_duration {
                self.sim_state -= 1;
                ret.map(|x| CCMove::CCA(CCAAction { rate: x + this_loss_abs}))
            } else {
                self.sim_state -= 1;
                ret.map(|x| CCMove::CCA(CCAAction { rate: x }))
            }
        }
    }
    
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    env_logger::Builder::from_env(Env::default().default_filter_or("cc=info")).init();
    // env_logger::Builder::from_env(Env::default().default_filter_or("cc=info,network_model_nc=info")).init();

    let args = Args::parse();
    info!("Using {:?}", args);

    let sim_tag = get_sim_tag(&args);
    let obj_tag = get_obj_tag();
    info!("obj_tag: {}", obj_tag);
    info!("sim_tag: {}", sim_tag);

    let exp_dir = if args.out.is_some() {
        let dir = Path::new(args.out.as_ref().unwrap()).join(obj_tag);
        std::fs::create_dir_all(&dir)?;
        Some(dir)
    } else {
        None
    };
    let tree_dir = if exp_dir.is_some() {
        let dir = exp_dir.as_ref().unwrap().join(format!("tree_{}", sim_tag));
        if args.tree {
            std::fs::create_dir_all(&dir)?;
        }
        Some(dir)
    } else {
        None
    };

    let mut some_wtr = None;
    if args.csv {
        let csv_path = exp_dir.as_ref().unwrap().join(format!("{}.csv", sim_tag));
        let mut wtr = csv::Writer::from_path(csv_path).unwrap();
        wtr.write_record([
            "time", "r", "a", "ld", "s", "qdel", "min_c", "max_c", "min_b", "max_b", "min_q",
            "max_q", "min_if", "max_if",
        ])?;
        some_wtr = Some(wtr);
    }

    // let ctx = z3::Context::new(&z3::Config::new());
    // let mut network_model = NetworkModelZ3::new(&ctx, args.parallel);

    let mut network_model = NetworkModelNC::new();

    network_model.init();
    let mut ccs = CongCtrlState::new(network_model);
    ccs.init();
    ccs.prepare_speculation();
    let mut search: minimax::Search<CongCtrlState<NetworkModelNC>> = minimax::Search::new();
    // cong_ctrl_state.best_move_guess(tt);
    ccs.loss_tolerance_abs = args.loss_tolerance_abs;
    ccs.delay_tolerance_frac = args.delay_tolerance_frac;
    ccs.parallel_binary_search = args.parallel;

    if args.sim {
        ccs.network_model
            .setup_network_move_sim(args.sim_ideal, args.sim_c, args.sim_b);
    }

    let mut sim_strategy = None;
    if args.sim_max_rate {
        ccs.disable_pre_enumeration = true;
        sim_strategy = Some(SimStrategy::new(&args));
    }

    let tsteps = 150;
    for t in 0..tsteps {
        let start = std::time::Instant::now();
        if args.tree {
            ccs.start_recording_tree();
        }

        let best_cc_move = if args.sim_max_rate {
            sim_strategy.as_mut().unwrap().get_rate(&ccs)
        } else {
            let (ret, _, _) = search.best_move(&mut ccs, Some(SPECULATION_SIZE as u16), None);
            ret
        };

        if args.tree {
            let mut file =
                File::create(tree_dir.as_ref().unwrap().join(format!("{t}.json"))).unwrap();
            serde_json::to_writer(&mut file, &ccs.root).unwrap();
            ccs.clear_tree();
        }
        // info!(
        //     "Got best move: {:} in {:.2?} time.",
        //     best_cc_move.unwrap(),
        //     start.elapsed()
        // );
        // ccs.reset_moves();
        ccs.make_move(best_cc_move.as_ref().unwrap());
        let network_move = if args.sim {
            ccs.get_network_move_sim(&args)
        } else {
            ccs.any_move_guess()
        };
        ccs.make_move(network_move.as_ref().unwrap());
        ccs.commit_and_prepare();
        let bb = ccs.belief_bounds;
        let last_obs = ccs.history.back().unwrap();
        info!(
            "Step {} ({:.2?}): {}. {}. {}. nodes={}.",
            t,
            start.elapsed(),
            best_cc_move.as_ref().unwrap(),
            last_obs,
            bb,
            ccs.n_nodes_explored + 1, // +1 as we only count make_move calls which does not include the root node.
        );
        ccs.n_nodes_explored = 0;

        if some_wtr.is_some() {
            let wtr = some_wtr.as_mut().unwrap();
            let rate = match best_cc_move.as_ref().unwrap() {
                CCMove::CCA(a) => a.rate.to_f64().unwrap(),
                _ => panic!("Expecting CCA move"),
            };
            wtr.write_record(&[
                format!("{:.2?}", start.elapsed()),
                format!("{:.2}", rate),
                format!("{:.2}", last_obs.a.to_f64().unwrap()),
                format!("{:.2}", last_obs.get_ld().to_f64().unwrap()),
                format!("{:.2}", last_obs.s.to_f64().unwrap()),
                format!("{}", last_obs.get_qdel()),
                format!("{:.2}", bb.min_c.to_f64().unwrap()),
                format!("{:.2}", bb.max_c.to_f64().unwrap()),
                format!("{:.2}", bb.min_b.to_f64().unwrap()),
                format!("{:.2}", bb.max_b.to_f64().unwrap()),
                format!("{:.2}", bb.min_q.to_f64().unwrap()),
                format!("{:.2}", bb.max_q.to_f64().unwrap()),
                format!("{:.2}", bb.min_if.to_f64().unwrap()),
                format!("{:.2}", bb.max_if.to_f64().unwrap()),
            ])?;
            wtr.flush()?;
        }
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    // TODO: add assertions at the end of tests so that we can use as automated
    // tests instead of manually verifying outputs.

    use network_model_z3::ObservationZ3;

    use super::*;

    macro_rules! setup_test {
        ($ccs:ident) => {
            let ctx = z3::Context::new(&z3::Config::new());
            let mut network_model = NetworkModelZ3::new(&ctx, false);
            network_model.init();
            let mut $ccs = CongCtrlState::new(network_model);
            // https://stackoverflow.com/questions/38779591/macro-that-declare-variables-in-rust
        };
    }

    fn add_dummy_history(ccs: &mut CongCtrlState<NetworkModelZ3>) {
        for t in 0..5 {
            ccs.history.push_back(ObservationZ3 {
                a: ((t + 1) * 10).into(),
                s: (t * 10).into(),
                ld: 0.into(),
                qdel: 1.into(),
            });
        }
    }

    #[test]
    fn test_get_belief_bounds() {
        env_logger::Builder::from_env(Env::default().default_filter_or("cc=trace")).init();

        setup_test!(ccs);
        add_dummy_history(&mut ccs);
        println!("{:?}", ccs.compute_belief_bounds());
    }

    #[test]
    fn test_compute_feasible_network_moves() {
        env_logger::Builder::from_env(Env::default().default_filter_or("cc=trace")).init();

        setup_test!(ccs);
        add_dummy_history(&mut ccs);
        ccs.move_cca = Some(CCAAction { rate: 10.into() });
        let start = std::time::Instant::now();
        println!(
            "Returned: \n{:?}\nin {:.2?} time",
            ccs.compute_feasible_network_moves(),
            start.elapsed()
        );
    }

    #[test]
    fn test_get_cca_moves() {
        env_logger::Builder::from_env(Env::default().default_filter_or("cc=trace")).init();

        setup_test!(ccs);
        add_dummy_history(&mut ccs);
        let start = std::time::Instant::now();
        ccs.prepare_speculation();
        println!(
            "Returned: \n{:?}\nin {:?} time",
            ccs.move_choices_cca_stack.last().unwrap(),
            start.elapsed()
        );
    }

    #[test]
    fn test_bookkeeping() {
        env_logger::Builder::from_env(Env::default().default_filter_or("cc=trace")).init();

        setup_test!(ccs);
        ccs.init();
        ccs.prepare_speculation();
        let cca_move1 = ccs.any_move_guess();
        ccs.make_move(cca_move1.as_ref().unwrap());

        ccs.pop_move();
        let cca_move2 = ccs.any_move_guess();
        assert_ne!(cca_move1, cca_move2);
        ccs.make_move(cca_move2.as_ref().unwrap());

        let net_move1 = ccs.any_move_guess();
        let net_move2 = ccs.any_move_guess();
        ccs.make_move(net_move1.as_ref().unwrap());
        assert_ne!(net_move1, net_move2);

        ccs.commit_and_prepare();
        assert_eq!(ccs.history.len(), 2);
    }

    #[test]
    fn test_ordering() {
        env_logger::Builder::from_env(Env::default().default_filter_or("cc=trace")).init();

        let m1 = Metrics {
            loss: 0.into(),
            qdel: 0.into(),
            neg_delivered: 0.into(),
            shrink_c: true,
            shrink_b: true,
            shrink_maxc_mul: true,
            shrink_maxc_add: true,
            shrink_minc_add: true,
            shrink_minc_mul: true,
            time_to_shrink_c: 0,
        };
        let mut m2 = m1;
        println!("{:?}", m1.partial_cmp(&m2));

        let b1 = BeliefBounds::default();
        let b2 = b1;

        let v1 = CCValue::Value {
            metrics: m1,
            belief_bounds: b1,
        };
        m2.neg_delivered = (-1).into();
        let v2 = CCValue::Value {
            metrics: m2,
            belief_bounds: b2,
        };
        println!("{:?}", v1.partial_cmp(&v2));
    }
}

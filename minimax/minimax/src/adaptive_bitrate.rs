use circular_buffer::CircularBuffer;
use clap::Parser;
use env_logger::Env;
use itertools::Itertools;
use log::{debug, info};
use num_traits::ToPrimitive;
use serde::de::IntoDeserializer;
use serde::Serialize;
use std::cmp::Ordering;
use std::collections::btree_map::Range;
use std::collections::{HashMap, HashSet};
use std::fmt::{Display, Formatter};
use std::fs::File;
use std::path::Path;
use std::rc::{Rc, Weak};
use std::vec;
use lazy_static::lazy_static;

use cc_common::*;
use abr_common::*;
use minimax::State;
// use network_model_z3::NetworkModelZ3;
use network_model_nc::NetworkModelNC;
use ds::tree::Tree;
use ds::*;

// ------------------------------------------------------------------------------------------
// Minimax move
#[derive(Clone, PartialEq, Debug, Eq, Hash, Serialize)]
#[allow(clippy::upper_case_acronyms)]
pub enum ABRMove<NA: NetworkAction> {
    ABR(ABRAction),
    Network(EncoderAction, NA),
}

impl<NA: NetworkAction> Display for ABRMove<NA> {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match self {
            ABRMove::ABR(a) => write!(f, "[rate={:.2}, nf = {:?}, fs = {:?}, fib = {:?}]", 
            a.cca_action.rate.to_f64().unwrap(), a.new_frames_encoding, a.frames_sent, a.frames_in_backlog, ),  
            ABRMove::Network(_, n) => write!(f, "{}", n),
        }
    }
}

impl<NA: NetworkAction> minimax::Move for ABRMove<NA> {}

/* 
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
*/

// ------------------------------------------------------------------------------------------
// Minimax transposition table state, and search tree
#[derive(Clone, Debug, Eq, PartialEq, Hash)]
struct CCTTState<O: Observation> {
    history: Vec<ObservationABR<O>>,
    move_cca: Option<ABRAction>,
}

impl<O: Observation> minimax::TTState for CCTTState<O> {}

#[derive(Debug, Serialize)]
struct TreeData<O: Observation, NA: NetworkAction> {
    observation: ObservationABR<O>,
    //#[serde(with = "serde_optional_real")]
    abr_action: Option<ABRAction>,
    history: Vec<ObservationABR<O>>,
    belief_bounds: BeliefBounds,
    metrics: abr_common::Metrics,
    chosen_move: Option<ABRMove<NA>>,
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
        metrics: abr_common::Metrics,
    },
}

// const DEFAULT_PERMUTATION: &[&str] = &[
//     "c", "b", "ld", "s", "qdel", "sc", "sb", "sclmul", "scladd", "schmul", "schadd", "ttsc",
// ];
const DEFAULT_PERMUTATION: &[&str] = &[
    //"ttsc", "ld", "sw", 
    //"lt", "schadd", "ttscbadd", "scb", "la", "f", "q",
    //"schadd", "scladd", "ttsc", "la", "f", "q", "c"
    "la", "f", "schadd", "scladd", "ttsc", "q", "c"
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
        let (b1, a1) = match self {
            CCValue::Value {
                belief_bounds,
                metrics,
            } => (belief_bounds, metrics),
            _ => panic!("Should not be here"),
        };
        let (b2, a2) = match other {
            CCValue::Value {
                belief_bounds,
                metrics,
            } => (belief_bounds, metrics),
            _ => panic!("Should not be here"),
        };

        let c = Self::cmp_c_beliefs(b1, b2);
        let b = Self::cmp_b_beliefs(b1, b2);

        let m1 = a1.cca_metrics;
        let m2 = a2.cca_metrics;
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
        let lt = m2.loss_tol.partial_cmp(&m1.loss_tol);
        let ttc = m1.time_to_c.partial_cmp(&m2.time_to_c);
        let cb = m2.minc_minb_sum.partial_cmp(&m1.minc_minb_sum);
        let ttcb = m1.time_to_c_b.partial_cmp(&m2.time_to_c_b);
        let ttscbadd = m1.time_to_shrink_minc_minb_add.partial_cmp(&m2.time_to_shrink_minc_minb_add);
        let scb = m2.shrink_minc_minb.partial_cmp(&m1.shrink_minc_minb);
        // abr metric
        let la = a2.latency.partial_cmp(&a1.latency);
        let f = a2.received_frames.partial_cmp(&a1.received_frames);
        let q = a2.qualities.partial_cmp(&a1.qualities);
        let bl = a1.backlog.partial_cmp(&a2.backlog);

        let ttscl = m1.time_to_shrink_c_l.partial_cmp(&m2.time_to_shrink_c_l);
        let ttsch = m1.time_to_shrink_c_h.partial_cmp(&m2.time_to_shrink_c_h);

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
        // abr metric
        dict.insert("la", la);
        dict.insert("f", f);
        dict.insert("q", q);
        dict.insert("bl", bl);


        for p in OBJ_PERMUTATION.iter() {
            let r = dict[p.as_str()];
            if r.is_some() && r.unwrap() != Ordering::Equal {
                return r;
            }
        }
        Some(Ordering::Equal)
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

/* 
#[derive(Debug)]
struct AdaptiveBitrateState<NM: NetworkModel> {
    cc_state: CongCtrlState<NM>,
}

impl<NM: NetworkModel> AdaptiveBitrateState<NM> {
    pub fn new(network_model: NM) -> AdaptiveBitrateState<NM> {
        AdaptiveBitrateState {
          cc_state: CongCtrlState::new(network_model)
        }
    }
}
    */
// ------------------------------------------------------------------------------------------
// Minimax state
#[derive(Debug)]
struct AdaptiveBitrateState<NM: NetworkModel> {
    // TODO: Only compute something if strictly needed.
    // fill other values with None.
    network_model: NM, // NetworkModelType<'a>,

    // Simulation
    history: CircularBuffer<HISTORY_SIZE, ObservationABR<NM::O>>,
    belief_bounds: BeliefBounds, // at the end of ^^ history.

    // Speculation

    // The belief bounds don't take into account the move_cca variable. I.e.,
    // the bounds are always computed after the network's move and are used for
    // enumerating CCA's moves and defining objective function.

    // All the stacks are in lock step
    history_stack: Vec<ObservationABR<NM::O>>, // board state after network move
    belief_bounds_stack: Vec<BeliefBounds>, // beliefs at the end of the sequence of observations
    move_choices_abr_stack: Vec<Vec<ABRMove<NM::NA>>>, // move choices at each step of the speculation for the CCA.
    move_choices_network_stack: Vec<Vec<ABRMove<NM::NA>>>, // move choices at each step of the speculation for the network.

    // Joint
    move_abr: Option<ABRAction>, // board state after CCA move (as we lack a observation)

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

impl<NM: NetworkModel> minimax::State for AdaptiveBitrateState<NM> {
    // Used for speculation into the future game states

    type M = ABRMove<NM::NA>;
    type V = CCValue;
    type T = CCTTState<NM::O>;

    fn maximizer(&self) -> bool {
        // if CCA has moved then it is network's turn (i.e., maximizer)
        // CCA is minimizer
        self.move_abr.is_some()
    }

    fn game_over(&self) -> Option<Self::V> {
        None
    }

    fn best_move_guess(&mut self, _tt: &minimax::TranspositionTable<Self>) -> Option<Self::M> {
        if self.maximizer() {
            // network's turn
            self.move_choices_network_stack.last_mut().unwrap().pop()
        } else {
            self.move_choices_abr_stack.last_mut().unwrap().pop()
        }
    }

    // Abr moves sorting metric: 
    // 1) new_frame + frame_sending_behavior + cca_rate
    // 2) frame_sending_behavior + cca_rate
    // 3) cca_rate
    // Network sorint metric: 
    // 1) encoding_result + cca_s_l
    // 2) cca_s_l
    fn best_move_sort(&mut self, tt: &minimax::TranspositionTable<Self>, tt_state: Self::T) {
        if let Some((m, v, d)) = tt.get(&tt_state) {
            if self.maximizer() {
                if let Some(ABRMove::Network(best_enc, best_na,)) = m.clone() { 
                    let net_moves = self.move_choices_network_stack.pop().unwrap();
                    let mut first_choice = vec![];
                    let mut second_choice = vec![];
                    let mut left = vec![];
                    for net_move in net_moves.clone() {
                        if let ABRMove::Network(enc, na,) = net_move.clone() { 
                            if best_na == na {
                                if best_enc.new_frames_encoded == enc.new_frames_encoded {
                                    first_choice.push(net_move);
                                } else {
                                    second_choice.push(net_move);
                                }
                            } else {
                                left.push(net_move);
                            }
                        } else {
                            assert!(false);
                        }
                    }
                    assert!(first_choice.len() == 1);
                    let mut sorted = vec![];
                    sorted.append(&mut left);
                    sorted.append(&mut second_choice);
                    sorted.append(&mut first_choice);
                    assert!(sorted.len() == net_moves.len());
                    self.move_choices_network_stack.push(sorted);
                } else {
                    //assert!(*d == 0);
                }
            } else {
                if let Some(ABRMove::ABR(best)) = m.clone() {
                    let abr_moves = self.move_choices_abr_stack.pop().unwrap();
                    let mut first_choice = vec![];
                    let mut second_choice = vec![];
                    let mut third_choice = vec![];
                    let mut left = vec![];
                    for abr_move in abr_moves.clone() {
                        if let ABRMove::ABR(a) = abr_move.clone() {
                            if best.cca_action == a.cca_action {
                                if best.frames_sent == a.frames_sent && best.frames_in_backlog == a.frames_in_backlog {
                                    if best.new_frames_encoding == a.new_frames_encoding {
                                        first_choice.push(abr_move);
                                    } else {
                                        second_choice.push(abr_move);
                                    }
                                } else {
                                    third_choice.push(abr_move);
                                }
                            } else {
                                left.push(abr_move);
                            }
                        } else {
                            assert!(false);
                        }
                    }
                    let mut sorted = vec![];                
                    if first_choice.len() != 1 {
                        print!("{:?}\n", best);
                        print!("{:?}\n", first_choice);
                        print!("{:?}\n", second_choice);
                        print!("{:?}\n", third_choice);
                        print!("{:?}\n", left);
                    } 
                    assert!(first_choice.len() == 1);
                    sorted.append(&mut left);
                    sorted.append(&mut third_choice);
                    sorted.append(&mut second_choice);
                    sorted.append(&mut first_choice);
                    assert!(sorted.len() == abr_moves.len());
                    self.move_choices_abr_stack.push(sorted);
                } else {
                    //assert!(*d == 0);
                }
            }
        }
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
        let mut new_encode = false;
        if depth >= (SPECULATION_SIZE - 2) as u16 {
            new_encode = true;
        } 
        // TODO: cca can be 0 after a certain depth
        self.n_nodes_explored += 1;
        debug!("Make move {:?}", m);
        match m {
            ABRMove::ABR(a) => {
                self.move_abr = Some(a.clone());
                if self.disable_pre_enumeration {
                    self.move_choices_network_stack.push(Vec::new());
                } else {
                    // TODO: Add network reaction for encoding here
                    self.move_choices_network_stack
                        .push(self.compute_feasible_network_moves());
                }
            }
            ABRMove::Network(ea, n) => {
                let last = self.get_last_history_item();
                let observation = self.network_model.compute_observation(&last.cca_observation, n, &self.abr_move_to_cca_move());
                self.history_stack.push(
                    ObservationABR::lift(&self.get_relevant_history(None),observation, self.move_abr.clone().unwrap(), 
                        ea.clone(), self.get_latest_belief_bounds().clone())
                );
                self.move_abr = None;
                self.belief_bounds_stack.push(self.compute_belief_bounds());
                self.move_choices_abr_stack.push(self.compute_abr_moves_depth(new_encode));
            }
        }
        self.tree_make_move();
    }


    fn make_move(&mut self, m: &Self::M) {
        self.n_nodes_explored += 1;
        debug!("Make move {:?}", m);
        match m {
            ABRMove::ABR(a) => {
                self.move_abr = Some(a.clone());
                if self.disable_pre_enumeration {
                    self.move_choices_network_stack.push(Vec::new());
                } else {
                    // TODO: Add network reaction for encoding here
                    self.move_choices_network_stack
                        .push(self.compute_feasible_network_moves());
                }
            }
            ABRMove::Network(ea, n) => {
                let last = self.get_last_history_item();
                let observation = self.network_model.compute_observation(&last.cca_observation, n, &self.abr_move_to_cca_move());
                self.history_stack.push(
                    ObservationABR::lift(&self.get_relevant_history(None),observation, self.move_abr.clone().unwrap(), 
                        ea.clone(), self.get_latest_belief_bounds().clone())
                );
                self.move_abr = None;
                self.belief_bounds_stack.push(self.compute_belief_bounds());
                self.move_choices_abr_stack.push(self.compute_abr_moves());
            }
        }
        self.tree_make_move();
    }

    fn pop_move(&mut self) {
        if self.maximizer() {
            // network's turn now. Implies popping CCA's move.
            debug!("Pop move: {:?}", self.move_abr);
            self.move_abr = None;
            self.move_choices_network_stack.pop();
            // After a CCA's make_move, we compute next move choices for the
            // network, so we pop those.
        } else {
            let ret = self.history_stack.pop();
            let last_history_item = self.get_last_history_item();
            let rate = ret.as_ref().unwrap().get_a() - last_history_item.get_a();
            // TODO: Retrieve the bit rate
            self.move_abr = Some(ABRAction{cca_action: CCAAction { rate }, 
                new_frames_encoding: ret.as_ref().unwrap().new_frames_encoding.clone(),
                frames_sent: ret.as_ref().unwrap().frames_sent.clone(), 
                frames_in_backlog: ret.as_ref().unwrap().frames_in_backlog.clone()});
            debug!("Pop move: {:?}", ret);
            self.belief_bounds_stack.pop();
            self.move_choices_abr_stack.pop();
        }
        self.tree_pop_move();
    }

    fn reset_moves(&mut self) {
        // Only reset when all the speculative moves have been popped.
        // Assuming we never start speculation from the network's POV.
        assert!(self.history_stack.is_empty());
        assert!(self.belief_bounds_stack.is_empty());
        assert!(self.move_abr.is_none());
        assert!(self.move_choices_network_stack.is_empty());

        // Moves may have been dequeued from the choices. We need to reset this
        // operation. As the speculation is starting afresh.
        assert!(self.move_choices_abr_stack.len() == 1);
        self.move_choices_abr_stack.pop();
        self.move_choices_abr_stack.push(self.compute_abr_moves());
    }

    fn tt_state(&self) -> CCTTState<NM::O> {
        let mut history = Vec::new();
        for o in self.history.iter() {
            history.push(o.clone());
        }
        history.append(&mut self.history_stack.clone());
        CCTTState {
            history,
            move_cca: self.move_abr.clone(),
        }
    }

    fn chosen_move(&self, m: &Option<ABRMove<NM::NA>>, v: &CCValue) {
        if self.recording_tree {
            let this = self.current.upgrade().unwrap();
            this.borrow_data_mut().chosen_move = m.clone();
            this.borrow_data_mut().chosen_value = Some(*v);
        }
    }
}

impl<NM: NetworkModel> AdaptiveBitrateState<NM> {
    fn init(&mut self) {
        for obs in self.network_model.get_initial_history() {
            self.history.push_back(ObservationABR::new(obs));
        }
        // Initially, we push one encoded frame 
        self.history.get_mut(FEASIBLE_SIZE - 3).unwrap().new_frames_encoding.push(Frame { index: 0, message_length: 5.into(), ago: 1.into() });
        self.history.get_mut(FEASIBLE_SIZE - 3).unwrap().frames_encoded.push(Frame { index: 0, message_length: 5.into(), ago: 0.into() });
        self.history.get_mut(FEASIBLE_SIZE - 3).unwrap().new_frames_encoded.push(Frame { index: 0, message_length: 5.into(), ago: 1.into() });

        self.history.get_mut(FEASIBLE_SIZE - 2).unwrap().new_frames_encoding.push(Frame { index: 1, message_length: 5.into(), ago: 1.into() });
        self.history.get_mut(FEASIBLE_SIZE - 2).unwrap().frames_encoded.push(Frame { index: 0, message_length: 5.into(), ago: 0.into() });
        self.history.get_mut(FEASIBLE_SIZE - 2).unwrap().frames_encoded.push(Frame { index: 1, message_length: 3.into(), ago: 0.into() });
        self.history.get_mut(FEASIBLE_SIZE - 2).unwrap().new_frames_encoded.push(Frame { index: 1, message_length: 3.into(), ago: 1.into() });

        self.history.get_mut(FEASIBLE_SIZE - 1).unwrap().new_frames_encoding.push(Frame { index: 2, message_length: 5.into(), ago: 1.into() });
        self.history.get_mut(FEASIBLE_SIZE - 1).unwrap().frames_encoded.push(Frame { index: 0, message_length: 5.into(), ago: 0.into() });
        self.history.get_mut(FEASIBLE_SIZE - 1).unwrap().frames_encoded.push(Frame { index: 1, message_length: 3.into(), ago: 0.into() });
        self.history.get_mut(FEASIBLE_SIZE - 1).unwrap().frames_encoded.push(Frame { index: 2, message_length: 3.into(), ago: 0.into() });
        self.history.get_mut(FEASIBLE_SIZE - 1).unwrap().new_frames_encoded.push(Frame { index: 2, message_length: 3.into(), ago: 1.into() });
    }

    fn get_tree_data(&self) -> TreeData<NM::O, NM::NA> {
        TreeData {
            observation: self.get_last_history_item().clone(),
            abr_action: if self.move_abr.is_none() {
                None
            } else {
                // Should be 
                self.move_abr.clone()
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

    fn any_move_guess(&mut self) -> Option<ABRMove<NM::NA>> {
        if self.maximizer() {
            // network's turn
            self.move_choices_network_stack.last_mut().unwrap().pop()
        } else {
            self.move_choices_abr_stack.last_mut().unwrap().pop()
        }
    }

    fn prepare_speculation(&mut self) {
        self.belief_bounds = self.compute_belief_bounds();
        self.move_choices_abr_stack.push(self.compute_abr_moves());
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
        assert!(self.move_choices_abr_stack.len() == 2);

        self.history.push_back(self.history_stack.pop().unwrap());
        self.belief_bounds_stack.pop();
        self.move_choices_network_stack.pop();
        self.move_choices_abr_stack.pop();
        self.move_choices_abr_stack.pop();
    }

    fn compute_metrics(&self) -> abr_common::Metrics {
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
            //if bb.c_add_gap() < start.c_add_gap() {
            // Need to check min_c is gradually increasing 
            if bb.min_c > start.min_c || bb.max_c < LARGEST_BW.into() {
            //if bb.min_c > start.min_c {
                time_to_shrink_c = idx as RealNumInt;
                break;
            }
        }

        let mut time_to_shrink_c_l = (HISTORY_SIZE + SPECULATION_SIZE + 1) as RealNumInt;
        for (idx, bb) in self.belief_bounds_stack.iter().enumerate() {
            //if bb.c_add_gap() < start.c_add_gap() {
            // Need to check min_c is gradually increasing 
            if bb.min_c > start.min_c {
            //if bb.min_c > start.min_c {
                time_to_shrink_c_l = idx as RealNumInt;
                break;
            }
        }

        let mut time_to_shrink_c_h = (HISTORY_SIZE + SPECULATION_SIZE + 1) as RealNumInt;
        for (idx, bb) in self.belief_bounds_stack.iter().enumerate() {
            //if bb.c_add_gap() < start.c_add_gap() {
            // Need to check min_c is gradually increasing 
            if bb.max_c < LARGEST_BW.into() {
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
        let minc_minb_sum = self.network_model.compute_min_c_b_sum(&self.abr_obs_to_cca_obs(self.get_relevant_history(Some(FEASIBLE_SIZE))), &None).unwrap();
        let mut time_to_c_b = (HISTORY_SIZE + SPECULATION_SIZE + 1) as RealNumInt;
        let relevant_history = &self.get_relevant_history(Some(FEASIBLE_SIZE + self.history_stack.len()));
        for ptr in 0..relevant_history.len() - FEASIBLE_SIZE + 1 {
            let rh = &relevant_history[ptr .. (ptr + FEASIBLE_SIZE)];
            let mut rh_copy = vec![];
            for i in rh {
                rh_copy.push(i.clone());
            }
            if self.network_model.compute_min_c_b_sum(&self.abr_obs_to_cca_obs(rh_copy), &None).unwrap() >= minc_minb_sum {
                time_to_c_b = (ptr - 1) as RealNumInt;
                break;
            }
        }

        let mut start_history = vec![];
        for i in &relevant_history[0 .. FEASIBLE_SIZE] {
            start_history.push(i.clone());
        }
        let start_minc_minb_sum = self.network_model.compute_min_c_b_sum(&self.abr_obs_to_cca_obs(start_history), &None).unwrap();
        let mut time_to_shrink_minc_minb_add = (HISTORY_SIZE + SPECULATION_SIZE + 1) as RealNumInt;
        for ptr in 0..relevant_history.len() - FEASIBLE_SIZE + 1 {
            let rh = &relevant_history[ptr .. (ptr + FEASIBLE_SIZE)];
            let mut rh_copy = vec![];
            for i in rh {
                rh_copy.push(i.clone());
            }
            // Account for unsoundness during QE 
            if self.network_model.compute_min_c_b_sum(&self.abr_obs_to_cca_obs(rh_copy), &None).unwrap() >= start_minc_minb_sum + self.loss_tolerance_abs * 2 - RealNumRep::new_raw(1, 1 << 4){
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

        let cca_metrics =   
        cc_common::Metrics {
            neg_delivered: (first.get_s()) - (last.get_s()),
            qdel: std::cmp::max(0.into(), (qmax as i32 - 1).into()),
            loss: std::cmp::max(0.into(), last.get_ld() - first.get_ld() - self.loss_tolerance_abs),
            // Basically is latest smaller than start:
            //shrink_c: latest.c_add_gap() < start.c_add_gap(),
            shrink_c: latest.min_c > start.min_c || latest.max_c < LARGEST_BW.into(),
            shrink_b: latest.max_b < LARGEST_BW.into(),
            shrink_maxc_mul: latest.max_c <= start.max_c / 2,
            shrink_maxc_add: latest.max_c < LARGEST_BW.into(),
            shrink_minc_mul: latest.min_c >= start.min_c * 2,
            shrink_minc_add: latest.min_c >= start.min_c,
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
        };

        // Metrics for abr
        //
        //
        let mut latency = true;
        let mut frame_rate: RealNumInt = 0.into();
        let mut total_qualities: RealNumRep = 0.into();
        // Find the relevant frame first 
        let start_relevant_frame_index = //if first.frames_in_backlog.is_empty() { first.frames_used } else { first.frames_used - 1 };
            first.frames_used;
        let end_relevant_frame_index = if last.frames_encoded.is_empty() { std::cmp::max(last.frames_used - 1, start_relevant_frame_index) } else { last.frames_encoded.last().unwrap().index };
        
        let abr_relevant_history = &self.get_relevant_history(Some(FEASIBLE_SIZE + self.history_stack.len()));
        for i in start_relevant_frame_index..(end_relevant_frame_index + 1) {
            let mut fetch_time = -1;
            //let mut skip = true;
            let mut display_time = -1;
            for (idx, state) in abr_relevant_history.iter().enumerate() {
                // Find the fetch time first
                if fetch_time == -1 {
                    for f in &state.new_frames_encoding {
                        if f.index == i {
                            assert!(f.ago == FRAME_RATE);
                            fetch_time = idx as i32;
                        }
                    }
                }
                // Currently skipping happens before encoding
                let mut frames_receiving = state.frames_receiving.clone();
                frames_receiving.reverse();
                for f in frames_receiving {
                    if f.index <= i {
                        if f.length >= f.message_length && *f.encoded_frames.last().unwrap() >= i {
                            display_time = idx as i32;
                            frame_rate += 1;
                            //print!("GG!\n");
                            // TODO: Currently fragile, need to be changed later
                            total_qualities += f.message_length / f.encoded_frames.len() as i32;
                        }
                        break;
                    }
                }
                if display_time != -1 {
                    break;
                }
                /* 
                if skip {
                    // Check whether it is skipped
                    for f in &state.frames_in_backlog {
                        if f.index == i {
                            skip = false;
                        }
                    }

                    for f in &state.frames_sent {
                        if f.index == i {
                            skip = false;
                        }
                    }
                } else {
                    // Check whether it is received
                    let mut frames_receiving = state.frames_receiving.clone();
                    frames_receiving.reverse();
                    for f in frames_receiving {
                        if f.index == i && f.length >= f.message_length {
                            display_time = idx as i32;
                            frame_rate += 1;
                            total_qualities += f.message_length;
                            break;
                        }
                    }
                    if display_time != -1 {
                        break;
                    }
                } */
            }

            if fetch_time == -1 {
                latency = false;
            } else {
                //if !skip {
                if display_time == -1 {
                    // Trace length not enough 
                    latency = latency && ((abr_relevant_history.len() - fetch_time as usize) < MAX_FRAME_LATENCY as usize);
                    // Frame is sent but unable to recover (because of lost)
                    if !last.frames_receiving.is_empty() {
                        latency = latency && last.frames_receiving.last().unwrap().index <= i;
                    }
                } else {
                    latency = latency && ((display_time as usize - fetch_time as usize) < MAX_FRAME_LATENCY as usize)
                }
                //}
            }
        }

        let zero: RealNumRep = 0.into();
        let backlog: RealNumRep = last.frames_in_backlog.clone().into_iter().fold(zero, |acc, frame| acc + frame.length);

        //print!("{:?}, {:?}, {:?}\n",latency, frame_rate, total_qualities);

        abr_common::Metrics { 
            cca_metrics, 
            latency,
            received_frames: frame_rate, 
            qualities: if frame_rate == 0 { 0.into() } else { total_qualities / frame_rate }, 
            backlog, 
        }

        /* 
        // Calculate abr metrics
        let mut total_qualities: RealNumRep = 0.into();
        let mut last_quality: RealNumRep = 0.into();
        let mut swtiching_cost: RealNumRep = 0.into();
            
        if !first.frames_receiving.is_empty() { 
            let first_length = first.frames_receiving.len();
            let first_last = first.frames_receiving.last().unwrap();
            let last_corr = last.frames_receiving.get(first_length - 1).unwrap();
            last_quality = first_last.message_length;

            if first_last.message_length > first_last.length {
                if last_corr.message_length <= first_last.length {
                    swtiching_cost += if first_length > 1 { 
                        let diff = first_last.message_length - first.frames_receiving.get(first_length - 2).unwrap().message_length;
                        if diff >= 0.into() {
                            diff
                        } else {
                            diff * (-1)
                        }
                    } else {first_last.message_length};     
                    total_qualities += first_last.message_length;
                }
            } 
        }

        for i in first.frames_receiving.len()..last.frames_receiving.len() {
            if last.frames_receiving.get(i).unwrap().length >= last.frames_receiving.get(i).unwrap().message_length {
                total_qualities += last.frames_receiving.get(i).unwrap().message_length;

                // For switching cost
                if last_quality != 0.into() {
                    let diff = last.frames_receiving.get(i).unwrap().message_length - last_quality;
                    if diff >= 0.into() {
                        swtiching_cost += diff
                    } else {
                        swtiching_cost += diff * (-1)
                    }
                }
                last_quality = last.frames_receiving.get(i).unwrap().message_length
            }
        }

        let received_frames = last.frames_received - first.frames_received;
        */

    }

    // fn get_feasible_moves(&self) -> Vec<CCMove> {
    //     if self.maximizer() {
    //         // network's turn
    //         return self.get_feasible_network_moves();
    //     } else {
    //         return self.get_cca_moves();
    //     }
    // }

    fn get_last_history_item(&self) -> &ObservationABR<<NM as NetworkModel>::O> {
        if !self.history_stack.is_empty() {
            return self.history_stack.last().unwrap();
        } else {
            return self.history.back().unwrap();
        }
    }

    fn get_relevant_history(&self, size: Option<usize>) -> Vec<ObservationABR<NM::O>> {
        // We want to build vector with at most FEASIBLE_SIZE-1 observations
        // worth of history. "Minus 1" because that's what we will be binary
        // searching for. We also want as many elements as possible from the
        // history_stack. Basically we copy the last elements from
        // history_stack, if space is left we also copy from history.

        let mut ret: Vec<ObservationABR<NM::O>> = Vec::new();

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

    fn abr_move_to_cca_move(&self) -> Option<CCAAction> {
        match self.move_abr.clone() {
            Some(a) => {Some(a.cca_action)}, 
            None => None
        }
    }


    fn abr_obs_to_cca_obs(&self, rh: Vec<ObservationABR<NM::O>>) -> Vec<NM::O> {
        rh.into_iter().map(|ob| ob.cca_observation).collect()
    }

    fn compute_feasible_network_moves(&self) -> Vec<ABRMove<NM::NA>> {
        assert!(self.maximizer()); // only call when its network's turn.
        // let ret = self
        //     .network_model
        //     .compute_feasible_network_moves(&self.get_relevant_history(None), &self.move_cca);

        // Sending full history to be able to compute belief paths, the compute
        // feasible moves then pops the oldest observation.
        let network_moves = self
            .network_model
            .compute_feasible_network_moves(&self.abr_obs_to_cca_obs(self.get_relevant_history(Some(FEASIBLE_SIZE + self.history_stack.len()))), &self.abr_move_to_cca_move());
        let network_moves: Vec<<NM as NetworkModel>::NA> = network_moves.into_iter().unique().collect();


        //ret.into_iter().map(ABRMove::Network).collect() 
        let encoder_moves = self.compute_feasible_encoder_moves(self.get_relevant_history(Some(FEASIBLE_SIZE)), self.move_abr.clone().unwrap());

        let mut ret: Vec<ABRMove<NM::NA>> = vec![];
        for nm in &network_moves {
            for em in &encoder_moves {
                ret.push(ABRMove::Network(em.clone(), nm.clone()));
            }
        }
        //print!("PIPI{:?}\n", ret);
        ret.into_iter().unique().collect()
    }

    fn compute_feasible_encoder_moves(&self, rh: Vec<ObservationABR<NM::O>>, move_abr: ABRAction,) -> Vec<EncoderAction> {
        // Get the frames that finish encoding first
        let last_observation = rh.last().unwrap();

        let mut frames_encoding_buf = last_observation.frames_encoding.clone();
        let new_encoding_frames = &mut move_abr.new_frames_encoding.clone();
        frames_encoding_buf.append(new_encoding_frames);


        let mut ideal_new_frame_encoded = vec![];
        for frame in frames_encoding_buf {
            assert!(frame.ago != 0);
            if frame.ago == 1 {
                let mut fresh_frame = frame;
                fresh_frame.ago = 0;
                ideal_new_frame_encoded.push(fresh_frame);
            }
        }

        let len = ideal_new_frame_encoded.len() as u32;

        if len == 0 {
            return vec![EncoderAction {new_frames_encoded:vec![]}]
        }

        let mut ret = vec![];

        // Do permutation of all the finished frames 
        // Consider add correlations
        for i in 0..2_i32.pow(len) {
            let mut em: Vec<Frame> = vec![];
            for j in 0..len {
                let k = i / 2_i32.pow(j);
                let mut encoded_frame = ideal_new_frame_encoded.get(j as usize).unwrap().clone();
                if k % 2 == 0 {
                    encoded_frame.message_length = encoded_frame.message_length * ENCODING_MIN_FACTOR;
                } else {
                    encoded_frame.message_length = encoded_frame.message_length * ENCODING_MAX_FACTOR;
                }
                em.push(encoded_frame);
            }
            ret.push(EncoderAction {new_frames_encoded:em});
        }
        //ret.reverse();
        //print!("GOGO {:?}, {:?}\n", ret, ret.len());
        ret
    }

    fn compute_abr_moves(&self) -> Vec<ABRMove<NM::NA>>  {
        self.compute_abr_moves_depth(true)
    }

    fn compute_abr_moves_depth(&self, new_encode: bool) -> Vec<ABRMove<NM::NA>>  {
        if new_encode {
            let first_batch: Vec<Vec<ABRMove<NM::NA>>> = self.compute_cca_backlogged_by_abr().iter()
                .map(|r| self.append_new_encoding_choices(r.clone()))
                .collect();
            let mut first_batch: Vec<ABRMove<NM::NA>> = first_batch.into_iter().flatten().unique().collect();
            //first_batch
            let second_batch: Vec<Vec<ABRMove<NM::NA>>> = self.compute_abr_spawn_cca().iter()
                .map(|r| self.append_new_encoding_choices(r.clone()))
                .collect();
            let mut second_batch: Vec<ABRMove<NM::NA>> = second_batch.into_iter().flatten().unique().collect();
            first_batch.append(&mut second_batch);
            let first_batch: Vec<ABRMove<NM::NA>> = first_batch.into_iter().unique().collect();
            /* 
            for i in first_batch.clone() {
                println!("{:?}!", i);
            }
            println!("");
            println!("");
            println!(""); */
            first_batch
        }
        else  {
            let mut first_batch: Vec<ABRMove<NM::NA>> = self.compute_cca_backlogged_by_abr().iter()
            .map(|r| ABRMove::ABR(r.clone()))
            .collect();
            let mut second_batch: Vec<ABRMove<NM::NA>> = self.compute_abr_spawn_cca().iter()
                .map(|r| ABRMove::ABR(r.clone()))
                .collect();
            first_batch.append(&mut second_batch);
            let first_batch = first_batch.into_iter().unique().collect();
            first_batch
        }
    }

    fn compute_abr_spawn_cca(&self) -> Vec<ABRAction> {
        let rh = self.get_relevant_history(Some(FEASIBLE_SIZE));
        let max_allowed_rate_no_loss = self.network_model.compute_max_allowed_rate(
            &self.abr_obs_to_cca_obs(rh),
            &self.abr_move_to_cca_move(),
            0.into(),
            self.delay_tolerance_frac,
            1,
        ).unwrap();
        //assert!(last_obs.frames_encoded.len() >= 1);
        let last_obs = self.get_last_history_item();
        let mut backlog_choices = self.permute_vector(last_obs.frames_encoded.clone());
        // Could be the case that the sent frames has arrived, eliminate it 
        let last_backlog = self.get_last_history_item().frames_in_backlog.clone();
        let last_receiving = self.get_last_history_item().frames_receiving.clone();
        let mut updated_backlog = vec![];
        if !last_backlog.is_empty() && !last_receiving.is_empty() {
            let first = last_backlog.first().unwrap();
            let last = last_receiving.last().unwrap();
            if first.index == last.index && last.length >= last.message_length {
                for i in &last_backlog[1..last_backlog.len()] {
                    updated_backlog.push(i.clone());
                }
            } else {
                updated_backlog = last_backlog.clone();
            }
        }

        let mut ret= vec![];
        for choice in &mut backlog_choices {
            let mut max_backlog_queue = updated_backlog.clone();
            max_backlog_queue.append(choice);
            for len in 2..(max_backlog_queue.len() + 1) {
                let target_frames = &max_backlog_queue[0..len];
                let zero: RealNumRep = 0.into();
                let before_padding: RealNumRep = target_frames.into_iter().fold(zero, |acc, frame| acc + frame.length);
                if before_padding > max_allowed_rate_no_loss {
                    break;
                }
                let denom = RealNumRep::new_raw(len as i32 - 1, 1); 
                let padding_per_frame = if denom == 0.into() { max_allowed_rate_no_loss - before_padding } else { (max_allowed_rate_no_loss - before_padding) / denom };
                let cca_rate = if denom == 0.into() { max_allowed_rate_no_loss } else { max_allowed_rate_no_loss + padding_per_frame };

                let mut new_backlog_queue: Vec<FragmentedFrame> = Vec::new();
                let mut new_sent_out_queue: Vec<FragmentedFrame> = Vec::new();
                //for frame in &max_backlog_queue[len..max_backlog_queue.len()] {
                //    new_backlog_queue.push(frame.clone());
                //}
                for frame in target_frames {
                    new_sent_out_queue.push(FragmentedFrame {length: frame.length + padding_per_frame, encoded_frames: vec![frame.index], ..frame.clone()});
                }
                assert!(new_sent_out_queue.clone().into_iter().fold(zero, |acc, frame| acc + frame.length) == cca_rate);
                ret.push(ABRAction {cca_action: CCAAction { rate: cca_rate }, frames_sent: new_sent_out_queue.clone(), frames_in_backlog: new_backlog_queue.clone(),
                new_frames_encoding: vec![], });
            }
            // TODO: Currently it is brittle
            if max_backlog_queue.len() == 3 {
                let target_frames = &max_backlog_queue[0..2];
                let zero: RealNumRep = 0.into();
                let before_padding: RealNumRep = target_frames.into_iter().fold(zero, |acc, frame| acc + frame.length);
                if before_padding > max_allowed_rate_no_loss {
                    continue;
                }
                let denom = RealNumRep::new_raw(1, 1); 
                let mut padding_per_frame = if denom == 0.into() { max_allowed_rate_no_loss - before_padding } else { (max_allowed_rate_no_loss - before_padding) / denom };
                let mut cca_rate = if denom == 0.into() { max_allowed_rate_no_loss } else { max_allowed_rate_no_loss + padding_per_frame };

                // Extra constraint on padding imposed by latency deadline
                let belief_bounds = self.get_latest_belief_bounds();
                let min_c = belief_bounds.min_c;
                if max_backlog_queue[2].message_length < min_c {
                    cca_rate = std::cmp::min(cca_rate, max_allowed_rate_no_loss + (min_c - max_backlog_queue[2].message_length));
                    padding_per_frame = cca_rate - max_allowed_rate_no_loss;
                } else {
                    continue;
                }

                let mut new_backlog_queue: Vec<FragmentedFrame> = Vec::new();
                let mut new_sent_out_queue: Vec<FragmentedFrame> = Vec::new();
                //for frame in &max_backlog_queue[len..max_backlog_queue.len()] {
                //    new_backlog_queue.push(frame.clone());
                //}
                //for frame in target_frames {
                new_sent_out_queue.push(FragmentedFrame {length: max_backlog_queue[0].length + padding_per_frame, encoded_frames: vec![max_backlog_queue[0].index], ..max_backlog_queue[0].clone()});
                new_sent_out_queue.push(FragmentedFrame {length: max_backlog_queue[1].length + (max_allowed_rate_no_loss - before_padding), encoded_frames: vec![max_backlog_queue[1].index], ..max_backlog_queue[1].clone()});
                //}
                assert!(new_sent_out_queue.clone().into_iter().fold(zero, |acc, frame| acc + frame.length) == cca_rate);
                ret.push(ABRAction {cca_action: CCAAction { rate: cca_rate }, frames_sent: new_sent_out_queue.clone(), frames_in_backlog: new_backlog_queue.clone(),
                new_frames_encoding: vec![], });

                let mut new_backlog_queue: Vec<FragmentedFrame> = Vec::new();
                let mut new_sent_out_queue: Vec<FragmentedFrame> = Vec::new();
                let cca_rate = max_allowed_rate_no_loss + (min_c - max_backlog_queue[2].message_length);

                new_sent_out_queue.push(FragmentedFrame {index: max_backlog_queue[0].index, 
                    length: cca_rate, 
                    message_length: (max_backlog_queue[0].message_length + max_backlog_queue[1].message_length), 
                    encoded_frames: vec![max_backlog_queue[0].index, max_backlog_queue[1].index],});
                assert!(new_sent_out_queue.clone().into_iter().fold(zero, |acc, frame| acc + frame.length) == cca_rate);
                ret.push(ABRAction {cca_action: CCAAction { rate: cca_rate }, frames_sent: new_sent_out_queue.clone(), frames_in_backlog: new_backlog_queue.clone(),
                    new_frames_encoding: vec![], });
            }
        }
        ret

    }


    fn compute_cca_backlogged_by_abr(&self) -> Vec<ABRAction> {
        assert!(!self.maximizer()); // only call when its CCA's turn.
        let start = std::time::Instant::now();
        let belief_bounds = self.get_latest_belief_bounds();

        let rh = self.get_relevant_history(Some(FEASIBLE_SIZE));
        //let mc = self.move_abr;

        let max_allowed_rate_no_loss = self.network_model.compute_max_allowed_rate(
            &self.abr_obs_to_cca_obs(rh),
            &self.abr_move_to_cca_move(),
            0.into(),
            self.delay_tolerance_frac,
            1,
        );
        // debug!("Got max_allowed_rate: {:?}", max_allowed_rate);

        let min_c = belief_bounds.min_c;
        let max_q = belief_bounds.max_q;

        let ret: Vec<Vec<ABRAction>> = [
            max_allowed_rate_no_loss.unwrap(),
            std::cmp::max(0.into(), min_c - max_q),
            //max_allowed_rate_no_loss.unwrap() + self.loss_tolerance_abs, 
            max_allowed_rate_no_loss.unwrap() + min_c, 
            // max_allowed_rate2.unwrap(),
            // std::cmp::max(min_c - RealNumRep::from(ALPHA), ALPHA.into()),
            //min_c,
            //min_c * 2,
            //min_c + ALPHA,
            // belief_bounds.max_c,
            // min_c / 2,
        ]
        .iter()
        .filter(|x| **x >= 0.into())
        .map(|r| self.abr_moves_from_cca_move(*r, max_allowed_rate_no_loss.unwrap()))
        .collect();

        let ret = ret.into_iter().flatten().unique().collect();
        // https://stackoverflow.com/questions/47636618/vecdedup-does-not-work-how-do-i-deduplicate-a-vector-of-strings
        debug!("CCA choices:\n{:?}\n in {:.2?} time.", ret, start.elapsed());
        ret
    }


    fn powerset<T>(&self, s: &[T]) -> Vec<Vec<T>> where T: Clone {
        (0..2usize.pow(s.len() as u32)).map(|i| {
            s.iter().enumerate().filter(|&(t, _)| (i >> t) % 2 == 1)
            .map(|(_, element)| element.clone())
            .collect()
            }).collect()
    }


    // Can not skip the frame
    // (1,2) -> (), (1), (1,2)
    fn permute_vector(&self, vector: Vec<Frame>) -> Vec<Vec<FragmentedFrame>> {
        let mut new_frames_encoded_by_index = vec![];
        if vector.len() >= 1 {
            let mut index_buf = vector.first().unwrap().index;
            let mut frames_same_index_buf = vec![];
            for frame in &vector {
                assert!(frame.ago == 0);
                if frame.index != index_buf {
                    assert!(frame.index == index_buf + 1);
                    new_frames_encoded_by_index.push(frames_same_index_buf.clone());
                    frames_same_index_buf = vec![];
                    index_buf += 1;
                }
                frames_same_index_buf.push(FragmentedFrame {index: frame.index, message_length: frame.message_length, length: frame.message_length, encoded_frames: vec![],});
            }
            if frames_same_index_buf.len() >= 1 {
                new_frames_encoded_by_index.push(frames_same_index_buf.clone());
            }
        }

        let mut ret = vec![];   
        // Len = 0
        ret.push(vec![]);
        for len in 1..(new_frames_encoded_by_index.len() + 1) {
            let mut counter = vec![0;len]; 
            loop {
                let mut buf = vec![];
                for i in 0..len {
                    let index = counter.get(i).unwrap().clone() as usize;
                    buf.push(new_frames_encoded_by_index.get(i).unwrap().get(index).unwrap().clone());
                }
                // Keeps the order
                // Can not skip the frame
                //let mut subset = self.powerset(&buf);
                //ret.append(&mut subset);
                ret.push(buf);
                // Update the counter
                for i in (0..len).rev() {
                    let max = new_frames_encoded_by_index.get(i).unwrap().len();
                    let digit = counter.get_mut(i).unwrap();
                    *digit += 1;
                    if *digit == max {
                        *digit = 0;
                    } else {
                        break;
                    }
                }
                // Stop condition
                let mut outer = false;
                for i in 0..len {
                    let digit = counter.get(i).unwrap().clone();
                    if digit != 0 {
                        outer = true;
                        break;
                    }
                }
                if !outer {
                    break;
                }
            }
        }
        ret.into_iter().unique().collect()
    }

    fn get_last_encoding_choice(&self) -> RealNumInt {
        let mut rev_history = self.get_relevant_history(Some(SPECULATION_SIZE));
        rev_history.reverse();
        for h in &rev_history {
            if !h.frames_encoding.is_empty() {
                return h.frames_encoding.last().unwrap().index
            }
            if !h.frames_encoded.is_empty() {
                return h.frames_encoded.last().unwrap().index
            }
        }
        0.into()
    }
    
    fn get_last_sending_choice(&self) -> Option<FragmentedFrame> {
        let mut rev_history = self.get_relevant_history(Some(SPECULATION_SIZE));
        rev_history.reverse();
        for h in &rev_history {
            //if !h.frames_in_backlog.is_empty() {
            //    return (h.frames_in_backlog.last().unwrap().index, h.frames_in_backlog.last().unwrap().message_length)
            //}
            if !h.frames_sent.is_empty() {
                return Some(h.frames_sent.last().unwrap().clone());
            }
        }
        // TODO: Fragile Initial State
        return None;
    } 

    // Encoding + Scheduling
    fn append_new_encoding_choices(&self, abr_move: ABRAction) -> Vec<ABRMove<NM::NA>> {
        // New encoding choice
        // TODO: Fragile
        let min_c = self.get_latest_belief_bounds().min_c;
        let latest_index = self.get_last_encoding_choice();
        // TODO: Currently only for worst case (min_c does not change)
        //assert!(SPECULATION_SIZE == ((MAX_FRAME_LATENCY + 1) * 2) as usize);
        assert!(ENCODING_LIMIT == 1);
        assert!(min_c >= self.loss_tolerance_abs);
        let new_frames_encoding_choices = [
            //[min_c - self.loss_tolerance_abs],
            //vec![(latest_index + 1, vec![min_c - self.loss_tolerance_abs])],
            //vec![(latest_index + 1, vec![min_c / 4]), (latest_index + 2, vec![min_c / 4]),],
            //vec![(latest_index + 1, vec![min_c / 2]), (latest_index + 2, vec![min_c / 2]),],
            //vec![(latest_index + 1, vec![min_c * 3 / 2]), (latest_index + 2, vec![min_c * 3 / 2]),],
            vec![(latest_index + 1, vec![min_c])],
            //vec![(latest_index + 1, vec![min_c + self.loss_tolerance_abs])],
            //min_c - self.loss_tolerance_abs * 2,
        ];
        let mut ret = vec![];
        for encoding_choices in new_frames_encoding_choices {
            let mut new_frames_encoding = vec![];
            for (index, encoding_choices_same_index) in encoding_choices {
                for message_length in encoding_choices_same_index {
                    new_frames_encoding.push(Frame{index, message_length, ago: ENCODING_DELAY,});
                }
            }
            ret.push(ABRMove::ABR(ABRAction {new_frames_encoding,
                .. abr_move.clone()}));
        }
        ret.push(ABRMove::ABR(ABRAction {new_frames_encoding: vec![], 
            .. abr_move.clone()}));
        ret
    }

    // No new frames, only add padding bytes of the previous frames
    fn abr_moves_from_cca_move(&self, cca_move: RealNumRep, max_allowed_rate_no_loss: RealNumRep) -> Vec<abr_common::ABRAction> {
        //let min_c = self.get_latest_belief_bounds().min_c;
        let last_obs = self.get_last_history_item();
        let max_loss = std::cmp::max(0.into(), cca_move - max_allowed_rate_no_loss);
        //assert!(last_obs.frames_encoded.len() >= 1);

        let mut backlog_choices = self.permute_vector(last_obs.frames_encoded.clone());
        // Delay the encoding out choice
        //backlog_choices.push(vec![]);
        //print!("PIPI2: {:?}\n", backlog_choices);

        // Could be the case that the sent frames has arrived, eliminate it 
        let last_backlog = self.get_last_history_item().frames_in_backlog.clone();
        let last_receiving = self.get_last_history_item().frames_receiving.clone();
        let mut updated_backlog = vec![];
        if !last_backlog.is_empty() && !last_receiving.is_empty() {
            let first = last_backlog.first().unwrap();
            let last = last_receiving.last().unwrap();
            if first.index == last.index && last.length >= last.message_length {
                for i in &last_backlog[1..last_backlog.len()] {
                    updated_backlog.push(i.clone());
                }
            } else {
                updated_backlog = last_backlog.clone();
            }
        }

        let mut ret= vec![];
        if cca_move == 0.into() {
            ret.push(ABRAction {cca_action: CCAAction { rate: cca_move, }, frames_sent: vec![], frames_in_backlog: updated_backlog,
                new_frames_encoding: vec![], });
            return ret;
        }
        
        for choice in &mut backlog_choices {
            let mut max_backlog_queue = updated_backlog.clone();
            max_backlog_queue.append(choice);

            let num_frames = max_backlog_queue.len();
            let zero: RealNumRep = 0.into();
            let total_size: RealNumRep = max_backlog_queue.clone().into_iter().fold(zero, |acc, frame| acc + frame.length);
            if num_frames == 0 {
                if let Some(ff) = self.get_last_sending_choice() {
                    ret.push(ABRAction {cca_action: CCAAction { rate: cca_move, }, frames_sent: vec![FragmentedFrame{length: cca_move, ..ff.clone()}], frames_in_backlog: vec![],
                        new_frames_encoding: vec![], });
                } 
                continue;
            }
            // Too much sending out
            if total_size + max_loss > cca_move {
                continue;
            }
            let max_num_fec = 
                if max_loss == 0.into() {
                    num_frames
                } else {
                    let temp = (cca_move - total_size) / max_loss;
                    let temp = temp.floor().to_usize().unwrap();
                    std::cmp::min(temp, num_frames)
                };
            assert!(max_num_fec >= 1);
            assert!(max_num_fec <= num_frames);
            assert!(num_frames >= 1);
            let all_choices = self.stars_and_bars(num_frames, max_num_fec - 1);
            for choice in all_choices {
                let choice: Vec<usize> = choice.into_iter().filter(|x| *x > 0).collect();
                let mut pivot: usize = 0;
                let mut new_sent_out_queue = vec![];
                for num_frames_fec in choice.clone() {
                    let mut length: RealNumRep = max_loss;
                    let mut message_length: RealNumRep = 0.into();
                    let mut encoded_frames = vec![];
                    for frame in &max_backlog_queue[pivot..(pivot + num_frames_fec)] {
                        length += frame.length;
                        message_length += frame.message_length;
                        encoded_frames.push(frame.index);
                    }
                    if !encoded_frames.is_empty() {
                        new_sent_out_queue.push(FragmentedFrame {index: encoded_frames.first().unwrap().clone(), length, message_length, encoded_frames,});
                    }
                    pivot += num_frames_fec;
                }
                //if num_frames >= 4 {
                //    println!("{:?}", choice);
                //    println!("{:?}", new_sent_out_queue);
                //}
                // Extra Padding
                let before_padding: RealNumRep = new_sent_out_queue.clone().into_iter().fold(zero, |acc, frame| acc + frame.length);
                let extra_padding = cca_move - before_padding;
                if extra_padding > 0.into() {
                    assert!(!new_sent_out_queue.is_empty());
                    new_sent_out_queue.last_mut().unwrap().length += extra_padding;
                }
                assert!(new_sent_out_queue.clone().into_iter().fold(zero, |acc, frame| acc + frame.length) == cca_move);
                ret.push(ABRAction {cca_action: CCAAction { rate: cca_move, }, frames_sent: new_sent_out_queue.clone(), frames_in_backlog: vec![],
                new_frames_encoding: vec![], });
            }
            /* 
            // Per Frame encoding 
            for len in 0..(max_backlog_queue.len() + 1) {
                let target_frames = &max_backlog_queue[0..len];
                let zero: RealNumRep = 0.into();
                let before_padding: RealNumRep = target_frames.into_iter().fold(zero, |acc, frame| acc + frame.length);
                let extra_padding = max_loss * len as i32;
                // Frame loss is possible
                if before_padding + extra_padding > cca_move {
                    break;
                }
                let mut new_backlog_queue: Vec<FragmentedFrame> = Vec::new();
                let mut new_sent_out_queue: Vec<FragmentedFrame> = Vec::new();
                //for frame in &max_backlog_queue[len..max_backlog_queue.len()] {
                //    new_backlog_queue.push(frame.clone());
                //}
                for frame in target_frames {
                    new_sent_out_queue.push(FragmentedFrame {length: frame.length + max_loss, encoded_frames: vec![frame.index], ..frame.clone()});
                }

                // Extra Padding
                let zero: RealNumRep = 0.into();
                let before_padding: RealNumRep = new_sent_out_queue.clone().into_iter().fold(zero, |acc, frame| acc + frame.length);
                let extra_padding = cca_move - before_padding;
                if extra_padding > 0.into() {
                    //if new_sent_out_queue.last_mut().is_none() {
                    //    print!("{:?}, {:?}, {:?}, {:?}", cca_move, new_backlog_queue, new_sent_out_queue, last_obs.frames_encoded);
                    //}
                    if new_sent_out_queue.is_empty() {
                        if let Some(ff) = self.get_last_sending_choice() {
                            new_sent_out_queue.push(FragmentedFrame{length: extra_padding, ..ff.clone()});
                        } else {
                            continue;
                        }
                    } else {
                        new_sent_out_queue.last_mut().unwrap().length += extra_padding;
                    }
                }
                assert!(new_sent_out_queue.clone().into_iter().fold(zero, |acc, frame| acc + frame.length) == cca_move);
                assert!(new_backlog_queue.is_empty());
                ret.push(ABRAction {cca_action: CCAAction { rate: cca_move, }, frames_sent: new_sent_out_queue.clone(), frames_in_backlog: new_backlog_queue.clone(),
                new_frames_encoding: vec![], });
            }
            if max_loss == 0.into() {
                continue;
            }

            // Multiple Frame Encoding
            for len in 2..(max_backlog_queue.len() + 1) {
                assert!(max_backlog_queue.len() >= 2);
                let target_frames = &max_backlog_queue[0..len];
                let zero: RealNumRep = 0.into();
                let before_padding: RealNumRep = target_frames.into_iter().fold(zero, |acc, frame| acc + frame.length);
                // Frame loss is possible
                if before_padding + max_loss > cca_move {
                    break;
                }
                let mut new_backlog_queue: Vec<FragmentedFrame> = Vec::new();
                let mut new_sent_out_queue: Vec<FragmentedFrame> = Vec::new();
                //for frame in &max_backlog_queue[len..max_backlog_queue.len()] {
                //    new_backlog_queue.push(frame.clone());
                //}
                let mut ff = target_frames.first().unwrap().clone();
                ff.encoded_frames.push(ff.index);
                ff.length += cca_move - before_padding;
                for frame in &target_frames[1..target_frames.len()] {
                    ff.length += frame.length;
                    ff.message_length += frame.message_length;
                    ff.encoded_frames.push(frame.index);
                }
                new_sent_out_queue.push(ff);
                assert!(new_sent_out_queue.clone().into_iter().fold(zero, |acc, frame| acc + frame.length) == cca_move);
                assert!(new_backlog_queue.is_empty());
                ret.push(ABRAction {cca_action: CCAAction { rate: cca_move, }, frames_sent: new_sent_out_queue.clone(), frames_in_backlog: new_backlog_queue.clone(),
                new_frames_encoding: vec![], });
            } */

            // Encode based on latency (unit of c)

            /* 
            let mut leftover = cca_move;
            // Heuristics: As many frames sent as possible
            for frame in &max_backlog_queue {
                if leftover >= (frame.length + max_loss) {
                    new_sent_out_queue.push(FragmentedFrame {length: frame.length + max_loss, ..frame.clone()});
                    leftover -= frame.length + max_loss
                } else if leftover <= max_loss {
                    new_backlog_queue.push(frame.clone());
                } else {
                    new_sent_out_queue.push(FragmentedFrame {length: leftover, ..frame.clone()});
                    new_backlog_queue.push(FragmentedFrame {length: frame.length - leftover + max_loss, ..frame.clone()});
                    leftover = 0.into();
                }
            }

            // Extra padding enables cca to probe
            // TODO: There maybe zero frames in the backlog, so need to consult frame from last step
            let zero: RealNumRep = 0.into();
            let before_padding: RealNumRep = new_sent_out_queue.clone().into_iter().fold(zero, |acc, frame| acc + frame.length);
            assert!(before_padding <= cca_move);
            let extra_padding = cca_move - before_padding;
            if extra_padding > 0.into() {
                //if new_sent_out_queue.last_mut().is_none() {
                //    print!("{:?}, {:?}, {:?}, {:?}", cca_move, new_backlog_queue, new_sent_out_queue, last_obs.frames_encoded);
                //}
                if new_sent_out_queue.is_empty() {
                    let (index, message_length) = self.get_last_choice();
                    new_sent_out_queue.push(FragmentedFrame{index, message_length, length: extra_padding,});
                } else {
                    new_sent_out_queue.last_mut().unwrap().length += extra_padding;
                }
            } 
            ret.push(ABRAction {cca_action: CCAAction { rate: cca_move }, frames_sent: new_sent_out_queue.clone(), frames_in_backlog: new_backlog_queue.clone(),
                new_frames_encoding: vec![], });
            */
        }
        ret
    }

    fn stars_and_bars(&self, num_stars: usize, num_bars: usize,) -> Vec<Vec<usize>> {
        if num_bars == 0 {
            return vec![vec![num_stars]];
        }
        let mut ret = vec![];
        for i in 0..(num_stars + 1) {
            let subs = self.stars_and_bars(num_stars - i, num_bars - 1);
            for sub in subs {
                let mut sub_new = sub.clone();
                sub_new.push(i);
                ret.push(sub_new);
            }
        }
        ret
    }

    // Calculate possible abr moves given cca moves
    // Assumption: 
    // 1. should be no backlog
    // 2. satisfy the latency constraint
    /* 
    fn abr_moves_from_cca_move(&self, cca_move: RealNumRep, max_allowed_rate_no_loss: RealNumRep) -> Vec<ABRMove<NM::NA>> {
        let min_c = self.get_latest_belief_bounds().min_c;
        let max_q = self.get_latest_belief_bounds().max_q;
        let max_possible_loss = std::cmp::max(cca_move - max_allowed_rate_no_loss, 0.into());

        // Assume infinite buffer, maximum bytes/pkts that can be received within the MAX_LATENCY (>=1)
        let in_time = std::cmp::max(min_c * MAX_FRAME_LATENCY - max_q, 0.into());

        let mut abr_rates: Vec<(RealNumRep, RealNumInt)>  = vec![];
        let mut num_frames = 1; 
        loop {
            let frame_size: RealNumRep = 
                (std::cmp::min(in_time, std::cmp::min(max_allowed_rate_no_loss, cca_move)) 
                    - max_possible_loss * (num_frames - 1)) 
                        / num_frames;
            // Loop break condition
            if frame_size < MIN_FRAME_SIZE {
              break;
            }
            abr_rates.push((frame_size, num_frames));
            num_frames += 1;
        }
        abr_rates.reverse();
        let mut ret: Vec<ABRMove<NM::NA>> = vec![];
        // Calculate the exact frame (with reed-solomon code)
        for (a, num) in abr_rates {
            let mut new_sent_out_queue: Vec<FragmentedFrame> = Vec::new();
            let mut index = self.get_last_history_item().frames_used;
            for _ in 0..num {
                new_sent_out_queue.push(FragmentedFrame {index, message_length: a, length: a});
                index += 1;
            } 

            // Reed-solomon code 
            for frame in new_sent_out_queue.iter_mut() {
                frame.length += max_possible_loss;
            }

            // Extra padding enables cca to probe
            let zero: RealNumRep = 0.into();
            let before_padding: RealNumRep = new_sent_out_queue.clone().into_iter().fold(zero, |acc, frame| acc + frame.length);
            if before_padding > cca_move {
                print!("{:?}", cca_move);
                print!("{:?}", new_sent_out_queue);
            }
            assert!(before_padding <= cca_move);
            let extra_padding = cca_move - before_padding;
            new_sent_out_queue.last_mut().unwrap().length += extra_padding;

            ret.push(ABRMove::ABR(ABRAction {cca_action: CCAAction { rate: cca_move }, frames_sent: new_sent_out_queue, frames_in_backlog: vec![]}));
        }

        // Also padding from latest frame
        if ret.is_empty() {
            let index = self.get_last_history_item().frames_encoded_count - 1;
            assert!(index >= 0);
            ret.push(ABRMove::ABR(
                ABRAction {
                    cca_action: CCAAction { rate: cca_move }, 
                    frames_sent: if cca_move > 0.into() { vec![FragmentedFrame {index, message_length: self.get_last_choice(), length: cca_move}] } else { vec![] }, 
                    frames_in_backlog: vec![]}
            ));
        }
        
        ret
    } */

/*    fn abr_moves_from_cca_move(&self, cca_move: RealNumRep, max_allowed_rate_no_loss: RealNumRep) -> Vec<ABRMove<NM::NA>> {
        let min_c = self.get_latest_belief_bounds().min_c;
        let max_q = self.get_latest_belief_bounds().max_q;
        let min_frame_size: RealNumRep = 5.into();

        // Decide possible bit rate
        let backlog_queue = &self.get_last_history_item().frames_in_backlog; 
        let zero: RealNumRep = 0.into();
        let backlog: RealNumRep = backlog_queue.into_iter().fold(zero, |acc, frame| acc + frame.length);

        let last_obs = self.get_last_history_item();
        //let last_choice: RealNumRep = if last_obs.frames_encoded == 0 { 0.into() } 
        //    else { if last_obs.frames_in_backlog.is_empty() {last_obs.frames_sent.last().unwrap().message_length} else {last_obs.frames_in_backlog.last().unwrap().message_length} };
        let last_choice = self.get_last_choice();
        let max_possible_loss = std::cmp::max(cca_move - max_allowed_rate_no_loss, 0.into());
        let left_frames: RealNumRep = (last_obs.frames_in_backlog.len() as i32).into();
        let conservative_new_backlog = backlog + max_possible_loss * left_frames;
        // Tightest lower bound for one frame (TODO: generalize to Frame rate)
        let frame_lower_bound: RealNumRep = 
            if conservative_new_backlog >= cca_move  { 0.into() } 
                else { 
                    // Consider change to useless bytes?
                    if conservative_new_backlog + max_possible_loss >= cca_move {ALPHA.into()} else {cca_move - conservative_new_backlog - max_possible_loss}
                };

        let abr_rates: Vec<(RealNumRep, RealNumInt)>  = [
            //200.into(),
            //0.into(),
            //std::cmp::max(cca_move - backlog - max_possible_loss * (1), 0.into()),
            (frame_lower_bound, 1),
            (min_c, 1),
            (last_choice, 1),
        ].into_iter()
        .filter(|r| r.0 >= frame_lower_bound)
        .unique()
        .collect();

        let mut ret: Vec<ABRMove<NM::NA>> = vec![];
        // Calculate the exact frame (with reed-solomon code)
        for (a, num) in abr_rates {
            let mut old_backlog_queue = self.get_last_history_item().frames_in_backlog.clone();  
            if a != 0.into() {
                let mut index = self.get_last_history_item().frames_encoded;
                for _ in 0..num {
                    old_backlog_queue.push(Frame {index, message_length: a, length: a});
                    index += 1;
                }
            }   

            // Reed-solomon code  
            // frame of 40 
            // first step: 20 with loss tolerance of 2 (42) 20 | 22
            // second: 20 with loss tolerance of 1 (43)
            // third: 3

            for frame in old_backlog_queue.iter_mut() {
                frame.length += max_possible_loss;
            }

            // Calculate the sent out and the ones still in backlog
            let mut new_sent_out_queue: Vec<Frame> = Vec::new();
            let mut new_backlog_queue: Vec<Frame> = Vec::new();
            let mut leftover = cca_move;
            for frame in &old_backlog_queue {
                if leftover >= frame.length {
                    new_sent_out_queue.push(frame.clone());
                    leftover -= frame.length
                } else if leftover == 0.into() {
                    new_backlog_queue.push(frame.clone());
                } else {
                    new_sent_out_queue.push(Frame {length: leftover, ..frame.clone()});
                    new_backlog_queue.push(Frame {length: frame.length - leftover, ..frame.clone()});
                    leftover = 0.into();
                }

            }
            //print!("gg: {}, {:?}\n", cca_move, new_sent_out_queue);
            //assert!(new_sent_out_queue.clone().into_iter().fold(zero, |acc, frame| acc + frame.length) == cca_move);
            ret.push(ABRMove::ABR(ABRAction {cca_action: CCAAction { rate: cca_move }, frames_sent: new_sent_out_queue, frames_in_backlog: new_backlog_queue}));
        }
        ret
    } */

    fn compute_belief_bounds(&self) -> BeliefBounds {
        self.network_model
            .compute_belief_bounds(&self.abr_obs_to_cca_obs(self.get_relevant_history(Some(FEASIBLE_SIZE))), &self.abr_move_to_cca_move())
    }

    fn get_network_move_sim(&self, args: &Args) -> Option<ABRMove<NM::NA>> {
        let nm = self.network_model
            .get_network_move_sim(&self.abr_obs_to_cca_obs(self.get_relevant_history(None)), &self.abr_move_to_cca_move(), args.sim_ideal);
        let em = self.get_encoder_move_sim(self.get_relevant_history(None), self.move_abr.clone().unwrap());
        Some(ABRMove::Network(em, nm.unwrap()))
    }

    fn get_encoder_move_sim(&self, rh: Vec<ObservationABR<NM::O>>, move_abr: ABRAction,) -> EncoderAction {
        // Get the frames that finish encoding first
        let last_observation = rh.last().unwrap();

        let mut frames_encoding_buf = last_observation.frames_encoding.clone();
        let new_encoding_frames = &mut move_abr.new_frames_encoding.clone();
        frames_encoding_buf.append(new_encoding_frames);
        
        
        let mut sim_new_frame_encoded = vec![];
        for frame in frames_encoding_buf {
            assert!(frame.ago != 0);
            if frame.ago == 1 {
                let mut fresh_frame = frame;
                fresh_frame.ago = 0;
                fresh_frame.message_length = fresh_frame.message_length; //* ENCODING_MIN_FACTOR;
                sim_new_frame_encoded.push(fresh_frame);
            }
        }

        EncoderAction { new_frames_encoded: sim_new_frame_encoded}
    }

    fn get_latest_belief_bounds(&self) -> &BeliefBounds {
        if let Some(ret) = self.belief_bounds_stack.last() {
            ret
        } else {
            &self.belief_bounds
        }
    }

    pub fn new(network_model: NM) -> AdaptiveBitrateState<NM> {
        let history = CircularBuffer::new();
        let belief_bounds = BeliefBounds::default();
        let move_abr = None;
        let history_stack = Vec::new();
        let belief_bounds_stack = Vec::new();
        let move_choices_abr_stack = Vec::new();
        let move_choices_network_stack = Vec::new();
        AdaptiveBitrateState {
            network_model,
            history,
            belief_bounds,
            move_abr,
            history_stack,
            belief_bounds_stack,
            move_choices_abr_stack,
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
    // TODO: change to ideal trace later 
    fn get_rate<NM: NetworkModel>(&mut self, ccs: &AdaptiveBitrateState<NM>) -> Option<ABRMove<NM::NA>> {
        let bb = ccs.get_latest_belief_bounds();
        let history = ccs.get_relevant_history(Some(SPECULATION_SIZE));
        let last_history = history.last().unwrap();
        let move_abr = ccs.move_abr.clone();
        let n = history.len();
        let index = last_history.frames_used;

        if n >= 2 && history[n - 1].get_ld() > history[n - 2].get_ld() {
            self.loss_fraction = self.loss_fraction / 2;
        }
        if self.sim_state == 0 {
            self.sim_state = self.args.probe_duration;
            Some(ABRMove::ABR(
                ABRAction {cca_action: CCAAction { rate: std::cmp::max(bb.min_c - bb.max_q, 1.into())}, 
                // need to change later
                new_frames_encoding: vec![],
                frames_sent: vec![FragmentedFrame {index, message_length: bb.min_c, length: 1.into(), encoded_frames: vec![index]}], 
                frames_in_backlog: vec![FragmentedFrame {index, message_length: bb.min_c, length: bb.min_c - 1, encoded_frames: vec![index]}]}))
            // Some(CCMove::CCA(CCAAction { rate: ALPHA.into() }))
        } else {
            //unimplemented!("Need to re-implement max allowed rate computation");
            let this_loss_abs = self.args.loss_tolerance_abs;
                 //std::cmp::max(self.args.loss_tolerance_abs, bb.min_c * self.loss_fraction);
            let move_cca = match move_abr.clone() {
                Some(a) => {Some(a.cca_action)}, 
                None => None
            }; 
            let rh: Vec<NM::O>= history.clone().into_iter().map(|ob| ob.cca_observation).collect();
            
            let x = ccs.network_model.compute_max_allowed_rate(
                 &rh,
                 &move_cca,
                 this_loss_abs,
                 0.into(),
                 0,
            );
            self.sim_state -= 1;
            let mut new_sent = last_history.frames_in_backlog.clone();
            let lower_bound = if !last_history.frames_in_backlog.is_empty() {x.unwrap() - this_loss_abs * 2 - last_history.frames_in_backlog.last().unwrap().message_length + last_history.frames_sent.last().unwrap().length } else {x.unwrap() - this_loss_abs};
            let mut new_sent = last_history.frames_in_backlog.clone();
            new_sent.push(FragmentedFrame {index, message_length:  lower_bound, length: lower_bound, encoded_frames: vec![index]});
            for i in new_sent.iter_mut() {
                i.length += this_loss_abs;
            }
            Some(ABRMove::ABR(
                ABRAction {cca_action: CCAAction { rate: x.unwrap()}, 
                new_frames_encoding: vec![], 
                frames_sent: new_sent, frames_in_backlog: Vec::new()}))
        }
    }
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    env_logger::Builder::from_env(Env::default().default_filter_or("abr=info")).init();
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
    let mut ccs = AdaptiveBitrateState::new(network_model);
    ccs.init();
    ccs.prepare_speculation();
    let mut search: minimax::Search<AdaptiveBitrateState<NetworkModelNC>> = minimax::Search::new();
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

    let tsteps = 100;
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
        /* 
        info!(
            "Step {} ({:.2?}): {}. {}. {}. nodes={}.",
            t,
            start.elapsed(),
            best_cc_move.as_ref().unwrap(),
            last_obs,
            bb,
            ccs.n_nodes_explored + 1, // +1 as we only count make_move calls which does not include the root node.
        ); */
        let qualities_vector: Vec<FragmentedFrame> = last_obs.frames_receiving.clone().into_iter().filter(|x| x.length >= x.message_length).collect();
        let mut qualities_display = vec![];
        for i in &qualities_vector[std::cmp::max(0, qualities_vector.len() as i32 - 3) as usize..qualities_vector.len()] {
            qualities_display.push(i.clone());
        }


        info!(
            "Step {} ({:.2?}): {}. {}. {}. Total={}. Last_Frames={:?}, nodes={}.",
            t,
            start.elapsed(),
            best_cc_move.as_ref().unwrap(),
            last_obs.cca_observation,
            bb,
            last_obs.frames_received,
            qualities_display,
            ccs.n_nodes_explored + 1, // +1 as we only count make_move calls which does not include the root node.
        );
        ccs.n_nodes_explored = 0;

        if some_wtr.is_some() {
            let wtr = some_wtr.as_mut().unwrap();
            let rate = match best_cc_move.as_ref().unwrap() {
                ABRMove::ABR(a) => a.cca_action.rate.to_f64().unwrap(),
                _ => panic!("Expecting CCA move"),
            };
            wtr.write_record(&[
                format!("{:.2?}", start.elapsed()),
                format!("{:.2}", rate),
                format!("{:.2}", last_obs.get_a().to_f64().unwrap()),
                format!("{:.2}", last_obs.get_ld().to_f64().unwrap()),
                format!("{:.2}", last_obs.get_s().to_f64().unwrap()),
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

    use super::*;


    macro_rules! setup_test {
        ($ccs:ident) => {
            let mut network_model = NetworkModelNC::new();

            network_model.init();
            let mut $ccs = AdaptiveBitrateState::new(network_model);
            // https://stackoverflow.com/questions/38779591/macro-that-declare-variables-in-rust
        };
    }

    #[test]
    fn test_abr_choices() {
        env_logger::Builder::from_env(Env::default().default_filter_or("abr=trace")).init();
        setup_test!(ccs);
        let mut input: Vec<Frame> =vec![];
        input.push(Frame{index: 0, message_length: 5.into(), ago: 0});
        input.push(Frame{index: 0, message_length: 10.into(), ago: 0});
        input.push(Frame{index: 1, message_length: 6.into(), ago: 0});
        input.push(Frame{index: 1, message_length: 12.into(), ago: 0});
        input.push(Frame{index: 2, message_length: 6.into(), ago: 0});
        input.push(Frame{index: 2, message_length: 12.into(), ago: 0});
        let ret = ccs.permute_vector(input);
        print!("{:?}\n",ret);
        assert!(ret.len() == (1 + 6 + 12 + 8));


    }

    #[test]
    fn test_abr_sending_choices() {
        let mut input: Vec<FragmentedFrame> =vec![];
        input.push(FragmentedFrame{index: 0.into(), message_length: 10.into(), length: 10.into(), encoded_frames: vec![0.into()]});
        let mut input1: Vec<FragmentedFrame> =vec![];
        input1.push(FragmentedFrame{index: 0.into(), message_length: 10.into(), length: 10.into(), encoded_frames: vec![0.into()]});
        assert!(input1 == input)
    }

    #[test]
    fn test_stars_bars() {
        env_logger::Builder::from_env(Env::default().default_filter_or("abr=trace")).init();
        setup_test!(ccs);
        let res = ccs.stars_and_bars(4, 0);
        for i in res {
            println!("{:?}", i);
        }
    }

}

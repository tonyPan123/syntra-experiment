use itertools::Itertools;
use log::{debug, error, info, trace};
use num_traits::ToPrimitive;
use serde::Serialize;
use std::collections::HashMap;
use std::fmt::{Debug, Display, Formatter};
use std::ops::Bound;

use cc_common::*;
use ds::interval::{Interval, IntervalList};
use ds::*;
use lazy_static::lazy_static;
use network_model_nc_qe_output::*;

const N_DISCRETE_POINTS: usize = 2;
const EPS: RealNumRep = RealNumRep::new_raw(1, 1 << 4);

lazy_static! {
    // The key is: (trace length, prior losses observed, total losses observed)
    pub static ref COMPUTE_L_OBS: HashMap<(i32, i32, i32), QeFun> =
        HashMap::from([
            ((2, 0, 0), compute_l_0_t_2_l_0 as QeFun),
            ((3, 0, 0), compute_l_0_t_3_l_0 as QeFun),
            ((4, 0, 0), compute_l_0_t_4_l_0 as QeFun),
            ((5, 0, 0), compute_l_0_t_5_l_0 as QeFun),
            ((6, 0, 0), compute_l_0_t_6_l_0 as QeFun),

            ((2, 1, 1), compute_l_1_t_2_l_1_nl_0 as QeFun),
            ((2, 0, 1), compute_l_1_t_2_l_0_nl_0 as QeFun),
            ((3, 1, 1), compute_l_1_t_3_l_1_nl_0 as QeFun),
            ((3, 0, 1), compute_l_1_t_3_l_0_nl_0 as QeFun),
            ((4, 1, 1), compute_l_1_t_4_l_1_nl_0 as QeFun),
            ((4, 0, 1), compute_l_1_t_4_l_0_nl_0 as QeFun),
            ((5, 1, 1), compute_l_1_t_5_l_1_nl_0 as QeFun),
            ((5, 0, 1), compute_l_1_t_5_l_0_nl_0 as QeFun),
            ((6, 1, 1), compute_l_1_t_6_l_1_nl_0 as QeFun),
            ((6, 0, 1), compute_l_1_t_6_l_0_nl_0 as QeFun),


            ((3, 2, 2), compute_l_2_t_3_l_2_nl_1 as QeFun),
            ((3, 1, 2), compute_l_2_t_3_l_1_nl_1 as QeFun),
            ((3, 0, 2), compute_l_2_t_3_l_0_nl_1 as QeFun),
            ((4, 2, 2), compute_l_2_t_4_l_2_nl_1 as QeFun),
            ((4, 1, 2), compute_l_2_t_4_l_1_nl_1 as QeFun),
            ((4, 0, 2), compute_l_2_t_4_l_0_nl_1 as QeFun),
            ((5, 2, 2), compute_l_2_t_5_l_2_nl_1 as QeFun),
            ((5, 1, 2), compute_l_2_t_5_l_1_nl_1 as QeFun),
            ((5, 0, 2), compute_l_2_t_5_l_0_nl_1 as QeFun),
            ((6, 2, 2), compute_l_2_t_6_l_2_nl_1 as QeFun),
            ((6, 1, 2), compute_l_2_t_6_l_1_nl_1 as QeFun),
            ((6, 0, 2), compute_l_2_t_6_l_0_nl_1 as QeFun),

            ((4, 3, 3), compute_l_3_t_4_l_3_nl_2 as QeFun),
            ((4, 2, 3), compute_l_3_t_4_l_2_nl_2 as QeFun),
            ((4, 1, 3), compute_l_3_t_4_l_1_nl_2 as QeFun),
            ((4, 0, 3), compute_l_3_t_4_l_0_nl_2 as QeFun),
            ((5, 3, 3), compute_l_3_t_5_l_3_nl_2 as QeFun),
            ((5, 2, 3), compute_l_3_t_5_l_2_nl_2 as QeFun),
            ((5, 1, 3), compute_l_3_t_5_l_1_nl_2 as QeFun),
            ((5, 0, 3), compute_l_3_t_5_l_0_nl_2 as QeFun),
            ((6, 3, 3), compute_l_3_t_6_l_3_nl_2 as QeFun),
            ((6, 2, 3), compute_l_3_t_6_l_2_nl_2 as QeFun),
            ((6, 1, 3), compute_l_3_t_6_l_1_nl_2 as QeFun),
            ((6, 0, 3), compute_l_3_t_6_l_0_nl_2 as QeFun),

            ((5, 4, 4), compute_l_4_t_5_l_4_nl_3 as QeFun),
            ((5, 3, 4), compute_l_4_t_5_l_3_nl_3 as QeFun),
            ((5, 2, 4), compute_l_4_t_5_l_2_nl_3 as QeFun),
            ((5, 1, 4), compute_l_4_t_5_l_1_nl_3 as QeFun),
            ((5, 0, 4), compute_l_4_t_5_l_0_nl_3 as QeFun),
            ((6, 4, 4), compute_l_4_t_6_l_4_nl_3 as QeFun),
            ((6, 3, 4), compute_l_4_t_6_l_3_nl_3 as QeFun),
            ((6, 2, 4), compute_l_4_t_6_l_2_nl_3 as QeFun),
            ((6, 1, 4), compute_l_4_t_6_l_1_nl_3 as QeFun),
            ((6, 0, 4), compute_l_4_t_6_l_0_nl_3 as QeFun),

            ((6, 5, 5), compute_l_5_t_6_l_5_nl_4 as QeFun),
            ((6, 4, 5), compute_l_5_t_6_l_4_nl_4 as QeFun),
            ((6, 3, 5), compute_l_5_t_6_l_3_nl_4 as QeFun),
            ((6, 2, 5), compute_l_5_t_6_l_2_nl_4 as QeFun),
            ((6, 1, 5), compute_l_5_t_6_l_1_nl_4 as QeFun),
            ((6, 0, 5), compute_l_5_t_6_l_0_nl_4 as QeFun),
        ]);
        pub static ref COMPUTE_Q: HashMap<(i32, i32), QeFun> = HashMap::from([
            ((6, 0), compute_q_5_t_6_l_0 as QeFun),
            ((6, 1), compute_q_5_t_6_l_1 as QeFun),
            ((6, 2), compute_q_5_t_6_l_2 as QeFun),
            ((6, 3), compute_q_5_t_6_l_3 as QeFun),
            ((6, 4), compute_q_5_t_6_l_4 as QeFun),
            ((6, 5), compute_q_5_t_6_l_5 as QeFun),
            ((6, 6), compute_q_5_t_6_l_6 as QeFun),
            ((5, 0), compute_q_4_t_5_l_0 as QeFun),
            ((5, 1), compute_q_4_t_5_l_1 as QeFun),
            ((5, 2), compute_q_4_t_5_l_2 as QeFun),
            ((5, 3), compute_q_4_t_5_l_3 as QeFun),
            ((5, 4), compute_q_4_t_5_l_4 as QeFun),
            ((5, 5), compute_q_4_t_5_l_5 as QeFun),
            ((5, 0), compute_q_4_t_5_l_0 as QeFun),
            ((5, 1), compute_q_4_t_5_l_1 as QeFun),
            ((5, 2), compute_q_4_t_5_l_2 as QeFun),
            ((5, 3), compute_q_4_t_5_l_3 as QeFun),
            ((5, 4), compute_q_4_t_5_l_4 as QeFun),
            ((5, 5), compute_q_4_t_5_l_5 as QeFun),
            ((4, 0), compute_q_3_t_4_l_0 as QeFun),
            ((4, 1), compute_q_3_t_4_l_1 as QeFun),
            ((4, 2), compute_q_3_t_4_l_2 as QeFun),
            ((4, 3), compute_q_3_t_4_l_3 as QeFun),
            ((4, 4), compute_q_3_t_4_l_4 as QeFun),
            ((3, 0), compute_q_2_t_3_l_0 as QeFun),
            ((3, 1), compute_q_2_t_3_l_1 as QeFun),
            ((3, 2), compute_q_2_t_3_l_2 as QeFun),
            ((3, 3), compute_q_2_t_3_l_3 as QeFun),
            ((2, 0), compute_q_1_t_2_l_0 as QeFun),
            ((2, 1), compute_q_1_t_2_l_1 as QeFun),
            ((2, 2), compute_q_1_t_2_l_2 as QeFun),
        ]);
        pub static ref COMPUTE_S: HashMap<(i32, i32), QeFun> = HashMap::from([
            ((6, 0), compute_s_5_t_6_l_0 as QeFun),
            ((6, 1), compute_s_5_t_6_l_1 as QeFun),
            ((6, 2), compute_s_5_t_6_l_2 as QeFun),
            ((6, 3), compute_s_5_t_6_l_3 as QeFun),
            ((6, 4), compute_s_5_t_6_l_4 as QeFun),
            ((6, 5), compute_s_5_t_6_l_5 as QeFun),
            ((5, 0), compute_s_4_t_5_l_0 as QeFun),
            ((5, 1), compute_s_4_t_5_l_1 as QeFun),
            ((5, 2), compute_s_4_t_5_l_2 as QeFun),
            ((5, 3), compute_s_4_t_5_l_3 as QeFun),
            ((5, 4), compute_s_4_t_5_l_4 as QeFun),
            ((4, 0), compute_s_3_t_4_l_0 as QeFun),
            ((4, 1), compute_s_3_t_4_l_1 as QeFun),
            ((4, 2), compute_s_3_t_4_l_2 as QeFun),
            ((4, 3), compute_s_3_t_4_l_3 as QeFun),
            ((3, 0), compute_s_2_t_3_l_0 as QeFun),
            ((3, 1), compute_s_2_t_3_l_1 as QeFun),
            ((3, 2), compute_s_2_t_3_l_2 as QeFun),
            ((2, 0), compute_s_1_t_2_l_0 as QeFun),
            ((2, 1), compute_s_1_t_2_l_1 as QeFun),
        ]);
}

const SIMPLE_DEN: RealNumInt = 1 << 10;
fn simplify_down(x: RealNumRep) -> RealNumRep {
    let big = x * SIMPLE_DEN;
    let round = big.floor();
    (round / SIMPLE_DEN).into()
}

fn simplify_up(x: RealNumRep) -> RealNumRep {
    let big = x * SIMPLE_DEN;
    let round = big.ceil();
    (round / SIMPLE_DEN).into()
}

fn my_min(x: &IntervalList<RealNumRep>) -> RealNumRep {
    // The + or - EPS is workaround when the interval is open instead of
    // closed. The binary search earlier anyway had precision error. So
    // this EPS should ideally not create issues.

    // This workaround only works if the open point is the inf or sup of the
    // set. Ideally, since we believe that our sets are convex (along each
    // dimension), this should always be the case.

    // if x.is_point() {
    //     return x.min().unwrap();
    // }

    // let ret = x.min().unwrap() + EPS;
    // if let Some(x_max) = x.max() {
    //     if !(ret < x_max) {
    //         return (x.min().unwrap() + x.max().unwrap()) / 2;
    //     }
    // }
    // ret

    // x.min().unwrap()

    // if x.is_point() {
    //     return x.min().unwrap();
    // }
    // let ret = x.min().unwrap();
    // if ret.denom() > &SIMPLE_DEN {
    //     let try_ret = simplify_up(ret);
    //     if x.max().is_none() || try_ret <= x.max().unwrap() {
    //         return try_ret;
    //     }
    // }

    let xmin = match x.min() {
        Bound::Unbounded => unreachable!(),
        Bound::Included(a) => a,
        Bound::Excluded(a) => match x.max() {
            Bound::Unbounded => a + EPS,
            Bound::Included(b) | Bound::Excluded(b) => std::cmp::min(a + EPS, (a + b) / 2),
        },
    };

    // if xmin.denom() > &SIMPLE_DEN {
    let try_ret = simplify_up(xmin);
    if Interval::is_non_empty(Bound::Included(try_ret), x.max()) {
        return try_ret;
    }
    // }
    xmin
}

fn my_max(x: &IntervalList<RealNumRep>) -> RealNumRep {
    // if x.is_point() {
    //     return x.max().unwrap();
    // }
    // let ret = x.max().unwrap() - EPS;
    // if let Some(x_min) = x.min() {
    //     if !(ret > x_min) {
    //         return (x.min().unwrap() + x.max().unwrap()) / 2;
    //     }
    // }
    // ret

    // x.max().unwrap()

    // if x.is_point() {
    //     return x.max().unwrap();
    // }
    // let ret = x.max().unwrap();
    // if ret.denom() > &SIMPLE_DEN {
    //     let try_ret = simplify_down(ret);
    //     if x.min().is_none() || try_ret >= x.min().unwrap() {
    //         return try_ret;
    //     }
    // }

    let xmax = match x.max() {
        Bound::Unbounded => unreachable!(),
        Bound::Included(b) => b,
        Bound::Excluded(b) => match x.min() {
            Bound::Unbounded => b - EPS,
            Bound::Included(a) | Bound::Excluded(a) => std::cmp::max(b - EPS, (a + b) / 2),
        },
    };

    // if xmax.denom() > &SIMPLE_DEN {
    // TODO: Simplify denominator to nearest power of 2 when den < SIMPLE_DEN
    let try_ret = simplify_down(xmax);
    if Interval::is_non_empty(x.min(), Bound::Included(try_ret)) {
        return try_ret;
    }
    // }
    xmax
}

#[derive(Copy, Clone, PartialEq, Eq, Hash, Serialize)]
pub struct LossObservation {
    // cum. bytes detected as lost at t time ago from now.
    pub t: usize,
    #[serde(with = "serde_real")]
    pub l: RealNumRep,
}

impl Debug for LossObservation {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        write!(f, "({}, {:.2})", self.t, self.l.to_f64().unwrap())
    }
}

#[derive(Clone, Debug, PartialEq, Eq, Hash, Serialize)]
pub struct ObservationNC {
    #[serde(with = "serde_real")]
    pub a: RealNumRep, // cum. bytes arrived
    #[serde(with = "serde_real")]
    pub s: RealNumRep, // cum. bytes serviced
    pub lo: Vec<LossObservation>, // This vector should always be non-empty as it describes the rtt, and the loss sequence an rtt ago.
    // new fields for abr
    
}

impl Display for ObservationNC {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "a={:.2}, s={:.2}, lo={:?}",
            self.a.to_f64().unwrap(),
            self.s.to_f64().unwrap(),
            self.lo,
        )
    }
}

impl Observation for ObservationNC {
    fn get_ld(&self) -> RealNumRep {
        assert!(!self.lo.is_empty());
        self.lo.last().unwrap().l
    }

    fn get_qdel(&self) -> usize {
        assert!(!self.lo.is_empty());
        // We are returning the smallest qdel of the packets ACKed.
        self.lo.last().unwrap().t
    }

    fn get_s(&self) -> RealNumRep {
        self.s
    }

    fn get_a(&self) -> RealNumRep {
        self.a
    }

    fn get_lo(&self) -> Vec<(usize, RealNumRep)> {
        self.lo.clone().into_iter().map(|l| (l.t, l.l)).collect()   
    }
}

#[derive(Clone, PartialEq, Debug, Eq, Hash, Serialize)]
pub struct NetworkActionNC {
    #[serde(with = "serde_real")]
    pub s: RealNumRep,
    pub lo: Vec<LossObservation>,
}

impl Display for NetworkActionNC {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        write!(f, "s={:.2}, lo={:?}", self.s.to_f64().unwrap(), self.lo,)
    }
}

impl NetworkAction for NetworkActionNC {}

#[derive(Clone, Debug)]
pub struct NetworkModelNC {
    sim_ideal: Option<bool>,
    sim_c: Option<RealNumRep>,
    sim_b: Option<RealNumRep>,
}

impl NetworkModel for NetworkModelNC {
    type O = ObservationNC;
    type NA = NetworkActionNC;

    fn compute_feasible_network_moves(
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
    ) -> Vec<Self::NA> {
        let paths = self.get_discretized_paths(relevant_history, move_cca);
        let mut ret = Vec::new();
        assert!(HISTORY_SIZE == FEASIBLE_SIZE + 1);
        for path in paths {
            let (c, b) = path;
            //print!("{:?}\n", path);
            let pos = 1 + relevant_history.len() - HISTORY_SIZE;
            let feasible_moves = self.compute_feasible_network_moves_given_path(&relevant_history[pos..], move_cca, c, b);
            ret.extend(feasible_moves);
        }

        ret
    }

    fn compute_min_c_b_sum (
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
    ) -> Option<RealNumRep> {
        let mut min_sum: RealNumRep = LARGEST_BW.into();
        for (c, b) in self.get_discretized_paths(relevant_history, move_cca) {
            min_sum = std::cmp::min(min_sum, c + b);
        }
        Some(std::cmp::max(min_sum, ALPHA.into()))
    }
    

    fn compute_max_allowed_rate(
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
        loss_tolerance_abs: RealNumRep,
        delay_tolerance_frac: RealNumRep,
        measurement_interval: u32,
    ) -> Option<RealNumRep> {
        //unimplemented!("Need to re-implement max allowed rate computation");
        assert!(*move_cca == None);
        let mut max_rate: RealNumRep = LARGEST_BW.into();
        let qdels = self.compute_queue_delay(relevant_history, move_cca);
        for (c, b, _, max_q) in qdels {
            assert!(max_q <= b);
            max_rate = std::cmp::min(max_rate, c + b - max_q + loss_tolerance_abs);
        }
        Some(std::cmp::max(max_rate, ALPHA.into()))

        /* 
        assert!(*move_cca == None);
        let (a, l, s, l0) = NetworkModelNC::get_observation_vectors(&relevant_history[1..], &Some(CCAAction{rate: 0.into()}));
        let tsteps = a.len() as i32;
        let n_losses_observed = l.len() as i32;

        let mut max_rate: RealNumRep = LARGEST_BW.into();
        for (c, b) in self.get_discretized_paths(relevant_history, move_cca) {
            let q_interval: IntervalList<RealNumRep> = if n_losses_observed == tsteps - 1 && a[tsteps as usize - 1] == a[tsteps as usize - 2] {
                IntervalList::interval_point(Bound::Included(0.into()))
            } else {
                COMPUTE_Q_5[&(tsteps, n_losses_observed)](&a, &l, &s, l0, c, b)
            };
            assert!(!q_interval.is_empty());
            assert!(my_max(&q_interval) <= b);
            //max_q = std::cmp::min(my_max(&q_interval), b);
            max_rate = std::cmp::min(max_rate, c + b - my_max(&q_interval) + loss_tolerance_abs);
        }
        Some(std::cmp::max(max_rate, ALPHA.into()))
        */
        // let (a, l, s, l0) = NetworkModelNC::get_observation_vectors(relevant_history, move_cca);
        // assert_eq!(s.len(), a.len());
        // let tsteps = a.len() as i32 + 1;
        // let n_losses_observed = l.len() as i32;

        // assert_eq!(measurement_interval, 1);
        // assert_eq!(delay_tolerance_frac, 3.into());


        // let a_interval =
        //     COMPUTE_A_4_3[&(tsteps, n_losses_observed)](&a, &l, &s, loss_tolerance_abs);
        // let max_rate = my_min(&a_interval) - *a.last().unwrap();
        // info!(
        //     "a_interval={:?}, a.last={:?}, rate={:?}",
        //     a_interval,
        //     a.last().unwrap(),
        //     max_rate
        // );

        // // In the QE query, we wrote an existential quantifier instead of
        // // universal quantifier, as a result, this is the set of bad (high) A_4
        // // values. We have to take complement and then take the max.
        // // Equivalently, we just return the min.

        // // Since this function is supposed to return rate (not sequence
        // // number), we do the subtraction.
        // Some(max_rate)
    }

    fn compute_belief_bounds(
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
    ) -> BeliefBounds {
        let (a, l, s, l0) = NetworkModelNC::get_observation_vectors(relevant_history, move_cca);
        let tsteps = a.len() as i32;
        let n_losses_observed = l.len() as i32;

        let mut c_interval = COMPUTE_C[&(tsteps, n_losses_observed)](&a, &l, &s, l0);
        c_interval = c_interval.intersection(&IntervalList::interval_bounded(
            Bound::Included(SMALLEST_BW.into()),
            Bound::Included(LARGEST_BW.into()),
        ));
        assert!(!c_interval.is_empty());

        // TODO: Adapt N_DISCRETE_POINTS based on how close min_c and max_c are
        // (when both are divided by ALPHA).
        let c_vals = NetworkModelNC::discretize_interval(&c_interval, N_DISCRETE_POINTS);

        let mut min_b: RealNumRep = LARGEST_BW.into();
        let mut max_b: RealNumRep = SMALLEST_BW.into();
        for c_val in c_vals {
            let mut b_interval = COMPUTE_B[&(tsteps, n_losses_observed)](&a, &l, &s, l0, c_val);
            b_interval = b_interval.intersection(&IntervalList::interval_bounded(
                Bound::Included(SMALLEST_BW.into()),
                Bound::Included(LARGEST_BW.into()),
            ));
            assert!(!b_interval.is_empty());
            min_b = std::cmp::min(min_b, my_min(&b_interval));
            max_b = std::cmp::max(max_b, my_max(&b_interval));
        }

        // Deprecated, we can always just have some dummy history in the
        // beginning so that all traces are long enough. TODO: Add smaller T as
        // well (or we can just start with history of all 0s), this actually
        // sounds easier to try out. TODO: Rename to q_last in the hashmap For
        // loss need to keep L_idx
        //let (a, l, s, l0) = NetworkModelNC::get_observation_vectors(&relevant_history[1..], &Some(CCAAction{rate: 0.into()}));
        //let tsteps = a.len() as i32;
        //let n_losses_observed = l.len() as i32;

        //let mut min_q: RealNumRep = RealNumInt::max_value().into();
        //let mut max_q: RealNumRep = 0.into();
        // TODO: better way to do this? ^^^
        // TODO: avoid doing C, B multiple times here...
        //for (c, b) in self.get_discretized_paths(relevant_history, move_cca) {
        //    println!("{:?},{:?}!", c, b);
        //    let q_interval: IntervalList<RealNumRep> = if n_losses_observed == tsteps - 1 && a[tsteps as usize - 1] == a[tsteps as usize - 2] {
        //        IntervalList::interval_point(Bound::Included(0.into()))
        //    } else {
        //        COMPUTE_Q_5[&(tsteps, n_losses_observed)](&a, &l, &s, l0, c, b)
        //    };
            //COMPUTE_Q_5[&(tsteps, n_losses_observed)](&a, &l, &s, l0, c, b);
            //assert!(!q_interval.is_empty());
            //if n_losses_observed == tsteps {
                // In this case, due to our simplification process in QE, we remove
                // the Q=0 constraint.

                // TODO: Verify if this affects other QE outputs semantically.
                //q_interval = IntervalList::interval_point(Bound::Included(0.into()));
            //}
        //    assert!(!q_interval.is_empty());
        //    min_q = std::cmp::min(min_q, my_min(&q_interval));
        //    max_q = std::cmp::max(max_q, my_max(&q_interval));
        //}
        let mut min_q: RealNumRep = RealNumInt::max_value().into();
        let mut max_q: RealNumRep = 0.into();
        let qdels = self.compute_queue_delay(relevant_history, move_cca);
        for (_, _, local_min_q, local_max_q) in qdels {
            min_q = std::cmp::min(min_q, local_min_q);
            max_q = std::cmp::max(max_q,local_max_q);
        }
        // let l_interval = if n_losses_observed as usize == FEASIBLE_SIZE {
        //     IntervalList::interval_bounded(l[4], l[4])
        // } else {
        //     COMPUTE_L_4[&(tsteps, n_losses_observed)](&a, &l, &s)
        // };
        // assert!(!l_interval.is_empty());
        // let a_minus_s = a.last().unwrap() - s.last().unwrap();
        let last_loss = match l.last() {
            Some(lv) => *lv,
            None => l0,
        };
        let inflight = *a.last().unwrap() - *s.last().unwrap() - last_loss;
        // TODO: Better inflight estimate. Due to the knowledge of max C, we
        // may be able to compute losses even before we can detect them. So due
        // to beliefs we may have tighter bound on L.

        BeliefBounds {
            min_c: my_min(&c_interval),
            max_c: my_max(&c_interval),
            min_b,
            max_b,
            min_q,
            max_q,
            // min_if: a_minus_s - my_max(&l_interval),
            // max_if: a_minus_s - my_min(&l_interval),
            min_if: inflight,
            max_if: inflight,
        }
    }

    fn compute_queue_delay(&self, relevant_history: &[Self::O], move_cca: &Option<CCAAction>) -> Vec<(RealNumRep, RealNumRep, RealNumRep, RealNumRep)> {
        let paths = self.get_discretized_paths(relevant_history, move_cca);
        assert!(HISTORY_SIZE == FEASIBLE_SIZE + 1);
        let mut new_history = vec![];
        for i in relevant_history {
            new_history.push(i.clone());
        }
        let dummy = &Some(CCAAction{rate: 0.into()});

        //let mut min_q: RealNumRep = RealNumInt::max_value().into();
        //let mut max_q: RealNumRep = 0.into();
        let mut ret = vec![];
        for path in paths {
            let (c, b) = path;
            //print!("{:?}\n", path);
            let pos = if relevant_history.len() < HISTORY_SIZE {1} else {1 + relevant_history.len() - HISTORY_SIZE};
            let feasible_moves = self.compute_feasible_network_moves_given_path(&relevant_history[pos..], &dummy, c, b);
            for feasible_move in feasible_moves {
                new_history.push(self.compute_observation(new_history.last().unwrap(), &feasible_move, &dummy));
                let (a, l, s, l0) = 
                    NetworkModelNC::get_observation_vectors(&new_history[pos..], &None);
                let tsteps = a.len() as i32;
                let n_losses_observed = l.len() as i32;

                let mut q_interval = COMPUTE_Q[&(tsteps, n_losses_observed)](&a, &l, &s, l0, c, b);
                assert!(!q_interval.is_empty());
                if n_losses_observed == tsteps {
                    // In this case, due to our simplification process in QE, we remove
                    // the Q=0 constraint.

                    // TODO: Verify if this affects other QE outputs semantically.
                    q_interval = IntervalList::interval_point(Bound::Included(0.into()));
                }
                assert!(!q_interval.is_empty());
                ret.push((c,b,my_min(&q_interval), my_max(&q_interval)));
                //min_q = std::cmp::min(min_q, my_min(&q_interval));
                //max_q = std::cmp::max(max_q, my_max(&q_interval));
                new_history.pop();
            }
        }
        ret
    }

    fn get_network_move_sim(
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
        sim_ideal: bool,
    ) -> Option<Self::NA> {
        assert_eq!(self.sim_ideal.unwrap(), sim_ideal);
        assert!(!sim_ideal);
        let sim_c = self.sim_c.unwrap();
        let sim_b = self.sim_b.unwrap();

        let (a, l, s, l0) = NetworkModelNC::get_observation_vectors(relevant_history, move_cca);
        let tsteps = a.len() as i32;
        let n_losses_observed = l.len() as i32;

        // let compute_s_hm: &HashMap<(i32, i32), QeFunSim> = if sim_ideal {
        //     &COMPUTE_SIM_IDEAL_S_4
        // } else {
        //     &COMPUTE_SIM_S_4
        // };
        let compute_s_hm = &COMPUTE_S_5;
        let s_interval = compute_s_hm[&(tsteps, n_losses_observed)](&a, &l, &s, l0, sim_c, sim_b);
        assert!(s_interval.is_contiguous_interval());
        let min_s = my_min(&s_interval);
        let max_s = my_max(&s_interval);

        let mut s_clone = s.clone();
        s_clone.push(max_s);

        // Compute loss observation
        let prior_loss = l.len() as i32;
        let lo_ret = self.get_sim_loss_observation(&a, &l, &s_clone, l0, prior_loss);
        let lo = if lo_ret.is_empty() {
            let time_ago = (tsteps - 1 - n_losses_observed) + 1;
            assert!(time_ago >= 0);
            vec![LossObservation {
                t: time_ago as usize,
                l: *l.last().unwrap(),
            }]
        } else {
            lo_ret
        };
        return Some(NetworkActionNC { s: max_s, lo });
        // Worst-case behavior
        //if lo.last().unwrap().t == 2 && lo.last().unwrap().l == 0.into() {
        if lo.last().unwrap().t == 2  {
            let max_s = my_max(&s_interval);
            let mut s_clone = s.clone();
            s_clone.push(max_s);

            let prior_loss = l.len() as i32;
            let lo_ret = self.get_sim_loss_observation(&a, &l, &s_clone, l0, prior_loss);
            let lo = if lo_ret.is_empty() {
                let time_ago = (tsteps - 1 - n_losses_observed) + 1;
                assert!(time_ago >= 0);
                vec![LossObservation {
                    t: time_ago as usize,
                    l: *l.last().unwrap(),
                }]
            } else {
                lo_ret
            };
            Some(NetworkActionNC { s: max_s, lo })
        } else {
            Some(NetworkActionNC { s: min_s, lo })
        }
    }

    fn setup_network_move_sim(&mut self, sim_ideal: bool, sim_c: RealNumRep, sim_b: RealNumRep) {
        self.sim_ideal = Some(sim_ideal);
        assert!(!sim_ideal);
        self.sim_c = Some(sim_c);
        self.sim_b = Some(sim_b);
    }

    fn init(&mut self) {}

    fn get_initial_history(&self) -> Vec<Self::O> {
        
        let mut ret = Vec::new();
        for t in 0..HISTORY_SIZE {
            // Since I started adding C >= 5, don't need to add history that
            // tries to increase C.

            // let obs = ObservationNC {
            //     a: (10 * (t as i32 + 1)).into(),
            //     s: (10 * t as i32).into(),
            //     lo: vec![LossObservation { t: 1, l: 0.into() }],
            // };
            let obs = ObservationNC {
                a: 0.into(),
                s: 0.into(),
                lo: vec![LossObservation { t: 0, l: 0.into() }],
            };
            ret.push(obs);
        }
        return ret;
        let mut obs = vec![];
        obs.push(
            ObservationNC {
                a: 60.into(),
                s: 42.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 60.into(),
                s: 60.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                }, LossObservation {
                    t: 0,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 80.into(),
                s: 60.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 80.into(),
                s: 80.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                }, LossObservation {
                    t: 0,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 102.into(),
                s: 80.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 102.into(),
                s: 100.into(),
                lo: vec![LossObservation {
                    t: 2,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );

        //return obs;
        let mut obs = vec![];
        obs.push(
            ObservationNC {
                a: 230.into(),
                s: 200.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 230.into(),
                s: 220.into(),
                lo: vec![LossObservation {
                    t: 2,
                    l: 0.into(), // it is in discretization unit of packet
                }, ],

            }
        );
        obs.push(
            ObservationNC {
                a: 230.into(),
                s: 230.into(),
                lo: vec![LossObservation {
                    t: 2,
                    l: 0.into(), // it is in discretization unit of packet
                },LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                },LossObservation {
                    t: 0,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 262.into(),
                s: 230.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 262.into(),
                s: 250.into(),
                lo: vec![LossObservation {
                    t: 2,
                    l: 0.into(), // it is in discretization unit of packet
                }, ],

            }
        );
        obs.push(
            ObservationNC {
                a: 262.into(),
                s: 260.into(),
                lo: vec![LossObservation {
                    t: 2,
                    l: 2.into(), // it is in discretization unit of packet
                },LossObservation {
                    t: 1,
                    l: 2.into(), // it is in discretization unit of packet
                },LossObservation {
                    t: 0,
                    l: 2.into(), // it is in discretization unit of packet
                }],

            }
        );
        return obs;
        let mut obs = vec![];
        obs.push(
            ObservationNC {
                a: 230.into(),
                s: 230.into(),
                lo: vec![LossObservation {
                    t: 2,
                    l: 0.into(), // it is in discretization unit of packet
                },LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                },LossObservation {
                    t: 0,
                    l: 0.into(), // it is in discretization unit of packet
                },],

            }
        );
        obs.push(
            ObservationNC {
                a: 262.into(),
                s: 230.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                },],

            }
        );
        obs.push(
            ObservationNC {
                a: 262.into(),
                s: 250.into(),
                lo: vec![LossObservation {
                    t: 2,
                    l: 0.into(), // it is in discretization unit of packet
                },],

            }
        );
        obs.push(
            ObservationNC {
                a: 262.into(),
                s: 260.into(),
                lo: vec![LossObservation {
                    t: 2,
                    l: 2.into(), // it is in discretization unit of packet
                },LossObservation {
                    t: 1,
                    l: 2.into(), // it is in discretization unit of packet
                },LossObservation {
                    t: 0,
                    l: 2.into(), // it is in discretization unit of packet
                },],

            }
        );
        obs.push(
            ObservationNC {
                a: 294.into(),
                s: 260.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 2.into(), // it is in discretization unit of packet
                },],

            }
        );
        obs.push(
            ObservationNC {
                a: 306.into(),
                s: 280.into(),
                lo: vec![LossObservation {
                    t: 2,
                    l: 2.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs
    }

    fn compute_observation(
        &self,
        last: &Self::O,
        na: &Self::NA,
        move_cca: &Option<CCAAction>,
    ) -> Self::O {
        ObservationNC {
            a: last.a + move_cca.as_ref().unwrap().rate,
            s: na.s,
            lo: na.lo.clone(),
        }
    }
}

impl Default for NetworkModelNC {
    fn default() -> Self {
        Self::new()
    }
}

impl NetworkModelNC {
    pub fn new() -> Self {
        Self {
            sim_ideal: None,
            sim_c: None,
            sim_b: None,
        }
    }

    fn discretize_interval(interval_list: &IntervalList<RealNumRep>, n_points: usize) -> Vec<RealNumRep>{
        //assert!(interval_list.is_contiguous_interval());
        let mut vals = Vec::new();
        // Get the total length
        // Could there be overlapping? 
        let mut length: RealNumRep = 0.into();
        for interval in  interval_list.get_intervals() {
            let singleton: IntervalList<RealNumRep>= IntervalList::new_interval(interval.clone());
            let min_v = my_min(&singleton);
            let max_v = my_max(&singleton);
            length = length + (max_v - min_v);
        }

        for interval in  interval_list.get_intervals() {
            let singleton: IntervalList<RealNumRep>= IntervalList::new_interval(interval.clone());
            let min_v = my_min(&singleton);
            let max_v = my_max(&singleton);
            if min_v == max_v {
                vals.push(min_v);
            } else {
                let n_points: RealNumRep = ((n_points) as i32).into();
                let local_points: RealNumRep =  (n_points * (max_v - min_v) / length).ceil();
                assert!(local_points.is_integer());
                if local_points == 1.into() {
                    vals.push(min_v);
                } else {
                    let den: RealNumRep = local_points - 1;
                    let chunk: RealNumRep = (max_v - min_v) / den;
                    for i in 0..local_points.to_integer() {
                        let this_n_chunks: RealNumRep = (i as i32).into();
                        let this_v: RealNumRep = min_v + chunk * this_n_chunks;
                        vals.push(this_v);
                    }
                }
            }
        }
        vals
    }

    fn get_discretized_paths(
        &self,
        relevant_history: &[ObservationNC],
        move_cca: &Option<CCAAction>,
    ) -> Vec<(RealNumRep, RealNumRep)> {
        //return self.get_discretized_paths_original(&relevant_history[relevant_history.len() - FEASIBLE_SIZE..relevant_history.len()], move_cca);
        let mut c_interval_all= IntervalList::interval_bounded(
            Bound::Included(SMALLEST_BW.into()),
            Bound::Included(LARGEST_BW.into()),
        );
        // 0 corresponding to the real trace 
        assert!(HISTORY_SIZE == FEASIBLE_SIZE + 1);
        if relevant_history.len() < HISTORY_SIZE {
            return self.get_discretized_paths_original(&relevant_history, move_cca)
        }
        for ptr in [0,relevant_history.len() - HISTORY_SIZE] {
            let rh = &relevant_history[ptr .. (ptr + HISTORY_SIZE)];
            // TODO: Can cache this or the whole function
            let (a, l, s, l0) = NetworkModelNC::get_observation_vectors(rh, move_cca);
            // a.len() may not be equal to s.len() since we use this in belief
            // computation as well as network move computation.
            let tsteps = s.len() as i32;
            let n_losses_observed = l.len() as i32;

            let c_interval = COMPUTE_C[&(tsteps, n_losses_observed)](&a, &l, &s, l0);
            c_interval_all = c_interval_all.intersection(&c_interval);
            //assert!(!c_interval_all.is_empty());
            if c_interval_all.is_empty() {
                return self.get_discretized_paths_original(&relevant_history[relevant_history.len() - HISTORY_SIZE..relevant_history.len()], move_cca)
            }
        }
        let c_vals = NetworkModelNC:: discretize_interval(&c_interval_all, N_DISCRETE_POINTS);

        let mut ret = Vec::new();
        for c_val in c_vals.clone() {
            let mut b_interval_all= IntervalList::interval_bounded(
                Bound::Included(SMALLEST_BW.into()),
                Bound::Included(LARGEST_BW.into()),
            );
            for ptr in [0,relevant_history.len() - HISTORY_SIZE] {
                let rh = &relevant_history[ptr .. (ptr + HISTORY_SIZE)];
                let (a, l, s, l0) = NetworkModelNC::get_observation_vectors(rh, move_cca);
                let tsteps = s.len() as i32;
                let n_losses_observed = l.len() as i32;

                let b_interval = COMPUTE_B[&(tsteps, n_losses_observed)](&a, &l, &s, l0, c_val);
                //print!("{:?}\n",b_interval);
                let old_b = b_interval_all.clone();
                b_interval_all = b_interval_all.intersection(&b_interval);
                /*if b_interval_all.is_empty() {
                    print!("{:?}\n", c_val);
                    print!("{:?}\n", c_interval_all);
                    print!("{:?}\n", c_vals.clone());
                    print!("{:?}\n", old_b);
                    print!("{:?}\n", b_interval);
                }*/

                //assert!(!b_interval_all.is_empty());

            }
            if !b_interval_all.is_empty() {
                ret.push((c_val, my_min(&b_interval_all)));
                ret.push((c_val, my_max(&b_interval_all)));
            }
        }
        //assert!(!ret.is_empty());
        if ret.is_empty() {
            return self.get_discretized_paths_original(&relevant_history[relevant_history.len() - HISTORY_SIZE..relevant_history.len()], move_cca)
        }
        ret

    }

    fn get_discretized_paths_original(
        &self,
        relevant_history: &[ObservationNC],
        move_cca: &Option<CCAAction>,
    ) -> Vec<(RealNumRep, RealNumRep)> {
        // TODO: Can cache this or the whole function
        let (a, l, s, l0) = NetworkModelNC::get_observation_vectors(relevant_history, move_cca);
        // a.len() may not be equal to s.len() since we use this in belief
        // computation as well as network move computation.
        let tsteps = s.len() as i32;
        let n_losses_observed = l.len() as i32;

        assert!(FEASIBLE_SIZE >= tsteps as usize);
        let mut c_interval = COMPUTE_C[&(tsteps, n_losses_observed)](&a, &l, &s, l0);
        c_interval = c_interval.intersection(&IntervalList::interval_bounded(
            Bound::Included(0.into()),
            Bound::Included(LARGEST_BW.into()),
        ));
        assert!(!c_interval.is_empty());

        // TODO: Adapt N_DISCRETE_POINTS based on how close min_c and max_c are
        // (when both are divided by ALPHA).
        let c_vals = NetworkModelNC:: discretize_interval(&c_interval, N_DISCRETE_POINTS);

        let mut ret = Vec::new();
        for c_val in c_vals {
            let mut b_interval = COMPUTE_B[&(tsteps, n_losses_observed)](&a, &l, &s, l0, c_val);
            b_interval = b_interval.intersection(&IntervalList::interval_bounded(
                Bound::Included(0.into()),
                Bound::Included(LARGEST_BW.into()),
            ));
            assert!(!b_interval.is_empty());
            ret.push((c_val, my_min(&b_interval)));
            ret.push((c_val, my_max(&b_interval)));
        }  
        ret 
    }


    fn compute_feasible_network_moves_given_path(
        &self,
        relevant_history: &[ObservationNC],
        move_cca: &Option<CCAAction>,
        c: RealNumRep,
        b: RealNumRep,
    ) -> Vec<NetworkActionNC> {
        let (a, l, mut s, l0) = NetworkModelNC::get_observation_vectors(relevant_history, move_cca);
        assert_eq!(s.len(), a.len() - 1);
        let tsteps = a.len() as i32;
        let n_losses_observed = l.len() as i32;

        let s_interval = COMPUTE_S[&(tsteps, n_losses_observed)](&a, &l, &s, l0, c, b);
        assert!(s_interval.is_contiguous_interval());
        let min_s = my_min(&s_interval);
        let max_s = my_max(&s_interval);

        let mut s_vals = Vec::new();
        s_vals.push(min_s);
        if min_s != max_s {
            s_vals.push(max_s);
        }

        // Heuristics, add lowest s such that no delay
        //let extra_discret = a.get(a.len() - 2).unwrap().clone();
        //if extra_discret > min_s && extra_discret < max_s {
        //    s_vals.push(extra_discret);
        //}

        // // TODO: Adapt N_DISCRETE_POINTS based on how close min_s and max_s are
        // // (when both are divided by ALPHA).
        // let mut s_vals = Vec::new();
        // if min_s == max_s {
        //     s_vals.push(min_s);
        // } else {
        //     let den: RealNumRep = ((N_DISCRETE_POINTS - 1) as i32).into();
        //     let chunk: RealNumRep = (max_s - min_s) / den;
        //     for i in 0..N_DISCRETE_POINTS {
        //         let this_n_chunks: RealNumRep = (i as i32).into();
        //         let this_s: RealNumRep = min_s + chunk * this_n_chunks;
        //         s_vals.push(this_s);
        //     }
        // }

        let mut ret = Vec::new();
        for s_val in s_vals {
            s.push(s_val);
            trace!("Pushing S[{}]={}", tsteps, s_val);
            let prior_loss = l.len() as i32;
            let los = NetworkModelNC::compute_loss_observations(&a, &l, &s, l0, c, b, prior_loss);
            for lo in los {
                let this_lo = if lo.is_empty() {
                    let time_ago = (tsteps - 1 - n_losses_observed) + 1;
                    assert!(time_ago >= 0);
                    let last_loss = match l.last() {
                        Some(lv) => *lv,
                        None => l0,
                    };
                    vec![LossObservation {
                        t: time_ago as usize,
                        l: last_loss,
                    }]
                } else {
                    lo
                };
                ret.push(NetworkActionNC {
                    s: s_val,
                    lo: this_lo,
                });
            }
            trace!("Popping S[{}]", tsteps);
            s.pop();
        }

        trace!("Found {} feasible network actions", ret.len());
        ret
    }

    fn is_loss_observed(a: &RealNumRep, l: &RealNumRep, s: &RealNumRep) -> bool {
        // Just check if RTT elapsed.
        *s >= *a - *l
    }

    fn compute_loss_observations(
        a: &[RealNumRep],
        l: &[RealNumRep],
        s: &[RealNumRep],
        l0: RealNumRep,
        c: RealNumRep,
        b: RealNumRep,
        prior_loss: i32,
    ) -> Vec<Vec<LossObservation>> {
        // Get the next loss values
        let tsteps = a.len() as i32;
        assert_eq!(a.len(), s.len());
        let n_losses_observed = l.len() as i32;
        if n_losses_observed == tsteps {
            return vec![vec![]];
        }

        trace!("Computing losses after: L={:?}", l);
        let time_ago = (tsteps - 1 - n_losses_observed) as usize;
        let l_intervals = COMPUTE_L_OBS[&(tsteps, prior_loss, n_losses_observed)](a, l, s, l0, c, b);
        trace!("Got l_intervals={:?}", l_intervals);

        // Check if these losses will be observed
        let l_min = my_min(&l_intervals);
        let l_max = my_max(&l_intervals);

        // For each observed loss get the next loss value
        let mut l_clone = l.to_vec();
        let mut ret = Vec::new();

        let mut process_l = |this_l: &RealNumRep| {
            // trace!("Checking if observed L[{}]={}", n_observed_losses, this_l);
            if NetworkModelNC::is_loss_observed(
                &a[n_losses_observed as usize],
                this_l,
                s.last().unwrap(),
            ) {
                let base_lo = vec![LossObservation {
                    t: time_ago,
                    l: *this_l,
                }];

                trace!("Pushing L[{}]={}", n_losses_observed, this_l);
                l_clone.push(*this_l);
                let recur_lo =
                    NetworkModelNC::compute_loss_observations(a, &l_clone, s, l0, c, b, prior_loss);
                trace!("Popping L[{}]", n_losses_observed);
                l_clone.pop();

                for lo in recur_lo {
                    let mut this_lo = base_lo.clone();
                    this_lo.extend(lo);
                    ret.push(this_lo);
                }
            }
        };

        let l_vec = vec![l_min, l_max];
        for this_l in l_vec.into_iter().unique().collect::<Vec<_>>() {
            process_l(&this_l);
        }

        // If there is no new observation, then this function should return
        // vec![vec![]]. I.e., vector with one empty vector.
        if ret.is_empty() {
            ret.push(Vec::new());
        }

        ret
    }

    fn get_observation_vectors(
        relevant_history: &[ObservationNC],
        move_cca: &Option<CCAAction>,
    ) -> (Vec<RealNumRep>, Vec<RealNumRep>, Vec<RealNumRep>, RealNumRep) {
        let mut a = Vec::new();
        let mut l = Vec::new();
        let mut s = Vec::new();
        let mut l0: RealNumRep = 0.into();  // The last loss obs made.
        for i in 1..relevant_history.len() {
            let obs = &relevant_history[i];
            // Use previous a
            a.push(relevant_history[i-1].a);
            s.push(obs.s);
            for j in 0..obs.lo.len() {
                l0 = std::cmp::max(l0, obs.lo[j].l);
                if obs.lo[j].t > i - 1 {
                    continue;
                }
                let t = i - 1 - obs.lo[j].t;
                assert!(t <= l.len());
                if t == l.len() {
                    l.push(obs.lo[j].l);
                } else {
                    assert_eq!(l[t], obs.lo[j].l);
                }
            }
        }
        if let Some(cca) = move_cca {
            //a.push(*a.last().unwrap() + cca.rate);
            a.push(relevant_history.last().unwrap().a);
        }
        if !l.is_empty() {
            l0 = l.first().unwrap().clone();
        }
        (a, l, s, l0)
    }

    fn get_sim_loss_observation(
        &self,
        a: &[RealNumRep],
        l: &[RealNumRep],
        s: &[RealNumRep],
        l0: RealNumRep,
        prior_loss: i32,
    ) -> Vec<LossObservation> {
        // TODO: Can consider merging this function with NetworkModelNC::compute_loss_observations
        let sim_ideal = self.sim_ideal.unwrap();
        let sim_c = self.sim_c.unwrap();
        let sim_b = self.sim_b.unwrap();

        let tsteps = a.len() as i32;
        assert_eq!(a.len(), s.len());
        let n_losses_observed = l.len() as i32;
        if n_losses_observed == tsteps {
            return vec![];
        }

        // let compute_l_hm: &HashMap<(i32, i32), QeFunSim> = if sim_ideal {
        //     &COMPUTE_SIM_IDEAL_L_OBS
        // } else {
        //     &COMPUTE_SIM_L_OBS
        // };
        let compute_l_hm = &COMPUTE_L_OBS;

        let time_ago = (tsteps - 1 - n_losses_observed) as usize;
        let l_interval =
            compute_l_hm[&(tsteps, prior_loss, n_losses_observed)](a, l, s, l0, sim_c, sim_b);
        let this_l = my_min(&l_interval);

        let mut ret = Vec::new();

        if NetworkModelNC::is_loss_observed(
            &a[n_losses_observed as usize],
            &this_l,
            s.last().unwrap(),
        ) {
            ret.push(LossObservation {
                t: time_ago,
                l: this_l,
            });

            let mut l_clone = l.to_vec();
            l_clone.push(this_l);
            let recur_lo = self.get_sim_loss_observation(a, &l_clone, s, l0, prior_loss);
            ret.extend(recur_lo);
        }

        ret
    }
}

#[cfg(test)]
mod tests {

    use std::sync::Once;

    use env_logger::Env;
    use log::{debug, error, info, trace};

    use super::*;

    // https://stackoverflow.com/a/43093371/5039326. We should init logger only
    // once per binary loading. Since each test calls this, we only want to do
    // it once when running multiple tests at once.
    static INIT: Once = Once::new();

    macro_rules! setup_test {
        ($nm:ident, $rh:ident, $mc:ident) => {
            INIT.call_once(|| {
                env_logger::Builder::from_env(Env::default().default_filter_or("cc=trace")).init();
            });
            let $nm = NetworkModelNC::new();
            let mut $rh = get_dummy_history();
            let mut $mc = None;
        };
    }

    fn get_dummy_history() -> Vec<ObservationNC> {
        let mut ret = Vec::new();
        ret.push(ObservationNC {
            a: 10.into(),
            s: 0.into(),
            lo: vec![LossObservation { t: 0, l: 0.into() }],
        });
        for t in 1..(FEASIBLE_SIZE - 1) {
            ret.push(ObservationNC {
                a: (((t + 1) * 10) as i32).into(),
                s: ((t * 10) as i32).into(),
                lo: vec![LossObservation { t: 1, l: 0.into() }],
            });
        }
        ret[0].lo.push(LossObservation { t: 0, l: 0.into() });
        ret
    }

    #[test]
    fn test_compute_beliefs() {
        setup_test!(nm, rh, mc);

        let bb = nm.compute_belief_bounds(&rh, &mc);
        info!("{:?}", bb);
    }

    // #[test]
    // fn test_compute_max_allowed_rate() {
    //     setup_test!(nm, rh, mc);
    //     rh.pop();

    //     let rate = nm.compute_max_allowed_rate(&rh, &mc, (2 * ALPHA).into(), 3.into(), 1);
    //     info!("rate={:?}", rate);
    // }

    #[test]
    fn test_compute_feasible_network_actions() {
        setup_test!(nm, rh, mc);
        rh.pop();
        mc = Some(CCAAction { rate: 10.into() });

        let nas = nm.compute_feasible_network_moves(&rh, &mc);
        info!("Got nas:");
        for na in nas {
            info!("{:?}", na);
        }
    }

    #[test]
    fn test_compute_loss_observations() {
        INIT.call_once(|| {
            env_logger::Builder::from_env(Env::default().default_filter_or("cc=trace")).init();
        });
        let a: Vec<RealNumRep> = vec![0.into(), 11.into(), 22.into(), 33.into(), 44.into()];
        let s: Vec<RealNumRep> = vec![0.into(), 10.into(), 20.into(), 30.into(), 40.into()];
        let l: Vec<RealNumRep> = vec![0.into(), 1.into(), 2.into()];

        let l_intervals = COMPUTE_L_OBS[&(5, 2, 3)](&a, &l, &s, 0.into(), 20.into(), 10.into());
        trace!("l_intervals={:?}", l_intervals);
    }

    #[test]
    fn dummy_test() {
        let mut c_interval_all: IntervalList<RealNumRep> = IntervalList::interval_bounded(
            Bound::Included(RealNumRep::new_raw(34, 3)),
            Bound::Included(RealNumRep::new_raw(35, 2)),
        );
        let c_vals = NetworkModelNC:: discretize_interval(&c_interval_all, N_DISCRETE_POINTS);
        print!("{:?}", c_vals);
    }

    #[test]
    fn debug_test() {
        let mut obs = vec![];
        obs.push(
            ObservationNC {
                a: 60.into(),
                s: 42.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 60.into(),
                s: 60.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                }, LossObservation {
                    t: 0,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 80.into(),
                s: 60.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 80.into(),
                s: 80.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                }, LossObservation {
                    t: 0,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 102.into(),
                s: 80.into(),
                lo: vec![LossObservation {
                    t: 1,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 102.into(),
                s: 100.into(),
                lo: vec![LossObservation {
                    t: 2,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        let move_cca = CCAAction {rate : 10.into()};

        let network_model = NetworkModelNC::new();
        let len = obs.len();
        let res = network_model.compute_min_c_b_sum(&obs[0..6], &None);

        print!("{:?}", res);
        print!("{:?}", res.unwrap().to_f64());
    }

    #[test]
    fn debug_max_rate() {
        let mut obs = vec![];
        obs.push(
            ObservationNC {
                a: 0.into(),
                s: 0.into(),
                lo: vec![LossObservation {
                    t: 0,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 0.into(),
                s: 0.into(),
                lo: vec![LossObservation {
                    t: 0,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 0.into(),
                s: 0.into(),
                lo: vec![LossObservation {
                    t: 0,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 0.into(),
                s: 0.into(),
                lo: vec![LossObservation {
                    t: 0,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 0.into(),
                s: 0.into(),
                lo: vec![LossObservation {
                    t: 0,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 0.into(),
                s: 0.into(),
                lo: vec![LossObservation {
                    t: 0,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        obs.push(
            ObservationNC {
                a: 12.into(),
                s: 0.into(),
                lo: vec![LossObservation {
                    t: 0,
                    l: 0.into(), // it is in discretization unit of packet
                }],

            }
        );
        //let move_cca = None;

        let network_model = NetworkModelNC::new();
        let len = obs.len();
        let res = network_model.compute_max_allowed_rate(&obs, &None, 0.into(), 0.into(), 0);

        print!("{:?}", res);
        print!("{:?}", res.unwrap().to_f64());
    }
}

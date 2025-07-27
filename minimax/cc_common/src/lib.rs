use core::hash::Hash;
use core::fmt::Debug;
use static_assertions::const_assert;
use std::fmt::{Display, Formatter};
use ds::*;
use serde::Serialize;
use num_traits::ToPrimitive;

// The minimum bandwidth is 5 pkts per rtprop = 600 Kbps.
pub const ALPHA: RealNumInt = 1; // pkt size equivalent in Z3 encoding
pub const SPECULATION_SIZE: usize = 10; // depth of deepen_tree
pub const FEASIBLE_SIZE: usize = 6; // network model trace length
pub const HISTORY_SIZE: usize = FEASIBLE_SIZE; // size of circular buffer in state
pub const NC_HISTORY_SIZE: usize = 5; // amount of history we use in the QE.
const_assert!(HISTORY_SIZE + 1 >= FEASIBLE_SIZE);
pub const N_INTERP: usize = 4; // network actions interpolation

pub const N_THREADS: usize = 8;

// const ERR: RealNumRep = RealNumRep::new_raw(1, 1 << 1);  // For faster binary search
pub const ERR: RealNumRep = RealNumRep::new_raw(1, 1 << 4);
// const LARGEST_BW: u64 = 100_000; // pkts per rtprop. For rtprop of 100ms, this is ~1.2 Gbps.
// const LARGEST_SEQ: u64 = 100_000_000; // 1000 rtprop worth of service at LARGEST_BW. 100 seconds at 100 ms.
pub const LARGEST_BW: RealNumInt = 1000; // pkts per rtprop. For rtprop of 100ms, this is ~120 Mbps.
// pub const LARGEST_BW: RealNumInt = 120; // pkts per rtprop. For rtprop of 100ms, this is ~14.4 Mbps.

// ------------------------------------------------------------------------------------------
// Beliefs and metrics for defining objectives
#[derive(Clone, PartialEq, Debug, Copy, Serialize)]
pub struct BeliefBounds {
    #[serde(with = "serde_real")]
    pub min_c: RealNumRep, // link rate
    #[serde(with = "serde_real")]
    pub max_c: RealNumRep,
    #[serde(with = "serde_real")]
    pub min_b: RealNumRep, // buffer
    #[serde(with = "serde_real")]
    pub max_b: RealNumRep,
    #[serde(skip_serializing)]
    pub min_q: RealNumRep, // bottleneck queue
    #[serde(skip_serializing)]
    pub max_q: RealNumRep,
    #[serde(with = "serde_real")]
    pub min_if: RealNumRep, // inflight
    #[serde(with = "serde_real")]
    pub max_if: RealNumRep,
    // #[serde(skip_serializing)]
    // pub paths: Vec<(RealNumRep, RealNumRep)>
}

impl BeliefBounds {
    pub fn c_add_gap(&self) -> RealNumRep {
        self.max_c - self.min_c
    }

    pub fn b_add_gap(&self) -> RealNumRep {
        self.max_b - self.min_b
    }
}

impl Default for BeliefBounds {
    fn default() -> Self {
        BeliefBounds {
            min_c: 0.into(),
            max_c: LARGEST_BW.into(),
            min_b: 0.into(),
            max_b: LARGEST_BW.into(),
            min_q: 0.into(),
            max_q: LARGEST_BW.into(),
            min_if: 0.into(),
            max_if: LARGEST_BW.into(),
        }
        // TODO: check if we want to use different values for buffer/queue/inflight.
    }
}

impl Display for BeliefBounds {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "c=[{:.2}, {:.2}], b=[{:.2}, {:.2}], q=[{:.2}, {:.2}], if=[{:.2}, {:.2}]",
            self.min_c.to_f64().unwrap(),
            self.max_c.to_f64().unwrap(),
            self.min_b.to_f64().unwrap(),
            self.max_b.to_f64().unwrap(),
            self.min_q.to_f64().unwrap(),
            self.max_q.to_f64().unwrap(),
            self.min_if.to_f64().unwrap(),
            self.max_if.to_f64().unwrap()
        )
    }
}

#[derive(Clone, PartialEq, Debug, Copy, PartialOrd, Serialize)]
pub struct Metrics {
    #[serde(with = "serde_real")]
    pub loss: RealNumRep,
    #[serde(with = "serde_real")]
    pub neg_delivered: RealNumRep,
    #[serde(with = "serde_real")]
    pub qdel: RealNumRep,
    pub shrink_c: bool,
    pub shrink_b: bool,
    pub shrink_maxc_mul: bool,
    pub shrink_maxc_add: bool,
    pub shrink_minc_mul: bool,
    pub shrink_minc_add: bool,
    pub time_to_shrink_c: RealNumInt,
    pub loss_tol: bool,
    pub time_to_shrink_c_l: RealNumInt,
    pub time_to_shrink_c_h: RealNumInt,
    pub time_to_c: RealNumInt,
    #[serde(with = "serde_real")]
    pub minc_minb_sum: RealNumRep,
    pub time_to_c_b: RealNumInt,
    pub time_to_shrink_minc_minb_add: RealNumInt,
    pub shrink_minc_minb: bool,
}

// ------------------------------------------------------------------------------------------
// Actions for CCA and network
#[derive(Clone, PartialEq, Debug, Eq, Hash, Copy, Serialize)]
pub struct CCAAction {
    #[serde(with = "serde_real")]
    pub rate: RealNumRep,
}

pub trait NetworkAction: Clone + Eq + PartialEq + Hash + Display + Debug + Send + Serialize {}

pub trait Observation: Clone + Eq + PartialEq + Hash + Debug + Send + Serialize + Display {
    fn get_s(&self) -> RealNumRep;
    fn get_qdel(&self) -> usize;
    fn get_ld(&self) -> RealNumRep;
    fn get_a(&self) -> RealNumRep;
    fn get_lo(&self) -> Vec<(usize, RealNumRep)>;
}
pub trait NetworkModel: Debug + Sized {
    type O: Observation;
    type NA: NetworkAction;

    fn compute_feasible_network_moves(
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
    ) -> Vec<Self::NA>;

    fn compute_min_c_b_sum (
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
    ) -> Option<RealNumRep>;

    fn compute_max_allowed_rate(
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
        loss_tolerance_abs: RealNumRep,
        delay_tolerance_frac: RealNumRep,
        measurement_interval: u32,
    ) -> Option<RealNumRep>;

    fn compute_belief_bounds(
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
    ) -> BeliefBounds;

    fn get_network_move_sim(
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
        sim_ideal: bool,
    ) -> Option<Self::NA>;

    fn setup_network_move_sim(&mut self, sim_ideal: bool, sim_c: RealNumRep, sim_b: RealNumRep);

    fn init(&mut self);

    fn compute_observation(&self, last: &Self::O, na: &Self::NA, move_cca: &Option<CCAAction>) -> Self::O;

    fn get_initial_history(&self) -> Vec<Self::O>;
}

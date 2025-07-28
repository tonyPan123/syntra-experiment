use itertools::Itertools;
use log::{debug, error, info, trace};
use num_traits::ToPrimitive;

use cc_common::*;
use ds::interval::{Interval, IntervalList};
use ds::*;
use network_model_nc::*;

use std::time::{Duration, Instant};
use std::thread::sleep;

#[repr(C)]
pub struct ExternalLossObservation {
    // cum. bytes detected as lost at t time ago from now.
    pub t: i32,
    pub l: f64,
}


#[repr(C)]
pub struct ExternalObservationNoLossDetection {
    pub a: f64, 
    pub s: f64, 
    pub l: f64, 
}

#[repr(C)]
pub struct ExternalObservation {
    pub a: f64, 
    pub s: f64, 
    pub lo: *const ExternalLossObservation, 
    pub lo_len: i32, // length of ExternalLossObservation array
}

#[repr(C)]
pub struct ExternalBeliefBound {
    pub min_c: f64, 
    pub max_c: f64, 
    pub min_b: f64, 
    pub max_b: f64, 
    pub min_q: f64, 
    pub max_q: f64, 
    pub max_rate: f64,
}

/* 
#[no_mangle]
pub fn compute_belief_bounds_c(obs_raw: *const ExternalObservation, n: i32) -> ExternalBeliefBound {
    assert!(n >= 7);
    //let _ = std::panic::catch_unwind(|| assert!(false));
    //let mut obs = vec![];
    // convert obs_raw used in c++ repo to obs used by rust repo
    let mut pos = obs_raw;
    let mut obs = vec![];
    for _ in 0..n {
        unsafe {
            let mut inner_pos = (*pos).lo;
            let mut loss_vec = vec![];
            for _ in 0..(*pos).lo_len {
                loss_vec.push(
                    LossObservation {
                        t: (*inner_pos).t as usize,
                        l: ((*inner_pos).l as i32).into(), // it is in discretization unit of packet
                    }

                );
                inner_pos = inner_pos.offset(1);
            }
            obs.push(
                ObservationNC {
                    a: ((*pos).a as i32).into(),
                    s: ((*pos).s as i32).into(),
                    lo: loss_vec.clone(),

                }
            );
            pos = pos.offset(1);
        }
    }

    let mut network_model = NetworkModelNC::new();
    network_model.init();

    for i in [7, 6, 5, 4, 3] {
        let obs_ref = &obs[obs.len() - i..];
        let res1 = std::panic::catch_unwind(|| network_model.compute_belief_bounds(obs_ref, &None));
        let res2 = std::panic::catch_unwind(|| network_model.compute_max_allowed_rate(obs_ref, &None, 0.into(), 0.into(), 1));
        match (res1, res2) {
            (Ok(bb), Ok(max_rate)) => 
                {return     
                ExternalBeliefBound {
                    min_c: bb.min_c.to_f64().unwrap(),
                    max_c: bb.max_c.to_f64().unwrap(),
                    min_b: bb.min_b.to_f64().unwrap(),
                    max_b: bb.max_b.to_f64().unwrap(),
                    min_q: bb.min_q.to_f64().unwrap(),
                    max_q: bb.max_q.to_f64().unwrap(),
                    max_rate: max_rate.unwrap().to_f64().unwrap(),
                    //max_rate: 0.into(),
                }},
            (_, _) => {println!("Link rate changes");continue}
        }
    }
    //assert!(false);
    ExternalBeliefBound {
        min_c: SMALLEST_BW.into(),
        max_c: LARGEST_BW.into(),
        min_b: SMALLEST_BW.into(),
        max_b: LARGEST_BW.into(),
        min_q: 0.into(),
        max_q: LARGEST_BW.into(),
        max_rate: 0.into(),
        //max_rate: 0.into(),
    }
}*/

#[no_mangle]
pub extern "C" fn compute_belief_bounds_c(obs_raw: *const ExternalObservation, n: i32, bb_raw: *mut ExternalBeliefBound) {
    assert!(n >= 7);
    //let _ = std::panic::catch_unwind(|| assert!(false));
    //let mut obs = vec![];
    // convert obs_raw used in c++ repo to obs used by rust repo
    let mut pos = obs_raw;
    let mut obs = vec![];
    for i in 0..n {
        unsafe {
            if i != 0 {
                pos = pos.offset(1);
            }
            let mut inner_pos = (*pos).lo;
            let mut loss_vec = vec![];
            for j in 0..(*pos).lo_len {
                if j != 0 {
                    inner_pos = inner_pos.offset(1);
                }
                loss_vec.push(
                    LossObservation {
                        t: (*inner_pos).t as usize,
                        l: ((*inner_pos).l as i32).into(), // it is in discretization unit of packet
                    }

                );
            }
            obs.push(
                ObservationNC {
                    a: ((*pos).a as i32).into(),
                    s: ((*pos).s as i32).into(),
                    lo: loss_vec.clone(),

                }
            );
        }
    }

    let mut network_model = NetworkModelNC::new();
    network_model.init();

    for i in [7, 6, 5, 4, 3] {
        let obs_ref = &obs[obs.len() - i..];
        let res1 = std::panic::catch_unwind(|| network_model.compute_belief_bounds(obs_ref, &None));
        let res2 = std::panic::catch_unwind(|| network_model.compute_max_allowed_rate(obs_ref, &None, 0.into(), 0.into(), 1));
        match (res1, res2) {
            (Ok(bb), Ok(max_rate)) => 
                {
                    unsafe {
                        (*bb_raw).min_c = bb.min_c.to_f64().unwrap();
                        (*bb_raw).max_c = bb.max_c.to_f64().unwrap();
                        (*bb_raw).min_b = bb.min_b.to_f64().unwrap();
                        (*bb_raw).max_b = bb.max_b.to_f64().unwrap();
                        (*bb_raw).min_q = bb.min_q.to_f64().unwrap();
                        (*bb_raw).max_q = bb.max_q.to_f64().unwrap();
                        (*bb_raw).max_rate = max_rate.unwrap().to_f64().unwrap();
                    }   
                    return     
                },
            (_, _) => {println!("Link rate changes");continue}
        }
    }
    //assert!(false);
    /* 
    ExternalBeliefBound {
        min_c: SMALLEST_BW.into(),
        max_c: LARGEST_BW.into(),
        min_b: SMALLEST_BW.into(),
        max_b: LARGEST_BW.into(),
        min_q: 0.into(),
        max_q: LARGEST_BW.into(),
        max_rate: 0.into(),
        //max_rate: 0.into(),
    } */
    unsafe {
        (*bb_raw).min_c = SMALLEST_BW.into();
        (*bb_raw).max_c = LARGEST_BW.into();
        (*bb_raw).min_b = SMALLEST_BW.into();
        (*bb_raw).max_b = LARGEST_BW.into();
        (*bb_raw).min_q = 0.into();
        (*bb_raw).max_q = LARGEST_BW.into();
        (*bb_raw).max_rate = 0.into();
    }   
    return    
}
/* 
#[no_mangle]
pub fn compute_belief_bounds_c_test() -> ExternalBeliefBound {
    let n = 6;
        
    let loss_raw_1 = &ExternalLossObservation { t: 0, l: 0.0} as *const ExternalLossObservation;
    let ob_1 = ExternalObservation {
        a: 0.0, 
        s: 0.0,
        lo: loss_raw_1, 
        lo_len: 1,
    };

    let loss_raw_2 = &ExternalLossObservation { t: 0, l: 0.0} as *const ExternalLossObservation;
    let ob_2 = ExternalObservation {
        a: 0.0, 
        s: 0.0,
        lo: loss_raw_2, 
        lo_len: 1,
    };

    let loss_raw_3 = &ExternalLossObservation { t: 0, l: 0.0} as *const ExternalLossObservation;
    let ob_3 = ExternalObservation {
        a: 0.0, 
        s: 0.0,
        lo: loss_raw_3, 
        lo_len: 1,
    };

    let loss_raw_4 = &ExternalLossObservation { t: 0, l: 0.0} as *const ExternalLossObservation;
    let ob_4 = ExternalObservation {
        a: 0.0, 
        s: 0.0,
        lo: loss_raw_4, 
        lo_len: 1,
    };

    let loss_raw_5 = &ExternalLossObservation { t: 0, l: 0.0} as *const ExternalLossObservation;
    let ob_5 = ExternalObservation {
        a: 0.0, 
        s: 0.0,
        lo: loss_raw_5, 
        lo_len: 1,
    };

    let loss_raw_6 = &ExternalLossObservation { t: 0, l: 0.0} as *const ExternalLossObservation;
    let ob_6 = ExternalObservation {
        a: 0.0, 
        s: 0.0,
        lo: loss_raw_6, 
        lo_len: 1,
    };

    let obs: [ExternalObservation;6] = [ob_1, ob_2, ob_3, ob_4, ob_5, ob_6];
    let obs_raw = &obs as *const ExternalObservation;

    let bb = compute_belief_bounds_c(obs_raw, n);
    bb
} */


#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let now = Instant::now();
        let n = 7;
        
        let loss_raw_1 = &ExternalLossObservation { t: 0, l: 0.0} as *const ExternalLossObservation;
        let ob_1 = ExternalObservation {
            a: 0.0, 
            s: 0.0,
            lo: loss_raw_1, 
            lo_len: 1,
        };

        let loss_raw_2 = &ExternalLossObservation { t: 0, l: 0.0} as *const ExternalLossObservation;
        let ob_2 = ExternalObservation {
            a: 0.0, 
            s: 0.0,
            lo: loss_raw_2, 
            lo_len: 1,
        };

        let loss_raw_3 = &ExternalLossObservation { t: 0, l: 0.0} as *const ExternalLossObservation;
        let ob_3 = ExternalObservation {
            a: 0.0, 
            s: 0.0,
            lo: loss_raw_3, 
            lo_len: 1,
        };

        let loss_raw_4 = &ExternalLossObservation { t: 0, l: 0.0} as *const ExternalLossObservation;
        let ob_4 = ExternalObservation {
            a: 0.0, 
            s: 0.0,
            lo: loss_raw_4, 
            lo_len: 1,
        };

        let loss_raw_5 = &ExternalLossObservation { t: 0, l: 0.0} as *const ExternalLossObservation;
        let ob_5 = ExternalObservation {
            a: 0.0, 
            s: 0.0,
            lo: loss_raw_5, 
            lo_len: 1,
        };

        let loss_raw_6 = &ExternalLossObservation { t: 0, l: 0.0} as *const ExternalLossObservation;
        let ob_6 = ExternalObservation {
            a: 0.0, 
            s: 0.0,
            lo: loss_raw_6, 
            lo_len: 1,
        };

        let loss_raw_7 = &ExternalLossObservation { t: 0, l: 0.0} as *const ExternalLossObservation;
        let ob_7 = ExternalObservation {
            a: 0.0, 
            s: 0.0,
            lo: loss_raw_7, 
            lo_len: 1,
        };

        let obs: [ExternalObservation;7] = [ob_1, ob_2, ob_3, ob_4, ob_5, ob_6, ob_7];
        let obs_raw = &obs as *const ExternalObservation;


        let mut raw_bb = ExternalBeliefBound {
            min_c: 5.into(), 
            max_c: 1000.into(), 
            min_b: 5.into(), 
            max_b: 1000.into(),
            min_q: 5.into(), 
            max_q: 1000.into(),
            max_rate: 0.into(),
        };
        let bb = &mut raw_bb as *mut ExternalBeliefBound;

        compute_belief_bounds_c(obs_raw, n, bb);
        println!("{:?}", raw_bb.min_c);
        println!("{:?}", raw_bb.max_c);
        println!("{:?}", raw_bb.min_b);
        println!("{:?}", raw_bb.max_b);
        println!("{:?}", raw_bb.min_q);
        println!("{:?}", raw_bb.max_q);
        println!("{:?}", raw_bb.max_rate);

        println!("Workload takes: {}", now.elapsed().as_millis());
    }
}

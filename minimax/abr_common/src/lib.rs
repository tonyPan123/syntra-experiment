use core::hash::Hash;
use core::fmt::Debug;
use static_assertions::const_assert;
use std::{error, fmt::{Display, Formatter}};
use ds::*;
use serde::Serialize;
use num_traits::ToPrimitive;

use cc_common::*;


//pub const FRAME_RATE: RealNumInt = 1; // frames decision per rtprop
pub const MAX_FRAME_LATENCY: RealNumInt = 6; // # of rtprop (at least 1 considering the non-determinsim in the environment model)
pub const MIN_FRAME_SIZE: RealNumRep = RealNumRep::new_raw(5, 1); 
//pub const DECODING_ERR: RealNumRep = RealNumRep::new_raw(1, 100);
pub const ENCODING_MAX_FACTOR: RealNumRep = RealNumRep::new_raw(1, 1); 
pub const ENCODING_MIN_FACTOR: RealNumRep = RealNumRep::new_raw(1, 1); 
pub const ENCODING_LIMIT: RealNumInt = 1; // maximum frame that can be parallelly encoded in one step (one rtprop)
pub const ENCODING_DELAY: RealNumInt = 1; // # of rtprop needed to finish the encoding, should be >= 1
pub const FRAME_RATE: RealNumInt = 1; // # of frames per rtprops 

// ------------------------------------------------------------------------------------------
// Actions for ABR 
// No Copy trait? 
#[derive(Clone, PartialEq, Debug, Eq, Hash, Serialize)]
pub struct ABRAction {
    pub cca_action: CCAAction, 
    //#[serde(with = "serde_real")]
    //pub bitrate: RealNumRep,
    //pub num_frame: RealNumInt,
    pub new_frames_encoding: Vec<Frame>, // frames that are new added to be encoded
    pub frames_sent: Vec<FragmentedFrame>,  // frames that were just sent rtprop ago
    pub frames_in_backlog: Vec<FragmentedFrame>, // frames still in backlog  
}

#[derive(Clone, PartialEq, Debug, Eq, Hash, Serialize)]
pub struct EncoderAction {
    pub new_frames_encoded: Vec<Frame>, // Encoder's choice for the frames that are encoded out, subject to ENCODING_MAX(MIN)_FACTOR
}


#[derive(Clone, PartialEq, Debug, Copy, PartialOrd, Serialize)]
pub struct Metrics {
    pub cca_metrics: cc_common::Metrics,

    // Equivalent as frame rate?
    pub latency: bool,
    pub received_frames: RealNumInt,
    #[serde(with = "serde_real")]
    pub qualities: RealNumRep, 
    #[serde(with = "serde_real")]
    pub backlog: RealNumRep,
}


#[derive(Copy, Clone, PartialEq, Eq, Hash, Serialize)]
pub struct Frame {
    pub index: RealNumInt,
    #[serde(with = "serde_real")]
    pub message_length: RealNumRep,
    pub ago: RealNumInt,
}

impl Debug for Frame {
    // Cumulative representation
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        write!(f, "({}, {:.2}, {})", 
            self.index.to_f64().unwrap(), self.message_length.to_f64().unwrap(), self.ago.to_f64().unwrap(),)
    }
}


#[derive(Clone, PartialEq, Eq, Hash, Serialize)]
pub struct FragmentedFrame {
    pub index: RealNumInt,
    #[serde(with = "serde_real")]
    pub message_length: RealNumRep,
    #[serde(with = "serde_real")]
    pub length: RealNumRep,
    // Account for FEC for across frames
    pub encoded_frames: Vec<RealNumInt>,
}

impl Debug for FragmentedFrame {
    // Cumulative representation
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        write!(f, "({}, {:.2}, {:.2}, {:?})", 
            self.index.to_f64().unwrap(), self.message_length.to_f64().unwrap(), self.length.to_f64().unwrap(), self.encoded_frames,)
    }
}



#[derive(Clone, Debug, PartialEq, Eq, Hash, Serialize)]
pub struct ObservationABR<O: cc_common::Observation> {
    pub cca_observation: O, 
    pub frames_sent: Vec<FragmentedFrame>,  // frames that were just sent rtprop ago
    pub frames_in_backlog: Vec<FragmentedFrame>, // frames still in backlog 
    pub frames_used: RealNumInt, // # of frames encoded
    pub frames_received: RealNumInt, 
    pub frames_in_flight: Vec<FragmentedFrame>,
    pub frames_receiving: Vec<FragmentedFrame>,
    pub frames_encoding: Vec<Frame>, 
    pub frames_encoded: Vec<Frame>,
    pub new_frames_encoding: Vec<Frame>,
    pub new_frames_encoded: Vec<Frame>,
}

impl<O: cc_common::Observation> Display for ObservationABR<O> {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            //"{}, encoded_frames = {}, received_frames = {}, inflight_frames = {:?}, receiving_frames = {:?}",
            "{}, encoding_frames = {:?}, encoded_frames = {:?}, used_frames = {}, received_frames = {}",
            self.cca_observation,
            self.frames_encoding, 
            self.frames_encoded, 
            self.frames_used,
            self.frames_received,
            //self.frames_in_flight,
            //self.frames_receiving,
        )
    }
}


impl<O: cc_common::Observation> ObservationABR<O> { 
    // For initialization purpose
    pub fn new(cca_observation: O) -> ObservationABR<O> {
        ObservationABR{cca_observation, frames_sent: vec![], frames_in_backlog: vec![], frames_used: 0, frames_received: 0, 
            frames_in_flight: vec![], frames_receiving: vec![], frames_encoding: vec![], frames_encoded: vec![], new_frames_encoding: vec![],
            new_frames_encoded: vec![], }
    }

    fn frame_vec_plus (x: &Vec<FragmentedFrame>, y: &Vec<FragmentedFrame>) -> Vec<FragmentedFrame> {
        let mut ret = x.clone();
        // At most only one overlap
        if !x.is_empty() && !y.is_empty() && x.last().unwrap().index == y.first().unwrap().index {
            ret.last_mut().unwrap().length += y.first().unwrap().length
        }

        for f in y {
            if x.is_empty() || x.last().unwrap().index < f.index {
                ret.push(f.clone());
            }
        }
        ret
    }

    fn frame_vec_minus (x: &Vec<FragmentedFrame>, y: &Vec<FragmentedFrame>) -> Vec<FragmentedFrame> {
        let mut ret = vec![];
        for (i,f) in x.iter().enumerate() {
            ret.push(FragmentedFrame {length: f.length - y.get(i).unwrap().length, ..f.clone()})
        }
        ret = ret.into_iter().filter(|x| x.length > 0.into()).collect();    
        ret
    }

    pub fn lift(relevant_history: &[ObservationABR<O>], cca_observation: O, move_abr: ABRAction, move_encoder: EncoderAction, bb: BeliefBounds) -> ObservationABR<O> {
        let last_observation = relevant_history.last().unwrap();
        let mut frames_used = last_observation.frames_used;

        for frame in &move_abr.frames_sent {
            if *frame.encoded_frames.last().unwrap() >= frames_used {
                frames_used = frame.index + 1
            }
        }

        for frame in &move_abr.frames_in_backlog {
            if frame.index >= frames_used {
                frames_used = frame.index + 1
            }
        }

        // in-flight frames
        let mut frames_in_flight = last_observation.frames_in_flight.clone();
        for frame in &move_abr.frames_sent {
            if let Some(f) = frames_in_flight.last_mut() {
                if f.index == frame.index {
                    f.length += frame.length
                } else {
                    frames_in_flight.push(frame.clone());
                }
            } else {
                frames_in_flight.push(frame.clone());
            }
        }

        // Convention: the loss happens at the tail
        let mut prev_loss = last_observation.get_ld();
        for (t, loss) in cca_observation.get_lo() {
            if loss > prev_loss {
                // Get the lost frames using the convention
                //let mut focused_frames = if t == 0 { move_abr.frames_sent.clone() } else { relevant_history[relevant_history.len() - t].frames_sent.clone() };
                let mut focused_frames = relevant_history[relevant_history.len() - 1 - t].frames_sent.clone();
                focused_frames.reverse();
                let mut loss_frames: Vec<FragmentedFrame> = vec![];
                let mut leftover = loss - prev_loss;
                for frame in focused_frames {
                    if frame.length >= leftover {
                        loss_frames.push(FragmentedFrame {length: leftover, ..frame.clone()});
                        break
                    } else {
                        loss_frames.push(FragmentedFrame {length: frame.length, ..frame.clone()});
                        leftover -= frame.length
                    } 
                }
                loss_frames.reverse();
                // Correctness check
                let zero: RealNumRep = 0.into();
                assert!(loss_frames.clone().into_iter().fold(zero, |acc, frame| acc + frame.length) == loss - prev_loss);
                // Updated the in-flight
                for lf in &loss_frames {
                    for f in &mut frames_in_flight {
                        if lf.index == f.index {
                            assert!(lf.length <= f.length);
                            f.length -= lf.length
                        } 

                    }
                }
                prev_loss = loss
            }
        }

        // Deque in flight frames and enqueue received frames
        let frames_in_flight_no_deque = frames_in_flight.clone();
        if last_observation.get_s() < cca_observation.get_s() {
            let mut leftover =  cca_observation.get_s() - last_observation.get_s();
            for frame in &mut frames_in_flight {
                if frame.length >= leftover {
                    frame.length -= leftover;
                    leftover = 0.into();
                } else {
                    leftover -= frame.length;
                    frame.length = 0.into(); 
                }
            }
        }    
        let mut frames_receiving: Vec<FragmentedFrame> = ObservationABR::<O>::frame_vec_minus(&frames_in_flight_no_deque, &frames_in_flight);
        frames_receiving = ObservationABR::<O>::frame_vec_plus(&last_observation.frames_receiving, &frames_receiving);

        frames_in_flight = frames_in_flight.into_iter().filter(|x| x.length > 0.into()).collect();    


        // Update received frames metric
        // Error is need here???
        let zero: RealNumInt = 0.into();
        let frames_received = frames_receiving.clone().into_iter()
            .fold(zero, |acc, frame| acc + if frame.length >= frame.message_length {frame.encoded_frames.len() as i32} else {0});

        // Correctness Check
        let zero: RealNumRep = 0.into();
        // total infligh frames = a - s (loss not incorporated yet)
        assert!(cca_observation.get_a() - cca_observation.get_s() - cca_observation.get_ld() == frames_in_flight.clone().into_iter().fold(zero, |acc, frame| acc + frame.length));
        // total sent-out frames = cca_rate
        assert!(move_abr.clone().cca_action.rate == move_abr.clone().frames_sent.clone().into_iter().fold(zero, |acc, frame| acc + frame.length));
        // total frames receiving is served bytes
        /* 
        if !(cca_observation.get_s() == frames_receiving.clone().into_iter().fold(zero, |acc, frame| acc + frame.length)) {
            print!("{:?}\n", move_abr.clone().frames_sent);
            print!("{:?}\n", move_abr.clone().frames_in_backlog);
            print!("{:?}\n", cca_observation.get_s());
            print!("{:?}\n", frames_receiving);
            print!("\n");
            for ob in relevant_history {
                print!("\n");
                print!("{:?}\n", ob.frames_sent);
                print!("{:?}\n", ob.frames_in_backlog);
                print!("{:?}\n", ob.get_a());
                print!("{:?}\n", ob.get_s());
                print!("{:?}\n", ob.get_lo());
                print!("{:?}\n", ob.frames_encoded);
                print!("{:?}\n", ob.frames_encoding);
                print!("\n");
            }
        } */
        assert!(cca_observation.get_s() == frames_receiving.clone().into_iter().fold(zero, |acc, frame| acc + frame.length));
        // Check for zero loss
        /* 
        if !(frames_received == frames_receiving.len() as i32 || frames_received == frames_receiving.len() as i32 - 1) {
            for i in relevant_history {
                print!("\n");
                print!("{:?}\n", i);
                print!("\n");
            }
            print!("\n");
            print!("{:?}", cca_observation);
            print!("\n");
            print!("{:?}\n", frames_receiving);
            print!("{:?}\n", frames_received);
        } */
       /* 
        if frames_received <= frames_receiving.len() as i32 - 2 {
            print!("{:?} \n", frames_receiving);
            for ob in relevant_history {
                print!("");
                print!("{:?}\n", ob.frames_sent);
                print!("{:?}\n", ob.frames_in_backlog);
                print!("{:?}\n", ob.get_a());
                print!("{:?}\n", ob.get_s());
                print!("{:?}\n", ob.get_lo());
                print!("");
            }
            print!("");
            print!("");
            print!("{:?}\n", move_abr.frames_sent);
            print!("{:?}\n", move_abr.frames_in_backlog);
            print!("{:?}\n", cca_observation.get_a());
            print!("{:?}\n", cca_observation.get_s());
            print!("{:?}\n", cca_observation.get_lo());
            print!("{:?}\n", bb);
        }
        assert!(frames_received == frames_receiving.len() as i32 || frames_received == frames_receiving.len() as i32 - 1);
        */

        // Computing Encoding logic
        let mut frames_encoding_buf = last_observation.frames_encoding.clone();
        let new_encoding_frames = &mut move_abr.new_frames_encoding.clone();
        frames_encoding_buf.append(new_encoding_frames);
        for frame in &mut frames_encoding_buf {
            frame.ago -= 1;
        }

        let mut frames_encoding = vec![];
        for frame in frames_encoding_buf {
            if frame.ago == 0 {
                // do nothing, already in encoder move
            } else {
                frames_encoding.push(frame);
            }
        }

        let last_frames_encoded = last_observation.frames_encoded.clone();
        let mut frames_encoded = vec![];
        for frame in &last_frames_encoded {
            if frame.index >= frames_used {
                frames_encoded.push(frame.clone());
            }
        }
        //print!("EZ{:?},\n", frames_encoded);
        for frame in &move_encoder.new_frames_encoded {
            frames_encoded.push(frame.clone());
        }

        //print!("GG{:?}, \n", frames_encoded);

        ObservationABR{cca_observation, frames_sent: move_abr.frames_sent, frames_in_backlog: move_abr.frames_in_backlog, frames_used, 
            frames_received, frames_in_flight, frames_receiving, frames_encoding, frames_encoded, new_frames_encoding: move_abr.new_frames_encoding.clone(), 
            new_frames_encoded: move_encoder.new_frames_encoded.clone(), }
    }



}

impl<O: cc_common::Observation> cc_common::Observation for ObservationABR<O> {
    fn get_ld(&self) -> RealNumRep {
        self.cca_observation.get_ld()
    }

    fn get_qdel(&self) -> usize {
        self.cca_observation.get_qdel()
    }

    fn get_s(&self) -> RealNumRep {
        self.cca_observation.get_s()
    }

    fn get_a(&self) -> RealNumRep {
        self.cca_observation.get_a()
    }

    fn get_lo(&self) -> Vec<(usize, RealNumRep)> {
        self.cca_observation.get_lo()
    }
}

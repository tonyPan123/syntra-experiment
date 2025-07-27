// Computer generated. Do not edit by hand.
#![allow(clippy::all)]
use ds::interval::{Interval, IntervalList};
use ds::*;
use lazy_static::lazy_static;
use std::collections::HashMap;
use std::ops::Bound;

pub type QeFun = fn(
    &[RealNumRep],
    &[RealNumRep],
    &[RealNumRep],
    RealNumRep,
    RealNumRep,
    RealNumRep,
) -> IntervalList<RealNumRep>;
pub type QeFunC =
    fn(&[RealNumRep], &[RealNumRep], &[RealNumRep], RealNumRep) -> IntervalList<RealNumRep>;
pub type QeFunB = fn(
    &[RealNumRep],
    &[RealNumRep],
    &[RealNumRep],
    RealNumRep,
    RealNumRep,
) -> IntervalList<RealNumRep>;
pub type QeFunRate =
    fn(&[RealNumRep], &[RealNumRep], &[RealNumRep], RealNumRep) -> IntervalList<RealNumRep>;
pub type QeFunSim = fn(
    &[RealNumRep],
    &[RealNumRep],
    &[RealNumRep],
    RealNumRep,
    RealNumRep,
) -> IntervalList<RealNumRep>;

lazy_static! {}

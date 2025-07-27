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

pub fn compute_c_t_5_l_0(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 0);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(s[4] >= s[3]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(a[1] >= a[0]);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(a[2] + -a[3] * 1 + s[4] + -s[3] * 1)),
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + s[3])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(-s[0] * 1 / 2 + s[3] * 1 / 2)),
        IntervalList::interval_upper(Bound::Included(
            RealNumRep::new(-5, 1) + -a[2] * 1 + a[1] + -s[0] * 1 + s[3],
        )),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(a[2] + -a[3] * 1 + s[4] + -s[3] * 1)),
        IntervalList::interval_upper(Bound::Included(-s[0] * 1 / 2 + s[3] * 1 / 2)),
    ]);
    ret = ret.intersection(&tmp);
    if !(-a[2] * 1 + -s[4] * 1 + a[3] + s[2] <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(s[4] + -s[2] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(-a[2] * 1 + -s[4] * 1 + a[3] + s[2] <= RealNumRep::new(-5, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(s[4] + -s[2] * 1)),
            IntervalList::interval_lower(Bound::Included(
                RealNumRep::new(5, 1) + a[3] + -a[1] * 1 + -s[4] * 1 + s[2],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(a[2] + -a[1] * 1 + s[1] + -s[3] * 1 <= RealNumRep::new(-5, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[1] * 1 + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(a[3] + -a[1] * 1 + -s[4] * 1 + s[1] <= RealNumRep::new(-5, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(s[4] * 1 / 2 + -s[1] * 1 / 2)),
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 1) + a[2] + s[4] + -a[3] * 1 + -s[1] * 1,
            )),
            IntervalList::interval_lower(Bound::Included(RealNumRep::new(5, 1) + a[2] + -a[1] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(-a[1] * 1 + a[2])),
        IntervalList::interval_upper(Bound::Included(s[4] * 1 / 3 + -s[0] * 1 / 3)),
        IntervalList::interval_upper(Bound::Included(
            RealNumRep::new(-5, 2) + a[2] * 1 / 2 + s[4] * 1 / 2 + -s[0] * 1 / 2 + -a[3] * 1 / 2,
        )),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[0] * 1 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    if !(a[2] + -a[4] * 1 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[0] * 1 / 2 + s[3] * 1 / 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(a[3] + -a[2] * 1)),
        IntervalList::interval_upper(Bound::Included(
            RealNumRep::new(-5, 1) + -a[3] * 1 + a[1] + s[4] + -s[0] * 1,
        )),
        IntervalList::interval_upper(Bound::Excluded(RealNumRep::new(5, 1) + a[2] + -a[1] * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(s[4] * 1 / 3 + -s[0] * 1 / 3)),
        IntervalList::interval_lower(Bound::Included(RealNumRep::new(5, 1) + a[2] + -a[1] * 1)),
        IntervalList::interval_upper(Bound::Included(
            RealNumRep::new(-5, 1) + -a[3] * 1 + a[1] + s[4] + -s[0] * 1,
        )),
        IntervalList::interval_upper(Bound::Included(
            RealNumRep::new(-5, 2) + a[2] * 1 / 2 + s[4] * 1 / 2 + -s[0] * 1 / 2 + -a[3] * 1 / 2,
        )),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(s[4] * 1 / 3 + -s[0] * 1 / 3)),
        IntervalList::interval_lower(Bound::Included(RealNumRep::new(5, 1) + -a[2] * 1 + a[3])),
        IntervalList::interval_upper(Bound::Included(
            RealNumRep::new(-5, 2) + -a[2] * 1 / 2 + a[1] * 1 / 2 + s[4] * 1 / 2 + -s[0] * 1 / 2,
        )),
        IntervalList::interval_upper(Bound::Excluded(-a[3] * 1 + a[1] + s[4] + -s[0] * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(s[4] * 1 / 3 + -s[0] * 1 / 3)),
        IntervalList::interval_lower(Bound::Included(RealNumRep::new(5, 1) + -a[2] * 1 + a[3])),
        IntervalList::interval_upper(Bound::Included(
            RealNumRep::new(-5, 1) + -a[3] * 1 + a[1] + s[4] + -s[0] * 1,
        )),
        IntervalList::interval_upper(Bound::Included(
            RealNumRep::new(-5, 2) + -a[2] * 1 / 2 + a[1] * 1 / 2 + s[4] * 1 / 2 + -s[0] * 1 / 2,
        )),
    ]);
    ret = ret.intersection(&tmp);
    if !(a[3] + -a[1] * 1 + -s[4] * 1 + s[1] <= RealNumRep::new(-5, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 1) + -a[2] * 1 + a[1] + s[4] + -s[1] * 1,
            )),
            IntervalList::interval_upper(Bound::Included(s[4] * 1 / 2 + -s[1] * 1 / 2)),
            IntervalList::interval_lower(Bound::Included(RealNumRep::new(5, 1) + -a[2] * 1 + a[3])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(a[3] + -a[1] * 1 + -s[4] * 1 + s[1] <= RealNumRep::new(-5, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Excluded(RealNumRep::new(5, 1) + -a[2] * 1 + a[3])),
            IntervalList::interval_upper(Bound::Included(a[2] + s[4] + -a[3] * 1 + -s[1] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + s[3])),
        IntervalList::interval_lower(Bound::Included(
            a[2] + a[3] + -a[1] * 1 + -a[4] * 1 + s[4] + s[1] + -s[3] * 2,
        )),
    ]);
    ret = ret.intersection(&tmp);
    if !(a[2] + -a[4] * 1 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[1] * 1 + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(a[2] * 1 / 2
        + a[3] * 1 / 2
        + -a[1] * 1 / 2
        + -a[4] * 1 / 2
        + s[4] * 1 / 2
        + s[0] * 1 / 2
        + -s[3] * 1
        <= RealNumRep::new(0, 1))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[0] * 1 / 2 + s[3] * 1 / 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(RealNumRep::new(5, 1)),
    )]);
    ret = ret.intersection(&tmp);
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(!(-a[0] * 1 + s[4] + L0 >= RealNumRep::new(0, 1)));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[4] * 1 / 2 + -s[3] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[4] * 1 / 3 + -s[2] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[4] * 1 / 5 + -s[0] * 1 / 5),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 / 2 + s[1] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 / 3 + s[2] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 / 2 + s[2] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 / 3 + s[3] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[4] * 1 / 4 + -s[1] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3] * 1 / 2 + -s[2] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 / 4 + s[3] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    ret
}

pub fn compute_b_t_5_l_0(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 0);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[4] >= s[3]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    if !(C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(a[2] + -a[3] * 1 + s[4] + -s[2] * 1)),
            IntervalList::interval_upper(Bound::Included(C + a[1] + -a[3] * 1 + s[4] + -s[2] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 1 + a[2] + -a[3] * 1 + -s[2] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    if !(C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-C * 1 + -a[2] * 1 + a[1] + -s[0] * 1 + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (-C * 1 + a[3] + -a[2] * 1 <= RealNumRep::new(0, 1))
            || (C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1))
    );
    if !((-C * 1 + a[3] + -a[2] * 1 <= RealNumRep::new(0, 1))
        || (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-C * 2 + -a[2] * 1 + a[1] + -s[0] * 1 + s[4]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((-C * 1 + a[3] + -a[2] * 1 <= RealNumRep::new(0, 1))
        || (C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-C * 1 + -a[2] * 1 + a[1] + -s[1] * 1 + s[4]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 3 + a[2] + -a[3] * 1 + -s[0] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    if !((RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
        || (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-C * 2 + a[2] + -a[3] * 1 + -s[0] * 1 + s[4]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 3 + a[2] + -a[3] * 1 + -s[1] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 1 + a[2] + -a[3] * 1 + s[4] + -s[3] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 2 + a[2] + -a[3] * 1 + s[4] + -s[2] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 4 + a[2] + -a[3] * 1 + -s[0] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 2 + a[2] + -a[3] * 1 + -s[1] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 1 + -a[4] * 1 + a[3] + s[4] + -s[3] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 2 + a[2] + -a[4] * 1 + -s[1] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 3 + a[2] + -a[4] * 1 + -s[0] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 1 + a[2] + -a[4] * 1 + s[4] + -s[2] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 1 + -a[2] * 1 + a[1] + -s[2] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 2 + -a[2] * 1 + a[1] + -s[1] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 2 + -a[2] * 1 + a[1] + s[4] + -s[2] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 3 + -a[2] * 1 + a[1] + -s[1] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(a[2] + -a[4] * 1 + s[4] + -s[3] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 4 + -a[2] * 1 + a[1] + -s[0] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 3 + -a[2] * 1 + a[1] + -s[0] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp =
        IntervalList::from_interval_lists(vec![IntervalList::interval_lower(Bound::Included(
            -C * 3 / 2
                + -a[4] * 1 / 2
                + a[3] * 1 / 2
                + a[1] * 1 / 2
                + -a[2] * 1 / 2
                + -s[0] * 1 / 2
                + s[4] * 1 / 2,
        ))]);
    ret = ret.intersection(&tmp);
    let tmp =
        IntervalList::from_interval_lists(vec![IntervalList::interval_lower(Bound::Included(
            -C * 1 / 2
                + -a[4] * 1 / 2
                + a[3] * 1 / 2
                + a[1] * 1 / 2
                + -a[2] * 1 / 2
                + s[4] * 1 / 2
                + -s[2] * 1 / 2,
        ))]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(a[1] + -a[3] * 1 + -s[2] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 1 + a[1] + -a[3] * 1 + -s[1] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    if !(C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(C + -a[2] * 1 + a[1])),
            IntervalList::interval_upper(Bound::Included(a[1] + -a[3] * 1 + -s[1] * 1 + s[4])),
            IntervalList::interval_upper(Bound::Included(C + -a[3] * 1 + a[2])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(C + -a[2] * 1 + a[1])),
            IntervalList::interval_upper(Bound::Included(a[1] + -a[3] * 1 + -s[1] * 1 + s[4])),
            IntervalList::interval_upper(Bound::Included(
                -C * 1 + a[2] + -a[3] * 1 + -s[1] * 1 + s[4],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 1 + a[1] + -a[3] * 1 + s[4] + -s[2] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 2 + a[1] + -a[3] * 1 + -s[1] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 3 + a[1] + -a[3] * 1 + -s[0] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(a[1] + -a[4] * 1 + s[4] + -s[2] * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !(C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(C + -a[2] * 1 + a[1])),
            IntervalList::interval_upper(Bound::Included(C + -a[3] * 1 + a[2])),
            IntervalList::interval_upper(Bound::Included(
                -C * 1 + a[1] + -a[3] * 1 + -s[0] * 1 + s[4],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 4 + -a[4] * 1 + a[3] + -s[0] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 2 + a[1] + -a[3] * 1 + -s[0] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    if !(C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(
                -C * 1 + a[2] + -a[3] * 1 + -s[1] * 1 + s[4],
            )),
            IntervalList::interval_upper(Bound::Included(
                -C * 1 + a[1] + -a[3] * 1 + -s[0] * 1 + s[4],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-C * 1 + a[1] + -a[3] * 1 + -s[0] * 1 + s[4]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((!(-C * 1 + a[3] + -a[2] * 1 <= RealNumRep::new(0, 1)))
        || (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-C * 1 + a[1] + -a[3] * 1 + -s[0] * 1 + s[4]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(C + -a[2] * 1 + a[1])),
        IntervalList::interval_lower(Bound::Included(a[1] + -a[3] * 1 + s[4] + -s[3] * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 2 + a[1] + -a[4] * 1 + -s[0] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 1 + a[1] + -a[4] * 1 + -s[1] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(C + -a[2] * 1 + a[1])),
        IntervalList::interval_lower(Bound::Included(C + a[1] + -a[4] * 1 + s[4] + -s[3] * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 3 + -a[4] * 1 + a[3] + -s[1] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 2 + -a[4] * 1 + a[3] + s[4] + -s[2] * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !(!(-C * 1 + a[3] + -a[2] * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(a[1] + -a[3] * 1 + -s[1] * 1 + s[4])),
            IntervalList::interval_lower(Bound::Excluded(C + -a[2] * 1 + a[1])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp =
        IntervalList::from_interval_lists(vec![IntervalList::interval_lower(Bound::Included(
            -C * 1
                + -a[4] * 1 / 2
                + a[3] * 1 / 2
                + a[1] * 1 / 2
                + -a[2] * 1 / 2
                + -s[1] * 1 / 2
                + s[4] * 1 / 2,
        ))]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 1 + -a[2] * 1 + a[1] + -s[1] * 1 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(
        (-a[2] * 1 + a[3] + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1))
            || (C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1))
    );
    if !(-C * 1 + a[2] + -a[3] * 1 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(C + -a[2] * 1 + a[1]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-C * 2 + -a[2] * 1 + a[1] + -s[0] * 1 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    if !(C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[2] * 1 + a[1] + -s[1] * 1 + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(a[2] + -a[4] * 1 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(C + -a[2] * 1 + a[1]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(RealNumRep::new(5, 1)),
    )]);
    ret = ret.intersection(&tmp);
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(!(-a[0] * 1 + s[4] + L0 >= RealNumRep::new(0, 1)));
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[4] + -s[2] * 1 <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_q_4_t_5_l_0(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 0);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[4] >= s[3]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    let tmp =
        IntervalList::from_interval_lists(vec![IntervalList::interval_upper(Bound::Included(B))]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(B)),
        IntervalList::interval_lower(Bound::Excluded(-C * 1 + a[4] + -a[3] * 1)),
        IntervalList::interval_point(Bound::Included(-C * 1 + a[4] + -a[3] * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_lower(Bound::Excluded(RealNumRep::new(0, 1))),
    ]);
    ret = ret.intersection(&tmp);
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(
        (C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1))
            || (RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
    );
    if !((-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1))
        || (RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1]))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-C * 1 + a[4] + -a[3] * 1 + B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 3 + a[4] + -s[2] * 1 + -a[0] * 1 + s[4],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
            || (-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1))
            || (B + -C * 1 + a[2] + -a[1] * 1 <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(B)),
        IntervalList::interval_lower(Bound::Excluded(-C * 1 + a[4] + -a[3] * 1 + B)),
        IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        IntervalList::interval_lower(Bound::Excluded(-C * 2 + a[4] + -a[2] * 1)),
        IntervalList::interval_point(Bound::Included(-C * 2 + -a[2] * 1 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-C * 1 + a[4] + -a[3] * 1 + B)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(-C * 1 + -B * 1 + -a[4] * 1 + a[3] + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    if !(!(B + -C * 1 + a[2] + -a[1] * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-C * 1 + a[4] + -a[3] * 1)),
            IntervalList::interval_upper(Bound::Included(-C * 2 + a[4] + -a[2] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-C * 1 + a[4] + -a[3] * 1)),
        IntervalList::interval_upper(Bound::Included(-C * 2 + a[4] + B + -a[2] * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(-C * 2 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(-B * 1 + -C * 1 + a[2] + -a[3] * 1 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(-B * 1 + -C * 2 + a[2] + -a[3] * 1 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -B * 1 + -a[4] * 1 + a[3] + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -B * 1 + -a[4] * 1 + a[3] + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    if !((RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
        || (RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3])
        || (RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-C * 1 + a[4] + -a[0] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
        || (RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3])
        || (RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 2 + a[4] + -a[0] * 1 + s[4] + -s[3] * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1))
            || (B + -C * 1 + a[2] + -a[1] * 1 <= RealNumRep::new(0, 1))
            || (C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    if !(B + -C * 1 + a[2] + -a[1] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-C * 1 + a[4] + -a[3] * 1)),
            IntervalList::interval_upper(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (B + -C * 1 + a[2] + -a[1] * 1 <= RealNumRep::new(0, 1))
            || (C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 2 + -a[3] * 1 + -B * 1 + a[2] + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-B * 1 + -C * 3 + a[2] + -a[3] * 1 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + a[4] + -a[2] * 1 + B + -s[4] * 1 + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 1 + -a[3] * 1 + -B * 1 + a[2] + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    if !(-C * 1 + B + -a[1] * 1 + s[2] + L0 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-C * 2 + a[4] + -s[2] * 1 + -L0 * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(-C * 1 + a[1] + -B * 1 + -s[0] * 1 + -L0 * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-C * 4 + a[4] + -s[0] * 1 + -L0 * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-C * 1 + a[4] + -a[3] * 1)),
        IntervalList::interval_upper(Bound::Included(-C * 3 + a[4] + -s[1] * 1 + -L0 * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(a[4] + -s[4] * 1 + -L0 * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-C * 1 + a[4] + -s[3] * 1 + -L0 * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(-C * 5 + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -a[3] * 1 + -B * 1 + a[2] + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
            || (C + a[3] + B + -a[2] * 1 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (!(-C * 1 + a[3] + B + -a[2] * 1 <= RealNumRep::new(0, 1)))
    );
    assert!(
        (C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
            || (RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
            || (B + C * 2 + -a[2] * 1 + a[3] + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(-B * 1 + -C * 4 + a[2] + -a[3] * 1 + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    if !((RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
        || (RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3]))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-C * 2 + a[4] + -a[2] * 1 + B)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 4 + a[4] + -s[1] * 1 + -a[0] * 1 + s[4],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
        || (RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3]))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-C * 2 + a[4] + -a[2] * 1 + B)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 5 + a[4] + -a[0] * 1 + s[4] + -s[0] * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
        || (!(RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 2 + a[4] + -a[2] * 1 + B)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 5 + a[4] + -a[0] * 1 + s[4] + -s[0] * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
        || (RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3])
        || (RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 3 + a[4] + -s[2] * 1 + -a[0] * 1 + s[4],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
        || (!(RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(
                -C * 2 + a[4] + -a[0] * 1 + s[4] + -s[3] * 1,
            )),
            IntervalList::interval_lower(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 2 + a[4] + -a[2] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
        || (!(RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(
                -C * 3 + a[4] + -s[2] * 1 + -a[0] * 1 + s[4],
            )),
            IntervalList::interval_lower(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 2 + a[4] + -a[2] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
        || (!(RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(-C * 1 + a[4] + -a[0] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 2 + a[4] + -a[2] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 2 + -a[2] * 1 + -B * 1 + s[2] + -s[0] * 1 + a[1] <= RealNumRep::new(0, 1));
    if !((!(-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 5 + a[4] + -a[0] * 1 + s[4] + -s[0] * 1,
            )),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-C * 1 + a[4] + -a[0] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 4 + a[4] + -s[1] * 1 + -a[0] * 1 + s[4],
            )),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3])
        || (!(RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 2 + a[4] + -a[0] * 1 + s[4] + -s[3] * 1,
            )),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1))
        || (RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3]))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 5 + a[4] + -a[0] * 1 + s[4] + -s[0] * 1,
            )),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3])
        || (!(RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 4 + a[4] + -s[1] * 1 + -a[0] * 1 + s[4],
            )),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1))
        || (RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3]))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-C * 1 + a[4] + -a[0] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3])
        || (!(RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 3 + a[4] + -s[2] * 1 + -a[0] * 1 + s[4],
            )),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3]))
        || (!(RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(
                -C * 3 + a[4] + -s[2] * 1 + -a[0] * 1 + s[4],
            )),
            IntervalList::interval_lower(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 1 + -a[2] * 1 + -B * 1 + -s[2] * 1 + s[3] + a[1] <= RealNumRep::new(0, 1));
    assert!(-B * 1 + -C * 4 + -a[2] * 1 + a[1] + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -a[2] * 1 + -B * 1 + s[3] + -s[0] * 1 + a[1] <= RealNumRep::new(0, 1));
    if !((-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 5 + a[4] + -a[0] * 1 + s[4] + -s[0] * 1,
            )),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])
        || (!(RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 2 + a[4] + -a[2] * 1 + B)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 4 + a[4] + -s[1] * 1 + -a[0] * 1 + s[4],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3]))
        || (!(RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(
                -C * 2 + a[4] + -a[0] * 1 + s[4] + -s[3] * 1,
            )),
            IntervalList::interval_lower(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (a[2] + B + s[1] + -s[3] * 1 + -a[1] * 1 <= RealNumRep::new(0, 1))
            || (C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(
        (C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1))
            || (a[2] + B + s[1] + -s[3] * 1 + -a[1] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(
        (C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1))
            || (B + -C * 1 + a[2] + -a[1] * 1 <= RealNumRep::new(0, 1))
    );
    if !((-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(
                -C * 2 + a[4] + -a[0] * 1 + s[4] + -s[3] * 1,
            )),
            IntervalList::interval_lower(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(a[4] + -a[2] * 1 + B + -s[4] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + a[4] + -a[2] * 1 + B + s[2] + -s[4] * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(
        (B + C + a[2] + -s[3] * 1 + s[0] + -a[1] * 1 <= RealNumRep::new(0, 1))
            || (!(B + -C * 1 + a[2] + -a[1] * 1 <= RealNumRep::new(0, 1)))
    );
    assert!(-C * 1 + -a[2] * 1 + -B * 1 + -s[1] * 1 + s[2] + a[1] <= RealNumRep::new(0, 1));
    if !((-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(-C * 1 + a[4] + -a[0] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-B * 1 + -C * 2 + -a[2] * 1 + a[1] + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + a[4] + B + s[1] + -s[4] * 1 + -a[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-B * 1 + -C * 3 + -a[2] * 1 + a[1] + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(
        (C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
            || (-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1))
            || (C * 2 + a[2] + B + -s[4] * 1 + s[0] + -a[1] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 2 + -a[2] * 1 + -B * 1 + -s[1] * 1 + s[3] + a[1] <= RealNumRep::new(0, 1));
    if !(!(B + -C * 1 + a[2] + -a[1] * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[2] * 1 + a[4] + -s[4] * 1 + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + -a[4] * 1 + a[3])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Excluded(
                -C * 4 + a[4] + -s[1] * 1 + -a[0] * 1 + s[4],
            )),
            IntervalList::interval_lower(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-B * 1 + -C * 2 + -a[3] * 1 + -s[1] * 1 + s[4] + a[1] <= RealNumRep::new(0, 1));
    assert!(-B * 1 + -C * 1 + -a[3] * 1 + -s[2] * 1 + s[4] + a[1] <= RealNumRep::new(0, 1));
    assert!(
        (!(B + -C * 1 + a[2] + -a[1] * 1 <= RealNumRep::new(0, 1)))
            || (-C * 1 + a[2] + -a[3] * 1 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + a[4] + B + -s[4] * 1 + s[0] + -a[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + a[4] + -a[2] * 1 + B + s[1] + -s[4] * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(
        (a[3] + s[2] + -s[4] * 1 + -a[2] * 1 <= RealNumRep::new(0, 1))
            || (C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(
        (a[3] + B + -a[2] * 1 + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (B + C + a[3] + -s[4] * 1 + s[0] + -a[1] * 1 <= RealNumRep::new(0, 1))
            || (C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 2 + -B * 1 + -a[4] * 1 + a[3] + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(
        (a[3] + B + -a[2] * 1 + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (a[3] + B + s[1] + -s[4] * 1 + -a[1] * 1 <= RealNumRep::new(0, 1))
            || (C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-B * 1 + -C * 3 + -a[3] * 1 + s[4] + -s[0] * 1 + a[1] <= RealNumRep::new(0, 1));
    assert!(
        (a[3] + B + -a[2] * 1 + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (-C * 1 + a[3] + -a[1] * 1 + s[2] + -s[4] * 1 + B <= RealNumRep::new(0, 1))
    );
    assert!(-a[3] * 1 + a[1] + -s[2] * 1 + s[3] + -B * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 1 + -a[3] * 1 + a[1] + -s[1] * 1 + s[3] + -B * 1 <= RealNumRep::new(0, 1));
    assert!(
        (-B * 1 + a[1] + -a[3] * 1 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (B + -C * 1 + a[2] + -a[1] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(
        (a[3] + B + s[1] + -s[4] * 1 + -a[1] * 1 <= RealNumRep::new(0, 1))
            || (!(B + -C * 1 + a[2] + -a[1] * 1 <= RealNumRep::new(0, 1)))
            || (C + a[2] + B + s[1] + -s[4] * 1 + -a[1] * 1 <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + a[4] + B * 2 + -a[3] * 1 + -s[4] * 1 + s[0] + a[2] + -a[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 2 + -a[3] * 1 + a[1] + s[3] + -s[0] * 1 + -B * 1 <= RealNumRep::new(0, 1));
    assert!(
        (a[3] + B + s[1] + -s[4] * 1 + -a[1] * 1 <= RealNumRep::new(0, 1))
            || (C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (-C * 1 + a[3] + B + -a[2] * 1 <= RealNumRep::new(0, 1))
            || (!(-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1)))
    );
    assert!(
        (a[3] + B + s[1] + -s[4] * 1 + -a[1] * 1 <= RealNumRep::new(0, 1))
            || (C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (!(-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1)))
            || (!(RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1]))
    );
    assert!(
        (C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
            || (B + C + a[3] + -s[4] * 1 + s[0] + -a[1] * 1 <= RealNumRep::new(0, 1))
            || (-C * 1 + a[3] + B + -a[2] * 1 <= RealNumRep::new(0, 1))
            || (!(-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1)))
    );
    assert!(
        (C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
            || (B + C + a[3] + -s[4] * 1 + s[0] + -a[1] * 1 <= RealNumRep::new(0, 1))
            || (!(-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1)))
            || (!(RealNumRep::new(0, 1) <= C + -a[2] * 1 + a[1]))
    );
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(-a[2] * 1 + a[4] + -s[4] * 1 + s[3])),
        IntervalList::interval_upper(Bound::Included(
            -C * 1 + a[4] + -a[1] * 1 + -s[4] * 1 + s[3] + B,
        )),
    ]);
    ret = ret.intersection(&tmp);
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(C + -s[2] * 1 + s[0] <= RealNumRep::new(0, 1));
    assert!(!(-a[0] * 1 + s[4] + L0 >= RealNumRep::new(0, 1)));
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + a[4] + B * 2 + -a[3] * 1 + s[1] + -s[4] * 1 + a[2] + -a[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + a[4] + B * 2 + -a[3] * 1 + s[2] + -s[4] * 1 + a[2] + -a[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(a[4] + B + s[2] + -s[4] * 1 + -a[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 3 + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_s_4_t_5_l_0(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 0);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(
        (a[2] + B + -a[1] * 1 + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 2 + -a[2] * 1 + a[1] + -B * 1 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 4 + a[2] + -a[1] * 1 + B + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + a[2] + -a[1] * 1 + B + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + a[2] + -a[1] * 1 + B + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(B + C * 2 + a[4] + -a[3] * 1 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    if !(-C * 1 + -a[1] * 1 + a[2] <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-a[2] * 1 + B + a[3] + s[2])),
            IntervalList::interval_lower(Bound::Included(C + s[2])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 2 + -a[2] * 1 + a[1] + -B * 1 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(
        (C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (C + a[2] + -a[1] * 1 + B + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 3 + -a[2] * 1 + a[1] + -B * 1 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + -a[2] * 1 + B + a[4] + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 3 + a[2] + -B * 1 + -a[3] * 1 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(B + C + a[4] + -a[3] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 1 + -a[2] * 1 + a[1] + -B * 1 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    if !(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(C + a[2] + B + -a[1] * 1 + s[1])),
            IntervalList::interval_lower(Bound::Included(C * 2 + s[1])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 4 + -a[2] * 1 + B + a[3] + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    if !((-C * 1 + -a[1] * 1 + a[2] <= RealNumRep::new(0, 1))
        || (!(-C * 1 + -a[2] * 1 + B + a[3] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(C + -a[2] * 1 + B + a[3] + s[1]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + -a[2] * 1 + B + a[3] + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + -a[2] * 1 + B + a[3] + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    if !((-C * 1 + -a[1] * 1 + a[2] <= RealNumRep::new(0, 1))
        || (!(-C * 1 + -a[2] * 1 + B + a[3] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(C * 2 + -a[2] * 1 + B + a[3] + s[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 1 + a[2] + -B * 1 + -a[3] * 1 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + a[2] + -B * 1 + -a[3] * 1 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + -a[2] * 1 + B + a[3] + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 1 + -a[2] * 1 + a[1] + -B * 1 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(a[1] + -B * 1 + -a[3] * 1 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + a[3] + B + -a[1] * 1 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 4 + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + -a[2] * 1 + B + a[4] + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    if !(RealNumRep::new(0, 1) <= C + a[1] + -B * 1 + -a[0] * 1 + s[3] + -s[2] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(a[3] + -a[0] * 1 + s[3])),
            IntervalList::interval_lower(Bound::Included(C + s[2])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[1] + -B * 1 + -a[2] * 1)
        || (!(C + -a[3] * 1 + a[2] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(C * 3 + s[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(B + C * 4 + a[4] + -a[3] * 1 + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(B + C * 3 + a[4] + -a[3] * 1 + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 2 + a[1] + -B * 1 + -a[3] * 1 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(-a[2] * 1 + a[3] + s[2])),
        IntervalList::interval_lower(Bound::Included(C + s[2])),
    ]);
    ret = ret.intersection(&tmp);
    if !(!(RealNumRep::new(0, 1) <= C + a[1] + -B * 1 + -a[2] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[3] + B + -a[1] * 1 + s[1])),
            IntervalList::interval_lower(Bound::Included(C + s[2])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(RealNumRep::new(0, 1) <= C + a[1] + -B * 1 + -a[2] * 1))
        || (!(-C * 1 + -a[2] * 1 + B + a[3] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(a[3] + B + -a[1] * 1 + s[1]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(!(C + -a[3] * 1 + a[2] <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(C + a[2] + B + -a[1] * 1 + s[1])),
            IntervalList::interval_lower(Bound::Included(C * 2 + s[1])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(RealNumRep::new(0, 1) <= C + a[1] + -B * 1 + -a[2] * 1))
        || (!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(a[3] + B + -a[1] * 1 + s[1]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((-C * 1 + -a[2] * 1 + B + a[3] <= RealNumRep::new(0, 1))
        || (C + -a[3] * 1 + a[2] <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(a[3] + -a[0] * 1 + s[3])),
            IntervalList::interval_lower(Bound::Included(a[3] + B + -a[1] * 1 + s[1])),
            IntervalList::interval_lower(Bound::Included(C * 2 + s[1])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((-C * 1 + -a[2] * 1 + B + a[3] <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -B * 1 + -a[0] * 1 + s[3] + -s[2] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(C + s[2])),
            IntervalList::interval_lower(Bound::Included(-C * 1 + -a[1] * 1 + B + a[3] + s[2])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + a[3] + -L0 * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !(!(RealNumRep::new(0, 1) <= C + a[1] + -B * 1 + -a[2] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(C + -a[2] * 1 + a[3] + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + a[3] + B + -a[1] * 1 + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    if !(!(RealNumRep::new(0, 1) <= C + a[1] + -B * 1 + -a[2] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(C + s[2])),
            IntervalList::interval_lower(Bound::Included(C + a[3] + B + -a[1] * 1 + s[0])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(RealNumRep::new(0, 1) <= C + a[1] + -B * 1 + -a[2] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(C * 2 + a[2] + -a[1] * 1 + B + s[0])),
            IntervalList::interval_lower(Bound::Included(C + a[3] + B + -a[1] * 1 + s[0])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + a[3] + B + -a[1] * 1 + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-a[1] * 1 + B + a[4] + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-a[2] * 1 + B + a[4] + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(B * 2 + C + a[4] + -a[3] * 1 + -a[1] * 1 + a[2] + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    if !((!(-C * 1 + -a[1] * 1 + a[2] <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C + -B * 1 + a[1] + -a[0] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(C + s[2])),
            IntervalList::interval_lower(Bound::Included(-C * 1 + -a[1] * 1 + B + a[3] + s[2])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + -a[1] * 1 + B + a[4] + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + -a[1] * 1 + B + a[4] + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    if !(RealNumRep::new(0, 1) <= C + a[1] + -B * 1 + -a[2] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[1] * 1 + B + a[3] + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(a[4] + -L0 * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !((-C * 1 + -a[2] * 1 + B + a[3] <= RealNumRep::new(0, 1))
        || (C + -a[3] * 1 + a[2] <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(a[3] + -a[0] * 1 + s[3])),
            IntervalList::interval_lower(Bound::Included(C * 3 + s[0])),
            IntervalList::interval_lower(Bound::Included(C + a[3] + B + -a[1] * 1 + s[0])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(-C * 1 + -a[1] * 1 + a[2] <= RealNumRep::new(0, 1)))
        || (RealNumRep::new(0, 1) <= C + a[1] + -B * 1 + -a[2] * 1)
        || (!(RealNumRep::new(0, 1) <= C + -B * 1 + a[1] + -a[0] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(C * 3 + s[0])),
            IntervalList::interval_lower(Bound::Included(C + a[3] + B + -a[1] * 1 + s[0])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(-C * 1 + -a[1] * 1 + a[2] <= RealNumRep::new(0, 1)))
        || (C + -a[3] * 1 + a[2] <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + -B * 1 + a[1] + -a[0] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[3] + B + -a[1] * 1 + s[1])),
            IntervalList::interval_lower(Bound::Included(C * 2 + s[1])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(B * 2 + C * 3 + a[4] + -a[3] * 1 + -a[1] * 1 + a[2] + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(B * 2 + C * 2 + a[4] + -a[3] * 1 + -a[1] * 1 + a[2] + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    if !(!(RealNumRep::new(0, 1) <= C + a[1] + -B * 1 + -a[2] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[2] * 1 + a[4] + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + -a[2] * 1 + B + a[4] + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    if !(RealNumRep::new(0, 1) <= C + a[1] + -B * 1 + -a[2] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-C * 1 + -a[1] * 1 + B + a[4] + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(!(-a[0] * 1 + s[3] + L0 >= RealNumRep::new(0, 1)));
    assert!(-C * 2 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 5 + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 1 + a[1] + -B * 1 + -a[3] * 1 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_c_t_5_l_1(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 1);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[0] + -l[0] * 1 <= s[4]);
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(s[4] >= s[3]);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 / 2 + s[1] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] * 1 / 4 + s[4] * 1 / 4 + -a[0] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 / 4 + s[4] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 / 3 + s[2] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 / 4 + s[3] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 / 5 + s[4] * 1 / 5),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] * 1 / 3 + s[3] * 1 / 3 + -a[0] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 / 3 + s[3] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[2] * 1 / 2 + -s[1] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[0] * 1 / 3 + s[4] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(RealNumRep::new(5, 1)),
    )]);
    ret = ret.intersection(&tmp);
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[1] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[1] * 1 / 2 + s[4] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] + s[1] + -a[0] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 / 2 + s[4] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 / 2 + s[3] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 / 3 + s[4] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[2] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] * 1 / 2 + s[2] * 1 / 2 + -a[0] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[0] * 1 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[0] * 1 / 2 + s[3] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    assert!(!(l[0] + -a[1] * 1 + s[4] >= RealNumRep::new(0, 1)));
    ret
}

pub fn compute_b_t_5_l_1(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 1);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[0] + -l[0] * 1 <= s[4]);
    assert!(a[4] >= a[3]);
    assert!(a[2] >= a[1]);
    assert!(s[4] >= s[3]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(a[3] >= a[2]);
    assert!(s[3] >= s[2]);
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(-s[2] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(!(l[0] + -a[1] * 1 + s[4] >= RealNumRep::new(0, 1)));
    assert!(C + -s[2] * 1 + s[0] <= RealNumRep::new(0, 1));
    assert!(C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 1 + -a[0] * 1 + l[0] + s[1] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 2 + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 4 + s[4] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[4] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 3 + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 5 + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1));
    assert!(C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(-C * 1 + s[4] + -s[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(-C * 1 + s[4] + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(-C * 2 + s[4] + -s[0] * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(C * 2 + -s[4] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(C + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(C + s[4] + -s[3] * 1),
    )]);
    ret = ret.intersection(&tmp);
    ret
}

pub fn compute_q_4_t_5_l_1(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 1);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[0] + -l[0] * 1 <= s[4]);
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(s[4] >= s[3]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(!(a[1] + -l[0] * 1 <= s[4]));
    let tmp =
        IntervalList::from_interval_lists(vec![IntervalList::interval_upper(Bound::Included(B))]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-a[3] * 1 + a[4] + -C * 1 + B),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-a[2] * 1 + a[4] + -C * 2 + B),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + -l[0] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(-a[1] * 1 + a[4] + -C * 3 + B)),
        IntervalList::interval_upper(Bound::Included(RealNumRep::new(0, 1))),
    ]);
    ret = ret.intersection(&tmp);
    assert!(!(RealNumRep::new(0, 1) <= -B * 1 + l[0] + -C * 1 + s[4] + -a[0] * 1));
    assert!(!(RealNumRep::new(0, 1) <= -B * 1 + -s[2] * 1 + s[4]));
    if !((RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1)
        || (-B * 1 + -C * 1 + a[1] + -l[0] * 1 + -s[1] * 1 <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(!(RealNumRep::new(0, 1) <= -B * 1 + -C * 1 + s[4] + -s[1] * 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-s[0] * 1 + a[4] + -l[0] * 1 + -C * 4)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-s[2] * 1 + a[4] + -l[0] * 1 + -C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    if !((RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1)
        || (RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)
        || (RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(a[4] + -C * 4 + -a[0] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1)
        || (RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)
        || (!(-B * 1 + -C * 3 + -l[0] * 1 + -s[0] * 1 + a[2] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[0] * 1 + a[4] + -l[0] * 1 + -C * 5)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1)
        || (RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)
        || (RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-s[1] * 1 + a[4] + -l[0] * 1 + -C * 4)),
            IntervalList::interval_point(Bound::Included(B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(l[0] + -C * 4 + s[4] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[4] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    if !((RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)
        || (-B * 1 + C + -l[0] * 1 + -s[4] * 1 + a[2] <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-C * 2 + a[4] + -a[2] * 1 + B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-s[3] * 1 + a[4] + -l[0] * 1 + -C * 2)),
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-C * 2 + a[4] + -a[2] * 1 + B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)
        || (!(RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1))
        || (!(-B * 1 + -C * 2 + -a[0] * 1 + a[2] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[4] + -C * 4 + -a[0] * 1)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)
        || (-B * 1 + -C * 2 + -a[0] * 1 + a[2] <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-C * 2 + a[4] + -a[2] * 1 + B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[2] * 1 + a[4] + -l[0] * 1 + -C * 3)),
            IntervalList::interval_point(Bound::Included(-C * 2 + a[4] + -a[2] * 1 + B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)
        || (-B * 1 + -C * 3 + -l[0] * 1 + -s[0] * 1 + a[2] <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-C * 2 + a[4] + -a[2] * 1 + B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + a[4] + -l[0] * 1 + -C * 3)),
    ]);
    ret = ret.intersection(&tmp);
    if !((-B * 1 + -C * 1 + a[1] + -a[0] * 1 <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + a[4] + -C * 3 + B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
            IntervalList::interval_point(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)
        || (RealNumRep::new(0, 1) <= C * 3 + a[1] + -a[4] * 1))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(a[4] + -C * 4 + -a[0] * 1)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((-B * 1 + a[1] + -l[0] * 1 + -s[2] * 1 <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + a[4] + -C * 3 + B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
            IntervalList::interval_point(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)
        || (RealNumRep::new(0, 1) <= C * 2 + a[1] + -a[3] * 1))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-s[3] * 1 + a[4] + -l[0] * 1 + -C * 2)),
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((-B * 1 + C + a[1] + -l[0] * 1 + -s[3] * 1 <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + a[4] + -C * 3 + B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
            IntervalList::interval_point(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)
        || (-B * 1 + -C * 2 + -l[0] * 1 + -s[1] * 1 + a[2] <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-C * 2 + a[4] + -a[2] * 1 + B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)
        || (!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1))
        || (!(RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1))
        || (!(-B * 1 + -C * 2 + -l[0] * 1 + -s[1] * 1 + a[2] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[1] * 1 + a[4] + -l[0] * 1 + -C * 4),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(B)),
        IntervalList::interval_lower(Bound::Excluded(-a[3] * 1 + a[4] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + a[4] + -l[0] * 1 + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    if !((RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)
        || (!(-B * 1 + C * 2 + a[1] + -l[0] * 1 + -s[4] * 1 <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[4] + -l[0] * 1 + -C * 1)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)
        || (!(-B * 1 + -C * 1 + a[1] + -a[0] * 1 <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C * 3 + a[1] + -a[4] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[4] + -C * 4 + -a[0] * 1)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[2] * 1 + a[4] + -l[0] * 1 + -C * 3)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
            IntervalList::interval_point(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-s[1] * 1 + a[4] + -l[0] * 1 + -C * 4)),
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
            IntervalList::interval_point(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1)
        || (!(-B * 1 + C * 2 + a[1] + -l[0] * 1 + -s[4] * 1 <= RealNumRep::new(0, 1)))
        || (!(-B * 1 + C + -l[0] * 1 + -s[4] * 1 + a[2] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[4] + -l[0] * 1 + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1)
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[2] * 1 + a[4] + -l[0] * 1 + -C * 3)),
            IntervalList::interval_point(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1)
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-s[3] * 1 + a[4] + -l[0] * 1 + -C * 2)),
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1)
        || (!(-B * 1 + -C * 1 + a[1] + -a[0] * 1 <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1))
        || (!(RealNumRep::new(0, 1) <= C * 3 + a[1] + -a[4] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(a[4] + -C * 4 + -a[0] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1)
        || (C + a[1] + -a[2] * 1 <= RealNumRep::new(0, 1))
        || (RealNumRep::new(0, 1) <= C * 3 + a[1] + -a[4] * 1))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(a[4] + -C * 4 + -a[0] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1)
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1))
        || (RealNumRep::new(0, 1) <= C * 3 + a[1] + -a[4] * 1))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(a[4] + -C * 4 + -a[0] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)
        || (!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1))
        || (!(RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1))
        || (!(-B * 1 + C + -l[0] * 1 + -s[4] * 1 + a[2] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[4] + -l[0] * 1 + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1)
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1))
        || (RealNumRep::new(0, 1) <= C * 3 + a[1] + -a[4] * 1))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[0] * 1 + a[4] + -l[0] * 1 + -C * 5)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1)
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1))
        || (RealNumRep::new(0, 1) <= C * 3 + a[1] + -a[4] * 1))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-s[1] * 1 + a[4] + -l[0] * 1 + -C * 4)),
            IntervalList::interval_point(Bound::Included(B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1)
        || (C + a[1] + -a[2] * 1 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[0] * 1 + a[4] + -l[0] * 1 + -C * 5)),
            IntervalList::interval_point(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1))
        || (!(-B * 1 + C + a[1] + -l[0] * 1 + -s[3] * 1 <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1))
        || (!(RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[3] * 1 + a[4] + -l[0] * 1 + -C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1))
        || (!(-B * 1 + -C * 1 + a[1] + -a[0] * 1 <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1))
        || (!(-B * 1 + -C * 2 + -a[0] * 1 + a[2] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(a[4] + -C * 4 + -a[0] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((!(-B * 1 + a[1] + -l[0] * 1 + -s[2] * 1 <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1))
        || (!(RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1))
        || (!(-B * 1 + -C * 1 + -l[0] * 1 + -s[2] * 1 + a[2] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[2] * 1 + a[4] + -l[0] * 1 + -C * 3),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1))
        || (-B * 1 + -C * 1 + a[1] + -l[0] * 1 + -s[1] * 1 <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1))
        || (!(RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + a[4] + -C * 3 + B)),
            IntervalList::interval_point(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1))
        || (!(-B * 1 + -C * 1 + a[1] + -l[0] * 1 + -s[1] * 1 <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C * 3 + a[1] + -a[4] * 1))
        || (!(-B * 1 + -C * 2 + -l[0] * 1 + -s[1] * 1 + a[2] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[1] * 1 + a[4] + -l[0] * 1 + -C * 4),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((!(-B * 1 + C * 2 + a[1] + -l[0] * 1 + -s[4] * 1 <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C * 2 + a[1] + -a[3] * 1))
        || (!(RealNumRep::new(0, 1) <= C * 3 + a[1] + -a[4] * 1))
        || (!(-B * 1 + C + -l[0] * 1 + -s[4] * 1 + a[2] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[4] + -l[0] * 1 + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((-B * 1 + C * 2 + a[1] + -l[0] * 1 + -s[4] * 1 <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + a[4] + -C * 3 + B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
            IntervalList::interval_point(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1))
        || (!(-B * 1 + -C * 2 + a[1] + -l[0] * 1 + -s[0] * 1 <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C * 2 + a[2] + -a[4] * 1))
        || (!(-B * 1 + -C * 3 + -l[0] * 1 + -s[0] * 1 + a[2] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[0] * 1 + a[4] + -l[0] * 1 + -C * 5),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)
        || (!(-B * 1 + C + a[1] + -l[0] * 1 + -s[3] * 1 <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C * 3 + a[1] + -a[4] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-s[3] * 1 + a[4] + -l[0] * 1 + -C * 2)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((-B * 1 + -C * 2 + a[1] + -l[0] * 1 + -s[0] * 1 <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + a[4] + -C * 3 + B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
            IntervalList::interval_point(Bound::Included(-C * 3 + a[4] + -a[1] * 1 + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)
        || (!(-B * 1 + -C * 2 + a[1] + -l[0] * 1 + -s[0] * 1 <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[0] * 1 + a[4] + -l[0] * 1 + -C * 5)),
            IntervalList::interval_point(Bound::Included(-C * 1 + B + a[4] + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Excluded(RealNumRep::new(0, 1))),
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
    ]);
    ret = ret.intersection(&tmp);
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 1 + l[0] + -a[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + l[0] + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(C + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + l[0] + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(!(-B * 1 + C + -s[3] * 1 + s[4] >= RealNumRep::new(0, 1)));
    assert!(!(-B * 1 + -C * 2 + -s[0] * 1 + s[4] >= RealNumRep::new(0, 1)));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(C * 2 + -s[4] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1));
    assert!(!(-B * 1 + C * 2 >= RealNumRep::new(0, 1)));
    ret
}

pub fn compute_s_4_t_5_l_1(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 1);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[0] + -l[0] * 1 <= s[3]);
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(s[3] >= s[2]);
    assert!(-C * 3 + s[3] + -a[0] * 1 + l[0] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(!(RealNumRep::new(0, 1) <= -B * 1 + -C * 1 + s[3] + -s[1] * 1));
    assert!(!(RealNumRep::new(0, 1) <= -B * 1 + -C * 1 + s[3] + -a[0] * 1 + l[0]));
    assert!(!(RealNumRep::new(0, 1) <= -B * 1 + -C * 2 + s[3] + -s[0] * 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-a[2] * 1 + B + a[4] + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + -a[2] * 1 + B + a[4] + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + -a[2] * 1 + B + a[4] + a[0] + -l[0] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + -a[2] * 1 + B + a[4] + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + -a[2] * 1 + B + a[4] + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + a[3] + -l[0] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(a[3] + -l[0] * 1)),
        IntervalList::interval_lower(Bound::Included(-a[1] * 1 + B + a[3] + s[1])),
        IntervalList::interval_lower(Bound::Included(C * 2 + s[1])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(a[3] + -l[0] * 1)),
        IntervalList::interval_lower(Bound::Included(C + s[2])),
        IntervalList::interval_lower(Bound::Included(-C * 1 + -a[1] * 1 + B + a[3] + s[2])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(a[3] + -l[0] * 1)),
        IntervalList::interval_lower(Bound::Included(C * 3 + s[0])),
        IntervalList::interval_lower(Bound::Included(C + -a[1] * 1 + B + a[3] + s[0])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-a[1] * 1 + B + a[3] + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-C * 1 + -a[1] * 1 + B + a[4] + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + -a[1] * 1 + B + a[4] + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + -a[1] * 1 + B + a[4] + a[0] + -l[0] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + a[3] + s[3])),
        IntervalList::interval_lower(Bound::Excluded(-B * 1 + C * 2 + s[3])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + -a[1] * 1 + B + a[3] + a[0] + -l[0] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + -a[1] * 1 + B + a[3] + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + -a[1] * 1 + B + a[3] + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + -a[1] * 1 + B + a[3] + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-a[1] * 1 + B + a[4] + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + -a[1] * 1 + B + a[4] + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-C * 2 + l[0] + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 4 + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + C * 4 + a[0]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[0] + -a[0] * 1 + l[0] <= RealNumRep::new(0, 1));
    assert!(!(l[0] + -a[1] * 1 + s[3] >= RealNumRep::new(0, 1)));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 1 + l[0] + -a[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 5 + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(C + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(C + -s[2] * 1 + s[0] <= RealNumRep::new(0, 1));
    assert!(C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1));
    assert!(!(-B * 1 + -s[2] * 1 + s[3] >= RealNumRep::new(0, 1)));
    assert!(!(-B * 1 + C >= RealNumRep::new(0, 1)));
    ret
}

pub fn compute_c_t_5_l_2(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 2);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[1] + -l[1] * 1 <= s[4]);
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[1] >= a[0]);
    assert!(s[4] >= s[3]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!((l[1] == l[0]) || (!(RealNumRep::new(0, 1) <= -l[1] * 1 + l[0])));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] * 1 / 3 + s[3] * 1 / 3 + -a[0] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3] * 1 / 4 + -s[0] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(s[4] * 1 / 3 + -s[0] * 1 / 3)),
        IntervalList::interval_lower(Bound::Included(-l[1] * 1 + -s[0] * 1 + a[1])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] + s[1] + -a[0] * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(l[1] + -a[1] * 1 + s[4]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(l[0] + -a[1] * 1 + s[1] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 / 2 + s[1] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] + -a[1] * 1 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(s[3] * 1 / 2 + -s[0] * 1 / 2)),
        IntervalList::interval_lower(Bound::Excluded(-l[1] * 1 + a[1] + -s[0] * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(-l[1] * 1 + a[1] + -s[0] * 1)),
        IntervalList::interval_upper(Bound::Included(l[0] + -a[1] * 1 + s[3])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(l[0] * 1 / 2 + -a[1] * 1 / 2 + s[4] * 1 / 2)),
        IntervalList::interval_upper(Bound::Excluded(-l[1] * 1 + -s[0] * 1 + a[1])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[1] * 1 / 2 + -a[1] * 1 / 2 + s[3] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] * 1 / 3 + -a[1] * 1 / 3 + s[4] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    if !(-l[0] * 1 + a[1] + -s[2] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Excluded(-l[1] * 1 + -s[0] * 1 + a[1]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(-s[0] * 1 + s[2])),
        IntervalList::interval_lower(Bound::Included(-l[1] * 1 + -s[0] * 1 + a[1])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(RealNumRep::new(5, 1)),
    )]);
    ret = ret.intersection(&tmp);
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(!(l[1] + -a[2] * 1 + s[4] >= RealNumRep::new(0, 1)));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3] * 1 / 2 + -s[2] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3] * 1 / 3 + -s[1] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[4] * 1 / 3 + -s[2] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] * 1 / 4 + s[4] * 1 / 4 + -a[0] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 / 2 + s[4] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[4] * 1 / 5 + -s[0] * 1 / 5),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[4] * 1 / 4 + -s[1] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(s[4] + -s[2] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 / 3 + s[2] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 / 2 + s[2] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(s[3] + -s[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(s[4] * 1 / 2 + -s[1] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] * 1 / 2 + s[2] * 1 / 2 + -a[0] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    ret
}

pub fn compute_b_t_5_l_2(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 2);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[1] + -l[1] * 1 <= s[4]);
    assert!(a[3] >= a[2]);
    assert!(a[1] >= a[0]);
    assert!(s[4] >= s[3]);
    assert!(s[3] >= s[2]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(a[4] >= a[3]);
    assert!(s[2] >= s[1]);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[1] * 1 + a[1] + -l[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[2] * 1 + a[1] + -l[1] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[0] * 1 + -l[1] * 1 + a[1] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[3] * 1 + a[1] + -l[1] * 1 + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[4] * 1 + a[1] + -l[1] * 1 + C * 3),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + a[1] + -l[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -l[1] * 1 + a[1] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-l[1] * 1 + a[1] + -C * 1 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -l[1] * 1 + a[1] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + a[1] + -l[1] * 1 + C),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[4] * 1 + a[1] + -l[1] * 1 + C * 2),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (!(a[1] + -l[1] * 1 + C <= s[4])));
    assert!(l[0] + -C * 1 + -a[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(
        (-l[0] * 1 + a[1] + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(l[0] + -a[1] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 2 + -a[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 3 + -a[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(l[0] + -C * 1 + -a[1] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[4] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 4 + -a[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 3 + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(-C * 3 + -s[0] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(-C * 2 + s[4] + -s[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(l[0] + -C * 2 + -a[0] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(!(a[2] + -l[1] * 1 <= s[4]));
    assert!(
        (C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (-l[0] * 1 + C + a[1] + -s[3] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(
        (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (-l[0] * 1 + C * 2 + a[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    let tmp =
        IntervalList::from_interval_lists(vec![IntervalList::interval_lower(Bound::Excluded(C))]);
    ret = ret.intersection(&tmp);
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 2 + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(C + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(-s[3] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(-C * 1 + -s[2] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(C * 2 + -s[4] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 1 + -a[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_q_4_t_5_l_2(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 2);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[1] + -l[1] * 1 <= s[4]);
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[1] >= a[0]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(l[0] >= L0);
    assert!(s[4] >= s[3]);
    assert!(s[1] >= s[0]);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    let tmp =
        IntervalList::from_interval_lists(vec![IntervalList::interval_upper(Bound::Included(B))]);
    ret = ret.intersection(&tmp);
    assert!((!(l[0] == l[1])) || (s[2] >= a[1] + -l[0] * 1 + -B * 1));
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    assert!(s[3] >= a[1] + -l[1] * 1 + -B * 1 + C);
    assert!(s[4] >= a[1] + -l[1] * 1 + -B * 1 + C * 2);
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_lower(Bound::Excluded(RealNumRep::new(0, 1))),
    ]);
    ret = ret.intersection(&tmp);
    assert!(!(a[2] + -l[1] * 1 <= s[4]));
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!((!(l[0] == l[1])) || (s[1] >= -B * 1 + -l[0] * 1 + a[1] + -C * 1));
    if !((l[1] == l[0])
        || (!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1)))
        || (!(a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + -C * 3 + a[4] + B)),
            IntervalList::interval_point(Bound::Included(-a[1] * 1 + B + -C * 3 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(RealNumRep::new(0, 1) <= C + a[3] + -a[4] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(RealNumRep::new(0, 1)),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!((l[1] == l[0]) || (!(a[1] + -l[1] * 1 + C <= s[4])));
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-a[1] * 1 + -C * 3 + a[4] + B)),
    ]);
    ret = ret.intersection(&tmp);
    if !((!(l[1] <= l[0])) || (RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + -l[0] * 1 + -C * 1 + a[4])),
            IntervalList::interval_point(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 3 + s[4] + -s[2] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-a[3] * 1 + -C * 1 + a[4] + B),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-s[2] * 1 + -l[0] * 1 + -C * 2 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    assert!(!(RealNumRep::new(0, 1) <= -B * 1 + -C * 1 + -a[1] * 1 + l[0] + s[4]));
    assert!(-C * 3 + -a[1] * 1 + l[0] + s[4] <= RealNumRep::new(0, 1));
    assert!(-a[1] * 1 + l[0] + s[1] <= RealNumRep::new(0, 1));
    assert!(
        (C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (C + a[1] + -s[3] * 1 + -l[0] * 1 <= RealNumRep::new(0, 1))
    );
    if !((l[1] == l[0]) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Included(B + -C * 2 + -a[2] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (a[1] + -l[0] * 1 + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 3 + l[0] + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    if !(!(l[1] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[0] * 1 + -l[0] * 1 + -C * 5 + a[4])),
            IntervalList::interval_point(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Included(B + -C * 2 + -a[2] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-C * 4 + a[4] + -a[0] * 1)),
            IntervalList::interval_lower(Bound::Included(B + -C * 2 + -a[2] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0])
    );
    assert!(-C * 2 + -a[1] * 1 + s[3] + l[0] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[4] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(!(RealNumRep::new(0, 1) <= -B * 1 + -C * 2 + s[4] + -s[1] * 1));
    assert!(!(RealNumRep::new(0, 1) <= -B * 1 + -C * 3 + -s[0] * 1 + s[4]));
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    if !((!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1)))
        || (l[1] <= l[0])
        || (a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[3] * 1 + -l[0] * 1 + -C * 2 + a[4])),
            IntervalList::interval_point(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[2] * 1 + -l[0] * 1 + -C * 3 + a[4])),
            IntervalList::interval_point(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[3] * 1 + -l[0] * 1 + -C * 2 + a[4])),
            IntervalList::interval_lower(Bound::Included(B + -C * 2 + -a[2] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + -l[0] * 1 + -C * 1 + a[4])),
            IntervalList::interval_lower(Bound::Included(B + -C * 2 + -a[2] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[2] * 1 + -l[0] * 1 + -C * 3 + a[4])),
            IntervalList::interval_lower(Bound::Included(B + -C * 2 + -a[2] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[1] * 1 + -l[0] * 1 + -C * 4 + a[4])),
            IntervalList::interval_lower(Bound::Included(B + -C * 2 + -a[2] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + -C * 3 + a[4])),
            IntervalList::interval_lower(Bound::Included(B + -C * 2 + -a[2] * 1 + a[4])),
            IntervalList::interval_point(Bound::Included(-C * 3 + -a[1] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + -l[0] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + -l[0] * 1 + -C * 1 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    assert!(!(RealNumRep::new(0, 1) <= -B * 1 + -C * 2 + l[0] + s[4] + -a[0] * 1));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 1 + -a[1] * 1 + l[0] + s[2] <= RealNumRep::new(0, 1));
    if !(RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + -C * 3 + a[4])),
            IntervalList::interval_point(Bound::Included(-C * 3 + -a[1] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)
        || (-C * 1 + a[1] + -a[0] * 1 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + -C * 3 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-C * 4 + a[4] + -a[0] * 1)),
            IntervalList::interval_point(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (RealNumRep::new(0, 1) <= C + a[2] + -a[3] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[1] * 1 + -l[0] * 1 + -C * 4 + a[4])),
            IntervalList::interval_point(Bound::Included(-C * 1 + a[4] + B + -a[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -l[0] * 1 + -C * 3 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    assert!(-C * 1 + l[0] + s[1] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + l[0] + s[4] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    if !(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -l[0] * 1 + -C * 4 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + -C * 3 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (!(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0]))
            || (C * 2 + a[1] + -l[0] * 1 + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-a[2] * 1 + -C * 2 + a[4] + B)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(C * 2 + -s[4] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(C + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(!(-B * 1 + C >= RealNumRep::new(0, 1)));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + l[0] + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(!(-B * 1 + -s[3] * 1 + s[4] >= RealNumRep::new(0, 1)));
    assert!(!(-B * 1 + -C * 1 + s[4] + -s[2] * 1 >= RealNumRep::new(0, 1)));
    ret
}

pub fn compute_s_4_t_5_l_2(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 2);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[1] + -l[1] * 1 <= s[3]);
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[1] >= a[0]);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(s[3] >= s[2]);
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!(s[3] >= a[1] + -l[1] * 1 + -B * 1 + C);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!((!(l[0] == l[1])) || (s[2] >= a[1] + -l[0] * 1 + -B * 1));
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(a[3] + -l[1] * 1)),
        IntervalList::interval_lower(Bound::Included(a[1] + -l[1] * 1 + -B * 1 + C * 2)),
        IntervalList::interval_lower(Bound::Included(a[3] + -a[2] * 1 + a[1] + -l[1] * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (!(a[1] + -l[1] * 1 + C <= s[3])));
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(a[1] + -l[1] * 1 + -B * 1 + C * 3),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!((a[1] + -l[1] * 1 + C <= s[3]) || (C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1)));
    assert!(l[0] + -C * 1 + -a[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 1 + -a[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(l[0] + -a[1] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(
        (-l[0] * 1 + a[1] + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1))
    );
    if !(!(a[3] + -a[2] * 1 + B <= C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[3] + -l[1] * 1)),
            IntervalList::interval_lower(Bound::Included(C + -a[2] * 1 + B + a[3] + s[1])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(!(RealNumRep::new(0, 1) <= l[0] + -C * 2 + -B * 1 + s[3] + -a[0] * 1));
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(a[4] + -a[2] * 1 + a[1] + -l[1] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(a[3] + -a[2] * 1 + a[1] + -l[1] * 1 + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(a[4] + -a[3] * 1 + a[1] + -l[1] * 1 + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(a[4] + -l[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(a[3] + -l[1] * 1 + C),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + C * 2 + -a[2] * 1 + B + a[3] + a[1]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + -a[2] * 1 + B + a[3] + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    if !(!(a[3] + -a[2] * 1 + B <= C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[3] + -l[1] * 1)),
            IntervalList::interval_lower(Bound::Included(-a[2] * 1 + B + a[3] + s[2])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + -a[2] * 1 + B + a[3] + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(!(RealNumRep::new(0, 1) <= l[0] + -C * 1 + -B * 1 + -a[1] * 1 + s[3]));
    assert!(!(RealNumRep::new(0, 1) <= -C * 1 + -B * 1 + s[3] + -s[2] * 1));
    assert!(l[0] + -C * 2 + -a[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + C * 3 + a[1]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 5 + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + C * 4 + a[0]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(!(a[2] + -l[1] * 1 <= s[3]));
    if !(a[3] + -a[2] * 1 + B <= C) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[3] + -l[1] * 1)),
            IntervalList::interval_lower(Bound::Included(C * 2 + s[1])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + C * 3 + -a[2] * 1 + B + a[3] + a[0]),
    )]);
    ret = ret.intersection(&tmp);
    if !(a[3] + -a[2] * 1 + B <= C) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[3] + -l[1] * 1)),
            IntervalList::interval_lower(Bound::Included(C + s[2])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(a[3] + -a[2] * 1 + B <= C) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[3] + -l[1] * 1)),
            IntervalList::interval_lower(Bound::Included(C * 3 + s[0])),
            IntervalList::interval_lower(Bound::Included(-l[0] * 1 + C * 2 + a[1])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(a[3] + -a[2] * 1 + B <= C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[3] + -l[1] * 1)),
            IntervalList::interval_lower(Bound::Included(C * 2 + -a[2] * 1 + B + a[3] + s[0])),
            IntervalList::interval_lower(Bound::Included(
                -l[0] * 1 + C + -a[2] * 1 + B + a[3] + a[1],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + -a[2] * 1 + B + a[3] + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 4 + -a[2] * 1 + B + a[3] + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Excluded(-a[2] * 1 + a[3] + s[3])),
        IntervalList::interval_lower(Bound::Excluded(C + -B * 1 + s[3])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + B + a[4] + -a[3] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + C * 3 + B + a[4] + -a[3] * 1 + a[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 4 + B + a[4] + -a[3] * 1 + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + B + a[4] + -a[3] * 1 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + C * 2 + -a[2] * 1 + a[4] + B + a[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + -a[2] * 1 + a[4] + B + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + C * 2 + B + a[4] + -a[3] * 1 + a[1]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + B + a[4] + -a[3] * 1 + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + C + a[4] + B + -a[2] * 1 + a[1]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + -a[2] * 1 + a[4] + B + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + -a[2] * 1 + a[4] + B + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(C + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 2 + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(l[0] + -C * 3 + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(!(-C * 2 + -B * 1 + s[3] + -s[1] * 1 >= RealNumRep::new(0, 1)));
    assert!(!(-C * 3 + -B * 1 + -s[0] * 1 + s[3] >= RealNumRep::new(0, 1)));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 4 + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-a[2] * 1 + a[4] + B + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    ret
}

pub fn compute_c_t_5_l_3(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 3);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[2] + -l[2] * 1 <= s[4]);
    assert!(a[4] >= a[3]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(s[4] >= s[3]);
    assert!((l[2] == l[1]) || (l[2] + -a[2] * 1 + s[2] <= RealNumRep::new(-5, 1)));
    if !((l[1] == l[0]) || (l[2] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_point(
            Bound::Included(l[1] + -a[1] * 1 + -l[2] * 1 + a[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (!(RealNumRep::new(0, 1) <= -l[1] * 1 + l[0])));
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(-a[2] * 1 + l[2] + s[4]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (!(RealNumRep::new(0, 1) <= l[1] + -l[2] * 1)));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(s[2] + -s[0] * 1)),
        IntervalList::interval_lower(Bound::Included(-l[1] * 1 + a[1] + -s[0] * 1)),
    ]);
    ret = ret.intersection(&tmp);
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-l[1] * 1 + a[1] + -s[0] * 1)),
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 2) + -l[2] * 1 / 2 + a[2] * 1 / 2 + -s[0] * 1 / 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] * 1 / 4 + s[4] * 1 / 4 + -a[0] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(RealNumRep::new(-5, 1) + -l[1] * 1 + a[1] + -s[0] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(RealNumRep::new(5, 1) + l[2] + -a[2] * 1 + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(-a[1] * 1 / 2 + l[1] * 1 / 2 + s[4] * 1 / 2)),
        IntervalList::interval_upper(Bound::Included(-a[2] * 1 + l[2] + s[4])),
        IntervalList::interval_upper(Bound::Included(s[4] * 1 / 3 + -s[0] * 1 / 3)),
    ]);
    ret = ret.intersection(&tmp);
    if !((!(l[0] == l[1])) || (l[2] == l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[1] * 1 + -l[2] * 1 + a[2] + l[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(-a[2] * 1 + l[2] + s[4])),
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 / 2 + s[4] * 1 / 2)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (l[1] + -a[1] * 1 + s[1] <= RealNumRep::new(-5, 1)));
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(RealNumRep::new(-5, 1) + -l[2] * 1 + a[2] + -s[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] * 1 / 3 + s[3] * 1 / 3 + -a[0] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    if !((l[1] == l[0]) || (!(l[1] == l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(a[2] + -a[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(-l[1] * 1 + a[2] + -s[3] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-l[2] * 1 + a[2] + -s[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(s[3] + -s[1] * 1)),
        IntervalList::interval_lower(Bound::Included(-l[2] * 1 + a[2] + -s[1] * 1)),
    ]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(-a[1] * 1 / 2 + l[1] * 1 / 2 + s[4] * 1 / 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(s[3] + -s[1] * 1)),
        IntervalList::interval_lower(Bound::Excluded(-l[2] * 1 + a[2] + -s[1] * 1)),
    ]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(RealNumRep::new(5, 2) + -a[1] * 1 / 2 + l[1] * 1 / 2 + s[3] * 1 / 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(RealNumRep::new(5, 1) + l[1] + -a[1] * 1 + s[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(l[2] + -a[2] * 1 + s[2] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[2] * 1 / 3 + -s[0] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] * 1 / 2 + s[2] * 1 / 2 + -a[0] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Excluded(-l[1] * 1 + a[1] + -s[0] * 1)),
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 1) + l[0] + -a[1] * 1 + -l[2] * 1 + a[2],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(-a[2] * 1 + l[2] + s[4])),
        IntervalList::interval_upper(Bound::Included(s[3] * 1 / 2 + -s[0] * 1 / 2)),
        IntervalList::interval_upper(Bound::Included(-a[1] * 1 + s[3] + l[0])),
    ]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(
                -l[2] * 1 / 2 + a[2] * 1 / 2 + -s[0] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Included(s[3] * 1 / 2 + -s[0] * 1 / 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[2] * 1 / 2 + -s[1] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3] * 1 / 4 + -s[0] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(l[1] * 2 + -a[1] * 1 + -a[2] * 1 + s[1] + s[4]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (l[1] == l[0])
            || (!(RealNumRep::new(0, 1) <= l[1] * 2 + -a[1] * 1 + -a[2] * 1 + s[4] + s[0]))
    );
    if !(a[1] + -l[0] * 1 + -s[2] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Excluded(-l[1] * 1 + a[1] + -s[0] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[1] + -a[1] * 1 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-a[1] * 1 / 3 + l[0] * 1 / 3 + s[4] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[1] * 1 / 2 + -a[1] * 1 / 2 + s[3] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[1] * 1 / 2 + -a[2] * 1 / 2 + s[4] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(-a[1] * 1 + -l[2] * 1 + a[2] + l[0])),
        IntervalList::interval_lower(Bound::Included(
            -l[2] * 1 / 2 + a[2] * 1 / 2 + -s[0] * 1 / 2,
        )),
        IntervalList::interval_upper(Bound::Included(s[3] * 1 / 2 + -s[0] * 1 / 2)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(
            -l[1] * 1 + a[1] + l[2] + -a[2] * 1 + s[3] + -s[0] * 1,
        )),
        IntervalList::interval_lower(Bound::Included(-l[1] * 1 + a[1] + -s[0] * 1)),
        IntervalList::interval_upper(Bound::Included(s[3] * 1 / 2 + -s[0] * 1 / 2)),
    ]);
    ret = ret.intersection(&tmp);
    if !(-l[1] * 1 + a[2] + -s[3] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Excluded(a[2] + -a[1] * 1)),
            IntervalList::interval_upper(Bound::Excluded(
                -l[1] * 1 / 2 + a[2] * 1 / 2 + -s[0] * 1 / 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(-l[1] * 1 + a[2] + -s[3] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Excluded(-l[1] * 1 + a[1] + -s[0] * 1)),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + s[3] + l[0])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(RealNumRep::new(5, 1)),
    )]);
    ret = ret.intersection(&tmp);
    assert!(L0 >= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 / 2 + s[4] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] + s[1] + -a[0] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[2] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[1] * 1 / 2 + -s[0] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    assert!(l[1] + -a[1] * 1 + s[1] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[2] + -a[2] * 1 + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(!(l[2] + -a[3] * 1 + s[4] >= RealNumRep::new(0, 1)));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3] * 1 / 2 + -s[2] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 / 3 + s[4] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[4] * 1 / 5 + -s[0] * 1 / 5),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 / 4 + s[4] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3] * 1 / 3 + -s[1] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    ret
}

pub fn compute_b_t_5_l_3(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 3);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[2] + -l[2] * 1 <= s[4]);
    assert!(a[4] >= a[3]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[4] >= s[3]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[2] * 1 + a[2] + -l[2] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[0] * 1 + -l[1] * 1 + a[1] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + a[2] + -l[2] * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[1] * 1 + a[1] + -l[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (!(l[2] <= l[1])));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -l[1] * 1 + a[1] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-l[1] * 1 + a[1] + -C * 1 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (a[2] + -l[2] * 1 == a[1] + -l[1] * 1 + C));
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[4] * 1 + a[2] + -l[2] * 1 + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -l[1] * 1 + a[1] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[2] <= a[2] + -l[1] * 1);
    assert!(s[4] <= a[2] + -l[1] * 1 + C * 2);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + a[1] + -l[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[3] * 1 + a[2] + -l[2] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[2] * 1 + a[1] + -l[1] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[3] * 1 + a[1] + -l[1] * 1 + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[4] * 1 + a[1] + -l[1] * 1 + C * 3),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(!(a[3] + -l[2] * 1 <= s[4]));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(-a[2] * 1 + a[1] + C)),
        IntervalList::interval_lower(Bound::Included(-s[3] * 1 + a[1] + -l[1] * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    if !(s[3] >= a[2] + -l[1] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(-a[2] * 1 + a[1] + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((!(a[1] + -l[1] * 1 + C * 2 <= s[4])) || (l[1] == l[0]));
    assert!((l[2] == l[1]) || (!(a[2] + -l[2] * 1 + C <= s[4])));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[4] * 1 + a[2] + -l[2] * 1 + C),
    )]);
    ret = ret.intersection(&tmp);
    if !(a[2] + -l[2] * 1 + C <= s[4]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[1] + -l[1] * 1 + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (l[1] == l[0]) || (!(l[1] == l[2])) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[1] * 1 + -l[2] * 1 + a[2] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -l[2] * 1 + a[2] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-l[2] * 1 + a[2] + -C * 2 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -l[2] * 1 + a[2] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -l[2] * 1 + a[2] + -C * 2)),
            IntervalList::interval_upper(Bound::Included(
                -a[1] * 1 + l[0] + -l[2] * 1 + a[2] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(
            -C * 1 + a[2] + -l[2] * 1 + -a[1] * 1 + l[0],
        )),
        IntervalList::interval_lower(Bound::Excluded(
            -a[1] * 1 + l[0] + -l[2] * 1 + a[2] + -C * 1,
        )),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -l[2] * 1 + a[2] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    assert!(
        (l[2] == l[1])
            || (!(l[1] <= l[0]))
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!((a[2] + -l[2] * 1 + C <= s[4]) || (C * 2 + -s[4] * 1 + s[1] <= RealNumRep::new(0, 1)));
    assert!(l[0] + -C * 1 + s[1] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(
        (a[2] + -l[2] * 1 + C <= s[4])
            || (a[1] + -l[0] * 1 + C * 2 <= s[4])
            || (!(RealNumRep::new(0, 1) <= l[0] + C + -a[1] * 1 + s[0]))
    );
    assert!(
        (a[2] + -l[2] * 1 + C <= s[4])
            || (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (RealNumRep::new(0, 1) <= l[0] + C + -a[1] * 1 + s[0])
    );
    assert!(
        (-l[0] * 1 + a[1] + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(l[0] + -a[1] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + l[0] + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 3 + -a[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(
        (s[3] >= a[2] + -l[1] * 1)
            || (C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (RealNumRep::new(0, 1) <= l[0] + C + -a[1] * 1 + s[0])
    );
    assert!(l[0] + -C * 1 + -a[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!((s[3] >= a[2] + -l[1] * 1) || (C + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1)));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(l[0] + -C * 3 + s[4] + -a[0] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(-C * 4 + -s[0] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(
        (s[3] >= a[2] + -l[0] * 1)
            || (-l[0] * 1 + C + a[1] + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (!(RealNumRep::new(0, 1) <= l[0] + C + -a[1] * 1 + s[0]))
    );
    assert!(s[3] <= a[2] + -l[1] * 1 + C);
    assert!(l[0] + -C * 2 + -a[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(-C * 2 + s[4] + -s[2] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(l[0] + -C * 2 + -a[1] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(l[0] + -C * 2 + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(-a[2] * 1 + l[1] + -C * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(-C * 3 + s[4] + -s[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(RealNumRep::new(5, 1)),
    )]);
    ret = ret.intersection(&tmp);
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[4] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[4] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 4 + s[4] + -a[0] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Excluded(-C * 1 + -s[3] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_q_4_t_5_l_3(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 3);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[2] + -l[2] * 1 <= s[4]);
    assert!(a[4] >= a[3]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[4] >= s[3]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!((l[2] == l[1]) || (s[2] <= a[2] + -l[2] * 1 + -B * 1));
    assert!((l[2] == l[1]) || (s[3] <= a[2] + -l[2] * 1 + -B * 1 + C));
    let tmp =
        IntervalList::from_interval_lists(vec![IntervalList::interval_upper(Bound::Included(B))]);
    ret = ret.intersection(&tmp);
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!((l[2] == l[1]) || (!(l[2] <= l[1])));
    assert!((!(l[1] == l[2])) || (s[4] >= a[2] + -l[1] * 1 + -B * 1 + C));
    assert!(s[4] >= a[2] + -l[2] * 1 + -B * 1 + C);
    assert!(s[3] >= a[2] + -l[2] * 1 + -B * 1);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_lower(Bound::Excluded(RealNumRep::new(0, 1))),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (a[2] + -l[2] * 1 == a[1] + -l[1] * 1 + C));
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    assert!(!(a[3] + -l[2] * 1 <= s[4]));
    assert!(
        (!(l[0] == l[1]))
            || (l[2] == l[0])
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!(s[3] <= a[2] + -l[1] * 1 + C);
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!(s[2] <= a[2] + -l[1] * 1);
    assert!(s[4] <= a[2] + -l[1] * 1 + C * 2);
    assert!(
        (a[1] + -s[2] * 1 + -l[0] * 1 <= RealNumRep::new(0, 1))
            || (C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1))
    );
    assert!((s[4] >= a[2] + -l[1] * 1 + C) || (s[4] >= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!(-C * 1 + l[0] + -a[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-a[1] * 1 + l[0] + s[1] <= RealNumRep::new(0, 1));
    assert!((l[2] == l[1]) || (!(a[2] + -l[2] * 1 + C <= s[4])));
    assert!((l[2] == l[1]) || (s[4] <= a[2] + -l[2] * 1 + -B * 1 + C * 2));
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    if !((l[2] == l[1]) || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(B + -C * 1 + -a[3] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((s[3] >= a[2] + -l[1] * 1) || (s[3] >= a[1] + -l[1] * 1 + -B * 1 + C));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_point(Bound::Included(B + -C * 1 + a[4] + -a[3] * 1)),
        IntervalList::interval_upper(Bound::Excluded(B + -C * 1 + -a[3] * 1 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    if !((l[2] == l[1]) || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_upper(Bound::Included(C + B + a[3] + -a[4] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((l[2] == l[1]) || (!(a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1)))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-a[2] * 1 + B + -C * 2 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    assert!(
        (!(a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1))
            || (-B * 1 + -C * 1 + -a[1] * 1 + a[2] + -l[2] * 1 + l[0] == RealNumRep::new(0, 1))
    );
    assert!(
        (l[2] == l[1])
            || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2)
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1)
    );
    if !((-a[2] * 1 + -C * 2 + a[4] == RealNumRep::new(0, 1))
        || (!(a[4] + -a[2] * 1 + -C * 2 <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(B),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-B * 1 + -l[2] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1);
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    if !((l[2] == l[1])
        || (!(a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1)))
        || (a[4] <= a[2] + -B * 1 + C * 2))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(RealNumRep::new(0, 1)),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[1] == l[0])
        || (!(l[2] <= l[1]))
        || (a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_upper(Bound::Included(C + B + a[3] + -a[4] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((l[1] == l[0])
        || (!(l[2] <= l[1]))
        || (a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(B + -C * 1 + -a[3] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((l[1] == l[0])
        || (!(l[1] == l[2]))
        || (a[2] <= a[1] + -B * 1 + C)
        || (!(a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-a[1] * 1 + B + -C * 3 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (l[1] == l[0]) || (!(l[2] <= l[1])) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    assert!((l[1] == l[0]) || (!(a[1] + -l[1] * 1 + C * 2 <= s[4])));
    if !(a[2] <= a[1] + -B * 1 + C) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + -C * 3 + a[4] + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(a[2] <= a[1] + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-a[2] * 1 + -C * 2 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + -l[0] * 1 + -C * 1 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + -l[0] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-a[2] * 1 + -C * 2 + a[4] + B)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-s[2] * 1 + -l[0] * 1 + -C * 2 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    if !((l[1] == l[0])
        || (!(l[1] == l[2]))
        || (!(a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(RealNumRep::new(0, 1))),
            IntervalList::interval_point(Bound::Included(-a[1] * 1 + B + -C * 3 + a[4])),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + -C * 3 + a[4] + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_upper(Bound::Included(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(-s[3] * 1 + -l[0] * 1 + -C * 2 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_upper(Bound::Included(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + -l[0] * 1 + -C * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_upper(Bound::Included(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(-s[2] * 1 + -l[0] * 1 + -C * 3 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_upper(Bound::Included(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(-s[0] * 1 + -l[0] * 1 + -C * 5 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(B)),
        IntervalList::interval_upper(Bound::Included(C + B + a[3] + -a[4] * 1)),
        IntervalList::interval_point(Bound::Included(-C * 2 + -a[2] * 1 + a[4])),
        IntervalList::interval_lower(Bound::Excluded(-a[2] * 1 + -C * 2 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_upper(Bound::Included(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(-C * 4 + a[4] + -a[0] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_upper(Bound::Included(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(-s[1] * 1 + -l[0] * 1 + -C * 4 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1 + l[2] + -l[0] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_upper(Bound::Included(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_except(Bound::Excluded(-C * 2 + -a[2] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[2] <= l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_upper(Bound::Included(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + -C * 3 + a[4])),
            IntervalList::interval_point(Bound::Included(-C * 3 + -a[1] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((s[4] >= a[2] + -l[1] * 1 + C) || (C * 2 + -s[4] * 1 + s[1] <= RealNumRep::new(0, 1)));
    assert!(
        (s[4] >= a[2] + -l[1] * 1 + C)
            || (C * 2 + a[1] + -l[0] * 1 + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 1 + -a[1] * 1 + l[0] + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -a[1] * 1 + l[0] + s[4] <= RealNumRep::new(0, 1));
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(B + -C * 1 + -a[3] * 1 + a[4])),
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + -l[0] * 1 + -C * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(B + -C * 1 + -a[3] * 1 + a[4])),
            IntervalList::interval_lower(Bound::Included(-s[2] * 1 + -l[0] * 1 + -C * 3 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(!(RealNumRep::new(0, 1) <= -C * 4 + -B * 1 + -s[0] * 1 + s[4]));
    assert!((s[3] >= a[2] + -l[1] * 1) || (C + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1)));
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(B + -C * 1 + -a[3] * 1 + a[4])),
            IntervalList::interval_lower(Bound::Included(-s[3] * 1 + -l[0] * 1 + -C * 2 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(B + -C * 1 + -a[3] * 1 + a[4])),
            IntervalList::interval_lower(Bound::Included(-s[0] * 1 + -l[0] * 1 + -C * 5 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Excluded(C + B + a[3] + -a[4] * 1)),
        IntervalList::interval_point(Bound::Included(-C * 2 + -a[2] * 1 + a[4])),
        IntervalList::interval_lower(Bound::Included(B + -C * 1 + -a[3] * 1 + a[4])),
        IntervalList::interval_lower(Bound::Excluded(-a[2] * 1 + -C * 2 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    assert!(-C * 2 + -a[1] * 1 + s[3] + l[0] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + l[0] + -a[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(
        (s[3] >= a[2] + -l[1] * 1)
            || (C + a[1] + -l[0] * 1 + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1))
    );
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(B + -C * 1 + -a[3] * 1 + a[4])),
            IntervalList::interval_lower(Bound::Included(-C * 4 + a[4] + -a[0] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[2] <= l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(B + -C * 1 + -a[3] * 1 + a[4])),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + -C * 3 + a[4])),
            IntervalList::interval_point(Bound::Included(-C * 3 + -a[1] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(C + B + a[3] + -a[4] * 1)),
            IntervalList::interval_lower(Bound::Included(B + -C * 1 + -a[3] * 1 + a[4])),
            IntervalList::interval_lower(Bound::Included(-s[1] * 1 + -l[0] * 1 + -C * 4 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(!(RealNumRep::new(0, 1) <= -C * 3 + -B * 1 + l[0] + -a[0] * 1 + s[4]));
    assert!(-C * 2 + l[0] + -a[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[4] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(!(RealNumRep::new(0, 1) <= -C * 3 + -B * 1 + s[4] + -s[1] * 1));
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + l[0] + -a[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-a[2] * 1 + -C * 2 + a[4])),
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -l[0] * 1 + -C * 3 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-a[2] * 1 + -C * 2 + a[4])),
        IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -l[0] * 1 + -C * 4 + a[4])),
        IntervalList::interval_upper(Bound::Included(-a[1] * 1 + -C * 3 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    assert!(!(RealNumRep::new(0, 1) <= -C * 2 + -B * 1 + -s[2] * 1 + s[4]));
    assert!(!(RealNumRep::new(0, 1) <= -C * 2 + -a[1] * 1 + -B * 1 + l[0] + s[4]));
    assert!(!(a[2] + -l[1] * 1 + C + B <= s[4]));
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1));
    assert!(!(-C * 1 + -B * 1 + -s[3] * 1 + s[4] >= RealNumRep::new(0, 1)));
    ret
}

pub fn compute_s_4_t_5_l_3(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 3);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[2] + -l[2] * 1 <= s[3]);
    assert!(a[4] >= a[3]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!((l[2] == l[1]) || (s[2] <= a[2] + -l[2] * 1 + -B * 1));
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!(!(a[3] + -l[2] * 1 <= s[3]));
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (a[2] + -l[2] * 1 == a[1] + -l[1] * 1 + C));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(a[3] + -l[2] * 1 + C),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!((l[2] == l[1]) || (!(l[2] <= l[1])));
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(a[3] + -l[2] * 1)),
        IntervalList::interval_lower(Bound::Included(a[2] + -l[2] * 1 + -B * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    assert!((l[2] == l[1]) || (s[3] <= a[2] + -l[2] * 1 + -B * 1 + C));
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    assert!((!(l[1] == l[2])) || (s[0] >= -B * 1 + -l[1] * 1 + a[2] + -C * 3));
    assert!(
        (l[1] == l[0]) || (!(l[1] == l[2])) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(a[1] + -l[1] * 1 + -B * 1 + C * 3),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!(l[0] + -C * 3 + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(a[4] + -l[2] * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(a[4] + -a[3] * 1 + a[2] + -l[2] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(a[2] + -l[2] * 1 + -B * 1 + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 4 + s[1]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[2] <= a[2] + -l[1] * 1);
    if !(a[2] <= a[1] + -B * 1 + C) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[3] + -l[2] * 1)),
            IntervalList::interval_lower(Bound::Included(a[1] + -l[1] * 1 + -B * 1 + C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(a[2] <= a[1] + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[3] + -l[1] * 1)),
            IntervalList::interval_lower(Bound::Included(a[2] + -l[1] * 1 + C)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(a[4] + -a[3] * 1 + a[1] + -l[1] * 1 + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-B * 1 + -l[2] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1);
    assert!(
        (l[2] == l[1])
            || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2)
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1)
    );
    assert!(
        (!(a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1))
            || (-C * 1 + a[2] + -l[2] * 1 + -B * 1 + -a[1] * 1 + l[0] == RealNumRep::new(0, 1))
    );
    assert!(s[3] <= a[2] + -l[1] * 1 + C);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(a[2] + -l[1] * 1 + C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(a[3] + -l[2] * 1)),
        IntervalList::interval_lower(Bound::Included(C + s[2])),
    ]);
    ret = ret.intersection(&tmp);
    assert!(l[0] + -C * 1 + s[1] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    assert!(
        (!(l[0] == l[1]))
            || (l[2] == l[0])
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + C * 4 + a[0]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-a[1] * 1 + l[0] + s[1] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 2 + -a[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 1 + -a[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + C * 3 + a[1]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(
        (a[1] + -l[0] * 1 + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1))
    );
    if !(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[3] + -l[2] * 1)),
            IntervalList::interval_lower(Bound::Included(C * 3 + s[0])),
            IntervalList::interval_lower(Bound::Included(-l[0] * 1 + C * 2 + a[1])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(a[3] + -l[2] * 1)),
        IntervalList::interval_lower(Bound::Included(a[2] + -l[1] * 1 + C)),
        IntervalList::interval_lower(Bound::Included(C * 2 + s[1])),
    ]);
    ret = ret.intersection(&tmp);
    if !(!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[3] + -l[1] * 1)),
            IntervalList::interval_lower(Bound::Included(C * 3 + s[0])),
            IntervalList::interval_lower(Bound::Included(a[2] + -l[1] * 1 + C)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 2 + B + -a[3] * 1 + s[2] + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + B + -a[3] * 1 + C * 2 + a[1] + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 4 + B + s[0] + -a[3] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(a[4] + -a[3] * 1 + a[2] + -l[1] * 1 + C + B),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-l[0] * 1 + C * 3 + B + -a[3] * 1 + a[4] + a[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + B + -a[3] * 1 + s[1] + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 3 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C * 5 + s[0]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 2 + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_c_t_5_l_4(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 4);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[3] + -l[3] * 1 <= s[4]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    if !((l[2] == l[1]) || (l[3] == l[2])) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_point(
            Bound::Included(-a[2] * 1 + l[2] + -l[3] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (!(RealNumRep::new(0, 1) <= -l[2] * 1 + l[1])));
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[1] * 1 + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[3] == l[2]) || (!(RealNumRep::new(0, 1) <= l[2] + -l[3] * 1)));
    if !((!(l[1] == l[2])) || (!(RealNumRep::new(0, 1) <= -l[1] * 1 + l[0])) || (l[3] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-l[3] * 1 + a[3] + l[0] + -a[2] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(RealNumRep::new(5, 1) + l[3] + -a[3] * 1 + s[4]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] + s[1] + -a[0] * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !((l[2] == l[1]) || (!(l[2] == l[3]))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-a[2] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[4] * 1 / 2 + -s[3] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[2] + -a[3] * 1 + s[4]),
    )]);
    ret = ret.intersection(&tmp);
    if !((l[1] == l[0]) || (RealNumRep::new(0, 1) <= -l[2] * 1 + l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_point(
            Bound::Included(l[1] + -a[1] * 1 + -l[2] * 1 + a[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(RealNumRep::new(5, 2) + l[2] * 1 / 2 + -a[2] * 1 / 2 + s[4] * 1 / 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[1] == l[0]) || (!(l[1] == l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-a[1] * 1 + a[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (l[2] + -a[2] * 1 + s[2] <= RealNumRep::new(-5, 1)));
    assert!((l[1] == l[0]) || (!(RealNumRep::new(0, 1) <= -l[1] * 1 + l[0])));
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(RealNumRep::new(5, 1) + -a[2] * 1 + l[2] + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(l[2] + -a[3] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!((l[3] == l[2]) || (l[3] + -a[3] * 1 + s[3] <= RealNumRep::new(-5, 1)));
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + -a[1] * 1 / 2 + a[3] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Excluded(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 1) + -a[2] * 1 + l[1] + -l[3] * 1 + a[3],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 2) + -l[3] * 1 / 2 + a[3] * 1 / 2 + -s[1] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 1) + -a[2] * 1 + l[1] + -l[3] * 1 + a[3],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (l[1] + -a[1] * 1 + s[1] <= RealNumRep::new(-5, 1)));
    if !(s[3] >= a[2] + -l[1] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[1] * 1 + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(a[1] + -l[0] * 1 + -s[2] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(s[2] + -s[0] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(RealNumRep::new(-5, 1) + -l[1] * 1 + a[1] + -s[0] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[2] <= a[2] + -l[1] * 1);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-l[1] * 1 + a[1] + l[2] + -a[2] * 1 + -s[0] * 1 + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3] + -a[2] * 1 + l[1]),
    )]);
    ret = ret.intersection(&tmp);
    if !((!(l[0] == l[1])) || (l[2] == l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(a[2] + -l[2] * 1 + -a[1] * 1 + l[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 / 2 + s[2] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    assert!(l[1] + -a[1] * 1 + s[1] <= RealNumRep::new(0, 1));
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[3] == l[2]) || (s[1] >= a[2] + -l[1] * 2 + l[3] + -a[3] * 1 + a[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + -a[1] * 1 / 2 + a[3] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Excluded(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(s[1] + -a[2] * 1 + l[1] * 2 + -l[3] * 1 + a[3] + -a[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (l[1] == l[0])
            || (-a[2] * 1 + l[2] + -l[3] * 1 + a[3] + l[1] + -a[1] * 1 + s[0]
                <= RealNumRep::new(0, 1))
    );
    if !((l[3] == l[1]) || (s[3] >= a[2] + -l[1] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + -a[1] * 1 / 2 + a[3] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Excluded(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2,
            )),
            IntervalList::interval_lower(Bound::Excluded(
                RealNumRep::new(-5, 1) + -a[2] * 1 + l[1] + -l[3] * 1 + a[3],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + -a[1] * 1 / 2 + a[3] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Excluded(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2,
            )),
            IntervalList::interval_lower(Bound::Included(
                -s[0] * 1 + a[2] + -l[1] * 2 + l[3] + -a[3] * 1 + a[1],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((l[3] == l[2]) || (a[2] + -l[1] * 2 + l[3] + -a[3] * 1 + a[1] <= a[0] + -l[0] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + -a[1] * 1 / 2 + a[3] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Excluded(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + -a[1] * 1 / 2 + a[3] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Excluded(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Included(
                s[2] + -a[2] * 1 + l[1] * 2 + -l[3] * 1 + a[3] + -a[1] * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[4] * 1 / 5 + -s[0] * 1 / 5),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(RealNumRep::new(5, 2) + l[1] * 1 / 2 + -a[1] * 1 / 2 + s[3] * 1 / 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 / 4 + s[3] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-a[1] * 1 / 2 + l[0] * 1 / 2 + s[3] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] * 1 / 4 + s[4] * 1 / 4 + -a[0] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[4] * 1 / 2 + -a[2] * 1 / 2 + l[1] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(RealNumRep::new(5, 1) + l[1] + -a[1] * 1 + s[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[2] * 1 / 3 + -s[0] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-a[1] * 1 + l[0] + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-a[0] * 1 / 3 + l[0] * 1 / 3 + s[3] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 / 3 + s[3] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[2] * 1 / 2 + -a[0] * 1 / 2 + l[0] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 / 4 + s[4] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    if !((l[1] == l[0]) || (s[3] >= a[2] + -l[1] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[0] * 1 / 2 + s[3] * 1 / 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(RealNumRep::new(5, 3) + l[1] * 1 / 3 + -a[1] * 1 / 3 + s[4] * 1 / 3),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 1) + a[2] + -l[2] * 1 + -a[1] * 1 + l[0],
            )),
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 2) + a[2] * 1 / 2 + -l[2] * 1 / 2 + -s[0] * 1 / 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + s[3])),
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 / 2 + s[3] * 1 / 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(RealNumRep::new(-5, 1) + a[2] + -l[2] * 1 + -s[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(RealNumRep::new(-5, 1) + -l[3] * 1 + a[3] + -s[2] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(s[3] >= a[2] + -l[1] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + s[3])),
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 / 2 + s[3] * 1 / 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 1) + -a[2] * 1 + l[1] + -l[3] * 1 + a[3],
            )),
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 2)
                    + -a[1] * 1 / 2
                    + -l[3] * 1 / 2
                    + a[3] * 1 / 2
                    + l[0] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 3) + -l[3] * 1 / 3 + a[3] * 1 / 3 + -s[0] * 1 / 3,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-a[1] * 1 / 3 + l[0] * 1 / 3 + s[4] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(RealNumRep::new(5, 1)),
    )]);
    ret = ret.intersection(&tmp);
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-a[0] * 1 + s[0] + l[0] <= RealNumRep::new(0, 1));
    assert!(!(l[3] + -a[4] * 1 + s[4] >= RealNumRep::new(0, 1)));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[1] * 1 / 2 + -s[0] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[4] * 1 / 3 + -s[2] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 / 2 + s[3] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    ret
}

pub fn compute_b_t_5_l_4(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 4);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[3] + -l[3] * 1 <= s[4]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + a[1] + -l[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(-a[2] * 1 + l[2] + a[1] + -l[1] * 1 + C)),
        IntervalList::interval_lower(Bound::Included(-s[3] * 1 + a[1] + -l[1] * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(-a[2] * 1 + l[2] + a[1] + -l[1] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[0] * 1 + -l[1] * 1 + a[1] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-l[1] * 1 + a[1] + -C * 1 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[2] * 1 + a[1] + -l[1] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -l[1] * 1 + a[1] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -l[1] * 1 + a[1] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (l[2] == a[2] + -a[1] * 1 + l[1] + -C * 1));
    assert!(
        (l[1] == l[0]) || (!(l[1] == l[2])) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[1] * 1 + a[1] + -l[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[2] * 1 + a[2] + -l[2] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[1] * 1 + -l[2] * 1 + a[2] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[3] == l[2]) || (!(l[3] <= l[2])));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + a[2] + -l[2] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -l[2] * 1 + a[2] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[2] == l[1]) || (l[3] == l[2]) || (a[3] + -l[3] * 1 == a[2] + -l[2] * 1 + C));
    assert!(!(a[4] + -l[3] * 1 <= s[4]));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -l[2] * 1 + a[2] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-l[2] * 1 + a[2] + -C * 2 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[4] * 1 + a[2] + -l[2] * 1 + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[1] + -a[1] * 1 + l[0] <= RealNumRep::new(0, 1));
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[3] * 1 + a[1] + -l[1] * 1 + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (l[1] == l[0])
            || (!(l[3] <= l[2]))
            || (a[3] + -l[2] * 1 + -a[1] * 1 + l[1] + -C * 2 <= RealNumRep::new(0, 1))
    );
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[4] * 1 + a[1] + -l[1] * 1 + C * 3),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[3] * 1 + a[3] + -l[3] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[4] * 1 + a[3] + -l[3] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (!(l[1] == l[2]))
            || (l[3] == l[1])
            || (!(a[3] + -l[3] * 1 <= a[2] + -l[1] * 1 + C))
            || (a[3] + -l[3] * 1 == a[2] + -l[1] * 1 + C)
    );
    if !((l[1] == l[0]) || (l[3] == l[2]) || (l[3] == a[3] + -a[1] * 1 + l[1] + -C * 2)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[2] * 1 + l[2] + a[1] + -l[1] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))) || (l[2] == l[1]));
    assert!((!(l[2] <= l[0])) || (l[2] == l[0]));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(
            -C * 1 + a[2] + -l[2] * 1 + -a[1] * 1 + l[0],
        )),
        IntervalList::interval_lower(Bound::Excluded(
            -a[1] * 1 + l[0] + -l[2] * 1 + a[2] + -C * 1,
        )),
    ]);
    ret = ret.intersection(&tmp);
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -l[2] * 1 + a[2] + -C * 2)),
            IntervalList::interval_upper(Bound::Included(
                -a[1] * 1 + l[0] + -l[2] * 1 + a[2] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (!(l[0] == l[1]))
            || (l[2] == l[0])
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -l[2] * 1 + a[2] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[3] <= a[3] + -l[2] * 1);
    if !(s[3] >= a[2] + -l[1] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(-a[2] * 1 + a[1] + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[2] * 1 + -l[3] * 1 + a[3] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[3] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(-a[2] * 1 + a[1] + C)),
            IntervalList::interval_point(Bound::Included(
                -l[3] * 1 + a[3] + -a[2] * 1 + l[1] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[4] <= a[3] + -l[2] * 1 + C);
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[3] * 1 + a[2] + -l[2] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (-s[2] * 1 + a[1] + -l[0] * 1 <= RealNumRep::new(0, 1))
            || (C + -s[2] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 1 + l[0] + s[1] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(s[2] <= a[2] + -l[1] * 1);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(
            -l[3] * 1 + a[3] + -a[2] * 1 + l[0] + -C * 1,
        )),
        IntervalList::interval_lower(Bound::Excluded(
            -a[2] * 1 + l[0] + -l[3] * 1 + a[3] + -C * 1,
        )),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-l[3] * 1 + a[3] + -C * 3 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + -l[3] * 1 + a[3] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !((!(l[1] <= l[0])) || (!(l[1] == l[2])) || (l[3] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(
                -a[2] * 1 + l[0] + -l[3] * 1 + a[3] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -l[3] * 1 + a[3] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -l[3] * 1 + a[3] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    if !((!(l[1] <= l[0])) || (!(l[1] == l[2])) || (l[3] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(
                -a[2] * 1 + l[0] + -l[3] * 1 + a[3] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -l[3] * 1 + a[3] + -C * 3)),
            IntervalList::interval_upper(Bound::Included(
                -a[1] * 1 + l[0] + -l[3] * 1 + a[3] + -C * 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Excluded(
            -a[1] * 1 + l[0] + -l[3] * 1 + a[3] + -C * 2,
        )),
        IntervalList::interval_point(Bound::Included(
            -C * 2 + -l[3] * 1 + -a[1] * 1 + a[3] + l[0],
        )),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -l[3] * 1 + a[3] + -C * 4),
    )]);
    ret = ret.intersection(&tmp);
    assert!(
        (l[2] == l[1]) || (!(l[2] == l[3])) || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -l[3] * 1 + a[3] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    if !((l[3] == l[0])
        || (!(l[0] == l[2]))
        || (a[1] + -l[0] * 1 + l[3] + -a[3] * 1 + C * 2 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[2] * 1 + l[0] + -l[3] * 1 + a[3] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[3] <= a[2] + -l[1] * 1 + C);
    assert!(s[4] <= a[2] + -l[1] * 1 + C * 2);
    assert!((s[3] >= a[2] + -l[1] * 1) || (C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1)));
    assert!(-C * 2 + l[0] + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + l[0] + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 5 + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + l[0] + s[4] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-a[1] * 1 + l[0] + -C * 2 + s[3] <= RealNumRep::new(0, 1));
    assert!(-a[1] * 1 + l[0] + -C * 3 + s[4] <= RealNumRep::new(0, 1));
    if !(!(l[1] == l[3])) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(a[3] + -a[2] * 1 + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (s[3] >= a[2] + -l[1] * 1)
            || (RealNumRep::new(0, 1) <= C + l[0] + -a[1] * 1 + s[0])
            || (C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(
        (s[3] >= a[2] + -l[0] * 1)
            || (C + a[1] + -l[0] * 1 + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (!(RealNumRep::new(0, 1) <= C + l[0] + -a[1] * 1 + s[0]))
    );
    assert!(-C * 1 + -a[1] * 1 + l[0] + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(RealNumRep::new(5, 1)),
    )]);
    ret = ret.intersection(&tmp);
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_q_4_t_5_l_4(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 4);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[3] + -l[3] * 1 <= s[4]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(s[3] >= a[2] + -l[2] * 1 + -B * 1);
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!((l[3] == l[2]) || (s[3] <= a[3] + -l[3] * 1 + -B * 1));
    assert!((l[2] == l[1]) || (s[2] <= a[2] + -l[2] * 1 + -B * 1));
    assert!(!(a[4] + -l[3] * 1 <= s[4]));
    assert!((l[2] == l[1]) || (l[3] == l[2]) || (a[3] + -l[3] * 1 == a[2] + -l[2] * 1 + C));
    if !(a[4] + -a[3] * 1 + -C * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(RealNumRep::new(0, 1)),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[3] == l[2]) || (s[4] <= a[3] + -l[3] * 1 + -B * 1 + C));
    let tmp =
        IntervalList::from_interval_lists(vec![IntervalList::interval_upper(Bound::Included(B))]);
    ret = ret.intersection(&tmp);
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!((l[3] == l[2]) || (!(l[3] <= l[2])));
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-a[3] * 1 + B + -C * 1 + a[4])),
            IntervalList::interval_lower(Bound::Excluded(-a[3] * 1 + -C * 1 + a[4] + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_lower(Bound::Excluded(RealNumRep::new(0, 1))),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[2] == l[1]) || (!(l[2] <= l[1])));
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!(
        (l[3] == l[1])
            || (!(a[2] <= a[1] + -B * 1 + C))
            || (a[3] + -l[3] * 1 + -B * 1 == a[2] + -l[1] * 1 + C)
    );
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-a[3] * 1 + -C * 1 + a[4] + B)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    assert!((a[2] <= a[1] + -B * 1 + C) || (s[3] >= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!((s[3] >= a[2] + -l[1] * 1) || (!(a[2] <= a[1] + -B * 1 + C)));
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (a[2] + -l[2] * 1 == a[1] + -l[1] * 1 + C));
    assert!(s[2] <= a[2] + -l[1] * 1);
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    assert!(
        (l[1] == l[0])
            || (l[3] == l[2])
            || (a[2] <= a[1] + -B * 1 + C)
            || (a[3] + -l[3] * 1 == a[1] + -l[1] * 1 + C * 2)
    );
    assert!(
        (!(l[1] == l[2])) || (l[1] == l[0]) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    assert!(
        (l[2] == l[1])
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1)
            || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2)
    );
    assert!(s[3] <= a[3] + -l[2] * 1);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-a[2] * 1 + -C * 2 + a[4] + B)),
        IntervalList::interval_upper(Bound::Included(-a[3] * 1 + -C * 1 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    if !((l[2] == l[1]) || (!(l[3] <= l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_point(Bound::Included(-a[2] * 1 + B + -C * 2 + a[4])),
            IntervalList::interval_lower(Bound::Excluded(-a[2] * 1 + -C * 2 + a[4] + B)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(s[4] <= a[2] + -l[2] * 1 + -B * 1 + C * 2) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(-a[2] * 1 + B + -C * 2 + a[4]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[4] * 1 + a[2] + -l[2] * 1 + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (l[2] == l[1]) || (!(l[2] == l[3])) || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    assert!(s[4] <= a[3] + -l[2] * 1 + C);
    assert!((l[2] == l[1]) || (s[3] <= a[2] + -l[2] * 1 + -B * 1 + C));
    if !(a[2] <= a[1] + -B * 1 + C) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + -C * 3 + a[4] + B)),
            IntervalList::interval_upper(Bound::Included(-a[3] * 1 + -C * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(a[2] <= a[1] + -B * 1 + C)) || (!(a[3] + -l[3] * 1 <= a[2] + -l[1] * 1 + C))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-a[3] * 1 + -C * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1)) || (!(a[2] <= a[1] + -B * 1 + C))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-a[2] * 1 + -C * 2 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((l[1] == l[0]) || (!(l[2] <= l[1])) || (!(l[3] <= l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + -C * 3 + a[4] + B)),
            IntervalList::interval_point(Bound::Included(-a[1] * 1 + B + -C * 3 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (l[1] == l[0])
            || (!(l[2] <= l[1]))
            || (!(l[3] <= l[2]))
            || (a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1))
    );
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!(-B * 1 + -l[2] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1);
    assert!(-a[1] * 1 + l[0] + s[1] <= RealNumRep::new(0, 1));
    assert!(
        (!(a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1))
            || (C + a[1] + -a[2] * 1 + l[2] + B + -l[0] * 1 == RealNumRep::new(0, 1))
    );
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    assert!(
        (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
            || (!(l[0] == l[1]))
            || (l[2] == l[0])
    );
    assert!((l[3] == l[2]) || (s[2] <= -B * 1 + -l[3] * 1 + a[3] + -C * 1));
    assert!(-C * 1 + -a[1] * 1 + l[0] + s[2] <= RealNumRep::new(0, 1));
    assert!(
        (-C * 2 + -B * 1 + a[3] + -a[1] * 1 + l[0] + -l[3] * 1 == RealNumRep::new(0, 1))
            || (!(a[1] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 2))
    );
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[1] == l[2]))
            || (l[3] == l[1])
            || (a[2] + -l[0] * 1 + l[3] + -a[3] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!(-C * 1 + l[0] + s[1] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(s[2] >= -B * 1 + -l[3] * 1 + a[3] + -C * 2);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + -l[0] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (s[3] >= a[2] + -l[0] * 1)
            || (C + a[1] + -l[0] * 1 + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (!(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0]))
    );
    assert!(-B * 1 + -l[3] * 1 + a[3] + -C * 3 <= a[0] + -l[0] * 1);
    assert!(
        (l[3] == l[2])
            || (!(l[1] <= l[0]))
            || (s[1] <= -B * 1 + -l[3] * 1 + a[3] + -C * 2)
            || (a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1)
    );
    assert!(s[3] >= -B * 1 + -l[3] * 1 + a[3] + -C * 1);
    assert!(
        (a[3] + -l[3] * 1 + -B * 1 == a[2] + -l[0] * 1 + C)
            || (!(a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1))
    );
    assert!(
        (a[1] + -l[0] * 1 + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + -s[2] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(
        (!(l[0] == l[2]))
            || (l[3] == l[0])
            || (a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1)
            || (a[1] + -l[0] * 1 + l[3] + -a[3] * 1 + C * 2 <= RealNumRep::new(0, 1))
    );
    if !((!(l[2] <= l[1])) || (!(l[2] == l[3]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + -C * 3 + a[4])),
            IntervalList::interval_point(Bound::Included(-C * 3 + -a[1] * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -l[0] * 1 + -C * 3 + a[4])),
        IntervalList::interval_upper(Bound::Included(-a[2] * 1 + -C * 2 + a[4])),
        IntervalList::interval_upper(Bound::Included(-a[3] * 1 + -C * 1 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    if !(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-a[2] * 1 + -C * 2 + a[4])),
            IntervalList::interval_upper(Bound::Included(-a[3] * 1 + -C * 1 + a[4])),
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -l[0] * 1 + -C * 4 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-s[2] * 1 + -l[0] * 1 + -C * 2 + a[4])),
        IntervalList::interval_upper(Bound::Included(-a[3] * 1 + -C * 1 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    if !((!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1)))
        || (!(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-a[2] * 1 + -C * 2 + a[4])),
            IntervalList::interval_upper(Bound::Included(-a[3] * 1 + -C * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[0] >= -B * 1 + -l[3] * 1 + a[3] + -C * 4);
    assert!(
        (!(l[1] <= l[0]))
            || (l[3] == l[1])
            || (!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1)))
            || (s[0] <= -B * 1 + -l[3] * 1 + a[3] + -C * 3)
            || (a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1)
    );
    assert!(
        (!(l[1] <= l[0]))
            || (l[3] == l[1])
            || (a[3] + -l[3] * 1 <= a[2] + -l[1] * 1 + C)
            || (s[0] <= -B * 1 + -l[3] * 1 + a[3] + -C * 3)
            || (a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1)
            || (RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0])
    );
    assert!(
        (l[3] == l[0])
            || (a[3] + -l[3] * 1 <= a[2] + -l[0] * 1 + C)
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 2)
            || (a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1)
            || (!(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0]))
    );
    assert!(
        (l[3] == l[2])
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1)
            || (!(a[3] + -l[3] * 1 <= a[2] + -l[1] * 1 + C))
            || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2)
    );
    assert!(s[1] >= -B * 1 + -l[3] * 1 + a[3] + -C * 3);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + -l[0] * 1 + -C * 1 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1])) || (!(l[2] == l[3]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-C * 4 + a[4] + -a[0] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(B)),
        IntervalList::interval_point(Bound::Included(-a[3] * 1 + -C * 1 + a[4])),
        IntervalList::interval_lower(Bound::Excluded(-a[3] * 1 + -C * 1 + a[4])),
    ]);
    ret = ret.intersection(&tmp);
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_except(Bound::Excluded(-a[3] * 1 + -C * 1 + a[4])),
            IntervalList::interval_lower(Bound::Included(-s[3] * 1 + -l[0] * 1 + -C * 2 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_except(Bound::Excluded(-a[3] * 1 + -C * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1])) || (!(l[3] <= l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[3] * 1 + -l[0] * 1 + -C * 2 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[3] <= a[2] + -l[1] * 1 + C);
    assert!(-C * 3 + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    if !((!(l[1] <= l[0])) || (!(l[3] <= l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-a[2] * 1 + -C * 2 + a[4])),
            IntervalList::interval_lower(Bound::Included(-s[2] * 1 + -l[0] * 1 + -C * 3 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[3] <= l[2])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Excluded(-a[2] * 1 + -C * 2 + a[4])),
            IntervalList::interval_point(Bound::Included(-a[2] * 1 + -C * 2 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1])) || (!(l[3] <= l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[2] * 1 + -l[0] * 1 + -C * 3 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1])) || (!(l[3] <= l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[1] * 1 + -l[0] * 1 + -C * 4 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1))
        || (RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)
        || (!(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + -C * 3 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((RealNumRep::new(0, 1) <= C + a[1] + -a[2] * 1)
        || (!(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0]))
        || (!(a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(RealNumRep::new(0, 1))),
            IntervalList::interval_upper(Bound::Included(-a[3] * 1 + -C * 1 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[2] <= l[1])) || (!(l[3] <= l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(B)),
            IntervalList::interval_lower(Bound::Included(-s[0] * 1 + -l[0] * 1 + -C * 5 + a[4])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((s[3] >= a[2] + -l[1] * 1) || (C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1)));
    assert!(s[4] <= a[2] + -l[1] * 1 + C * 2);
    assert!((!(l[3] <= l[1])) || (a[3] + -a[2] * 1 + -C * 1 <= B));
    assert!(-C * 2 + l[0] + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (s[3] >= a[2] + -l[1] * 1)
            || (RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0])
            || (C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 4 + l[0] + s[4] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -a[1] * 1 + l[0] + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 5 + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -a[1] * 1 + s[3] + l[0] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + l[0] + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_s_4_t_5_l_4(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 4);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[3] + -l[2] * 1 <= s[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!(s[3] <= a[3] + -l[2] * 1);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(a[3] + -l[2] * 1 + C),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[2] == l[1]) || (a[3] <= a[2] + -B * 1 + C));
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    assert!((l[2] == l[1]) || (s[2] <= a[2] + -l[2] * 1 + -B * 1));
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (l[2] == a[2] + -a[1] * 1 + l[1] + -C * 1));
    assert!((!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))) || (l[2] == l[1]));
    assert!(
        (l[1] == l[0]) || (!(l[1] == l[2])) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!((!(l[2] <= l[0])) || (l[2] == l[0]));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(a[4] + -l[2] * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!((l[1] == l[0]) || (a[3] + -l[2] * 1 <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!(
        (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
            || (!(l[0] == l[1]))
            || (l[2] == l[0])
    );
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    assert!(a[3] <= a[2] + C);
    assert!(-a[1] * 1 + l[0] + s[1] <= RealNumRep::new(0, 1));
    assert!(
        (!(a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1))
            || (-C * 1 + a[2] + -l[2] * 1 + -B * 1 + -a[1] * 1 + l[0] == RealNumRep::new(0, 1))
    );
    assert!(-B * 1 + -l[2] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1);
    assert!(
        (l[2] == l[1])
            || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2)
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1)
    );
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    assert!(s[2] <= a[2] + -l[1] * 1);
    assert!(-C * 1 + l[0] + s[1] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + l[0] + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!((!(l[2] <= l[0])) || (-C * 2 + -l[0] * 1 + -s[2] * 1 + a[3] <= RealNumRep::new(0, 1)));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (a[1] + -l[0] * 1 + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + -s[2] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(-a[1] * 1 + s[2] + l[0] + -C * 1 <= RealNumRep::new(0, 1));
    assert!((!(l[2] <= l[0])) || (-C * 3 + -l[0] * 1 + a[3] + -s[1] * 1 <= RealNumRep::new(0, 1)));
    assert!((!(l[2] <= l[0])) || (-a[1] * 1 + -C * 2 + a[3] <= RealNumRep::new(0, 1)));
    assert!((!(l[2] <= l[0])) || (-C * 4 + -l[0] * 1 + a[3] + -s[0] * 1 <= RealNumRep::new(0, 1)));
    assert!((!(l[2] <= l[0])) || (-C * 3 + a[3] + -a[0] * 1 <= RealNumRep::new(0, 1)));
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + -a[0] * 1 + s[0] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_c_t_5_l_5(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 5);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[4] + -l[3] * 1 <= s[4]);
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!((l[1] == l[0]) || (l[1] + -a[1] * 1 + s[1] <= RealNumRep::new(-5, 1)));
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Excluded(a[2] + -a[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[1] == l[0]) || (l[2] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_point(
            Bound::Included(l[1] + a[2] + -l[2] * 1 + -a[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((!(RealNumRep::new(0, 1) <= -l[2] * 1 + l[0])) || (l[2] == l[0]));
    assert!((l[1] == l[0]) || (!(RealNumRep::new(0, 1) <= -l[1] * 1 + l[0])));
    if !((!(l[0] == l[1])) || (l[2] == l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(a[2] + -l[2] * 1 + -a[1] * 1 + l[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(RealNumRep::new(-5, 1) + -l[1] * 1 + a[1] + -s[0] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[1] == l[0]) || (!(l[1] == l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(a[2] + -a[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[2] == l[1]) || (l[3] == l[2])) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_point(
            Bound::Included(-a[2] * 1 + -l[3] * 1 + l[2] + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(RealNumRep::new(-5, 1) + -l[3] * 1 + a[3] + -s[2] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((!(RealNumRep::new(0, 1) <= -l[1] * 1 + l[0])) || (!(l[1] == l[2])) || (l[3] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-l[3] * 1 + a[3] + l[0] + -a[2] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (l[2] + -a[2] * 1 + s[2] <= RealNumRep::new(-5, 1)));
    assert!(l[2] + -a[3] * 1 + s[3] <= RealNumRep::new(0, 1));
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(RealNumRep::new(5, 1) + -a[2] * 1 + l[2] + s[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(RealNumRep::new(-5, 1) + -l[2] * 1 + a[2] + -s[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[2] == l[1]) || (!(-l[2] * 1 + a[4] + -s[4] * 1 <= RealNumRep::new(0, 1)))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-a[2] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + s[3])),
        IntervalList::interval_lower(Bound::Included(a[2] + -l[2] * 1 + -s[1] * 1)),
    ]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] == l[2])) || (l[3] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                l[1] * 1 / 2 + -a[1] * 1 / 2 + a[3] * 1 / 2 + -l[3] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 1) + -a[2] * 1 + l[1] + -l[3] * 1 + a[3],
            )),
            IntervalList::interval_upper(Bound::Excluded(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(l[3] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                l[1] * 1 / 2 + -a[1] * 1 / 2 + a[3] * 1 / 2 + -l[3] * 1 / 2,
            )),
            IntervalList::interval_lower(Bound::Included(
                -s[0] * 1 + a[1] + a[2] + -l[1] * 2 + l[3] + -a[3] * 1,
            )),
            IntervalList::interval_upper(Bound::Excluded(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2,
            )),
            IntervalList::interval_lower(Bound::Excluded(
                RealNumRep::new(-5, 1) + -a[2] * 1 + l[1] + -l[3] * 1 + a[3],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((l[3] == l[1]) || (a[1] + a[2] + -l[1] * 2 + l[3] + -a[3] * 1 <= a[0] + -l[0] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                l[1] * 1 / 2 + -a[1] * 1 / 2 + a[3] * 1 / 2 + -l[3] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Excluded(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2,
            )),
            IntervalList::interval_lower(Bound::Excluded(
                RealNumRep::new(-5, 1) + -a[2] * 1 + l[1] + -l[3] * 1 + a[3],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] == l[2])) || (l[3] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                l[1] * 1 / 2 + -a[1] * 1 / 2 + a[3] * 1 / 2 + -l[3] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Included(
                s[2] + -a[2] * 1 + l[1] * 2 + -l[3] * 1 + a[3] + -a[1] * 1,
            )),
            IntervalList::interval_upper(Bound::Excluded(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] == l[2]))
        || (l[3] == l[1])
        || (s[1] >= a[1] + a[2] + -l[1] * 2 + l[3] + -a[3] * 1))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                l[1] * 1 / 2 + -a[1] * 1 / 2 + a[3] * 1 / 2 + -l[3] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Excluded(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(l[2] + -a[2] * 1 + s[2] <= RealNumRep::new(0, 1));
    if !((!(l[1] == l[2])) || (l[3] == l[1]) || (s[3] >= a[2] + -l[1] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                l[1] * 1 / 2 + -a[1] * 1 / 2 + a[3] * 1 / 2 + -l[3] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Excluded(
                l[1] * 1 / 2 + -l[3] * 1 / 2 + a[3] * 1 / 2 + -a[1] * 1 / 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(a[4] * 1 / 2 + -l[3] * 1 / 2 + -a[2] * 1 / 2 + l[1] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[3] == l[2]) || (!(-l[2] * 1 + a[4] + -s[4] * 1 <= RealNumRep::new(0, 1))));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(a[4] * 1 / 4 + -l[3] * 1 / 4 + -a[0] * 1 / 4 + l[0] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Excluded(
                -l[2] * 1 / 2 + a[2] * 1 / 2 + -s[0] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 / 2 + s[3] * 1 / 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[0] * 1 / 3 + s[3] * 1 / 3 + -a[0] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(RealNumRep::new(5, 2) + l[1] * 1 / 2 + -a[1] * 1 / 2 + s[3] * 1 / 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 / 3 + s[3] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(RealNumRep::new(5, 1) + l[1] + -a[1] * 1 + s[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp =
            IntervalList::from_interval_lists(vec![IntervalList::interval_lower(Bound::Included(
                RealNumRep::new(5, 3) + l[1] * 1 / 3 + -a[1] * 1 / 3 + a[4] * 1 / 3 + -l[3] * 1 / 3,
            ))]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 / 5 + a[4] * 1 / 5 + -l[3] * 1 / 5),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 / 4 + a[4] * 1 / 4 + -l[3] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 / 4 + s[3] * 1 / 4),
    )]);
    ret = ret.intersection(&tmp);
    if !((l[1] == l[0]) || (s[3] >= a[2] + -l[1] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-l[1] * 1 / 2 + a[2] * 1 / 2 + -s[0] * 1 / 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (s[0] <= a[1] + a[2] + -l[1] * 2 + l[3] + -a[3] * 1));
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(s[1] + -a[2] * 1 + l[1] * 2 + -l[3] * 1 + a[3] + -a[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[1] + -a[1] * 1 + s[2]),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(RealNumRep::new(5, 1) + -a[3] * 1 + a[4]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(-l[1] * 1 + a[1] + -s[0] * 1)),
        IntervalList::interval_upper(Bound::Included(-s[0] * 1 + s[2])),
    ]);
    ret = ret.intersection(&tmp);
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 1) + l[0] + -a[1] * 1 + -l[2] * 1 + a[2],
            )),
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 2) + -l[2] * 1 / 2 + a[2] * 1 / 2 + -s[0] * 1 / 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(-l[0] * 1 + a[1] + -s[2] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Excluded(-l[1] * 1 + a[1] + -s[0] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Excluded(-l[1] * 1 + a[1] + -s[0] * 1)),
        IntervalList::interval_lower(Bound::Excluded(
            RealNumRep::new(-5, 1) + l[0] + -a[1] * 1 + -l[2] * 1 + a[2],
        )),
        IntervalList::interval_upper(Bound::Included(l[0] + -a[1] * 1 + s[3])),
    ]);
    ret = ret.intersection(&tmp);
    if !(l[2] == l[1]) {
        let tmp =
            IntervalList::from_interval_lists(vec![IntervalList::interval_lower(Bound::Included(
                RealNumRep::new(5, 2) + -a[2] * 1 / 2 + -l[3] * 1 / 2 + l[2] * 1 / 2 + a[4] * 1 / 2,
            ))]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[3] == l[2]) || (l[3] + -a[3] * 1 + s[3] <= RealNumRep::new(-5, 1)));
    if !((!(l[1] == l[2])) || (l[3] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 1) + -a[2] * 1 + l[1] + -l[3] * 1 + a[3],
            )),
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 2)
                    + -l[3] * 1 / 2
                    + -a[1] * 1 / 2
                    + a[3] * 1 / 2
                    + l[0] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 3) + -l[3] * 1 / 3 + a[3] * 1 / 3 + -s[0] * 1 / 3,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] == l[2])) || (l[3] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 2) + -l[3] * 1 / 2 + a[3] * 1 / 2 + -s[1] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Included(
                RealNumRep::new(-5, 1) + -a[2] * 1 + l[1] + -l[3] * 1 + a[3],
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(s[3] >= a[2] + -l[1] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Excluded(a[2] + -l[1] * 1 + -s[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[1] * 1 / 3 + -a[1] * 1 / 3 + a[4] * 1 / 3 + -l[3] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    if !(s[3] >= a[2] + -l[1] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(
                -l[1] * 1 / 2 + a[2] * 1 / 2 + -s[0] * 1 / 2,
            )),
            IntervalList::interval_upper(Bound::Included(l[0] + -a[1] * 1 + s[3])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Excluded(
            -l[2] * 1 / 2 + a[2] * 1 / 2 + -s[0] * 1 / 2,
        )),
        IntervalList::interval_upper(Bound::Included(-s[0] * 1 / 2 + s[3] * 1 / 2)),
        IntervalList::interval_upper(Bound::Included(l[0] + -a[1] * 1 + s[3])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(RealNumRep::new(5, 1)),
    )]);
    ret = ret.intersection(&tmp);
    assert!(L0 >= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[1] * 1 / 2 + -s[0] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    assert!(l[1] + -a[1] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-a[4] * 1 + l[3] + s[4] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-a[2] * 1 + l[2] + s[3]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[0] + -a[0] * 1 + l[0] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[1] + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-a[0] * 1 / 2 + s[2] * 1 / 2 + l[0] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 / 3 + s[2] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-a[3] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 / 2 + a[4] * 1 / 2 + -l[3] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(s[3] * 1 / 2 + -s[2] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(a[4] * 1 / 3 + -l[3] * 1 / 3 + -s[2] * 1 / 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 / 2 + s[2] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(l[1] * 1 / 2 + -a[1] * 1 / 2 + s[3] * 1 / 2),
    )]);
    ret = ret.intersection(&tmp);
    ret
}

pub fn compute_b_t_5_l_5(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 5);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[4] + -l[3] * 1 <= s[4]);
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[3] * 1 + a[3] + -l[3] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + a[1] + -l[1] * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[1] * 1 + a[1] + -l[1] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[4] * 1 + a[3] + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[0] * 1 + -l[1] * 1 + a[1] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[2] * 1 + a[2] + -l[2] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[4] <= a[4] + -l[3] * 1);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + a[2] + -l[2] * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-l[1] * 1 + a[1] + -C * 1 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(-a[2] * 1 + l[2] + a[1] + -l[1] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[1] * 1 + -l[2] * 1 + a[2] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(l[0] + -a[1] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    assert!((l[3] == l[2]) || (!(l[3] <= l[2])));
    assert!(-C * 1 + l[0] + -a[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!((s[3] >= a[2] + -l[1] * 1) || (C + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1)));
    assert!(s[3] <= a[3] + -l[1] * 1);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -l[1] * 1 + a[1] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[2] * 1 + -l[3] * 1 + a[3] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (-l[0] * 1 + a[1] + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1))
    );
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (l[2] == a[2] + -a[1] * 1 + l[1] + -C * 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -l[1] * 1 + a[1] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(
        (l[2] == l[1]) || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1)) || (!(l[3] <= l[2]))
    );
    if !((l[2] == l[1]) || (!(l[3] <= l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[4] * 1 + a[2] + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (!(l[2] == a[2] + -a[1] * 1 + l[1] + -C * 1))
            || (RealNumRep::new(0, 1) <= -C * 1 + -a[1] * 1 + a[2])
    );
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + -l[3] * 1 + a[3] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(-s[3] * 1 + a[1] + -l[1] * 1 + C)),
        IntervalList::interval_upper(Bound::Included(-a[2] * 1 + l[2] + a[1] + -l[1] * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    if !(s[3] >= a[2] + -l[1] * 1) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(-a[2] * 1 + a[1] + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[3] * 1 + a[2] + -l[2] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[3] <= a[3] + -l[2] * 1);
    if !((l[1] == l[0]) || (l[3] == l[2]) || (a[1] + -l[1] * 1 + C * 2 == a[3] + -l[3] * 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[2] * 1 + l[2] + a[1] + -l[1] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (l[1] == l[0]) || (!(l[1] == l[2])) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    if !(l[3] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                a[3] + -l[3] * 1 + -a[2] * 1 + l[1] + -C * 1,
            )),
            IntervalList::interval_lower(Bound::Excluded(-a[2] * 1 + a[1] + C)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[1] == l[3])) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-C * 1 + -a[2] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[3] <= a[2] + -l[1] * 1 + C);
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -l[2] * 1 + a[2] + -C * 2)),
            IntervalList::interval_upper(Bound::Included(
                -a[1] * 1 + l[0] + -l[2] * 1 + a[2] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -l[2] * 1 + a[2] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Excluded(
            -a[1] * 1 + l[0] + -l[2] * 1 + a[2] + -C * 1,
        )),
        IntervalList::interval_point(Bound::Included(
            -C * 1 + -a[1] * 1 + a[2] + -l[2] * 1 + l[0],
        )),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-l[2] * 1 + a[2] + -C * 2 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[2] <= a[2] + -l[1] * 1);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[2] * 1 + a[1] + -l[1] * 1 + C),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((!(l[2] <= l[0])) || (l[2] == l[0]));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -l[2] * 1 + a[2] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    assert!(
        (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
            || (!(l[0] == l[1]))
            || (l[2] == l[0])
    );
    assert!(
        (l[2] == l[1])
            || (l[3] == l[2])
            || (C + a[2] + -l[2] * 1 + l[3] + -a[3] * 1 == RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -l[2] * 1 + a[2] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-s[3] * 1 + a[1] + -l[1] * 1 + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[1] == l[0]) || (!(l[3] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[4] * 1 + a[1] + C * 3),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (l[1] == l[0])
            || (!(l[2] == l[3]))
            || (a[3] + -l[2] * 1 + -a[1] * 1 + l[1] + -C * 2 <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-l[3] * 1 + a[3] + -C * 3 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(
        (l[3] == l[2])
            || (!(l[2] <= l[0]))
            || (a[2] + -l[0] * 1 + l[3] + -a[3] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!(
        (!(l[0] == l[1]))
            || (-l[0] * 1 + a[2] + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (-l[0] * 1 + C + a[1] + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1))
    );
    if !((!(l[0] == l[2])) || (l[3] == l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                a[3] + -l[3] * 1 + -a[2] * 1 + l[0] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -l[3] * 1 + a[3] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -l[3] * 1 + a[3] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    if !((l[3] == l[2])
        || (!(l[0] == l[1]))
        || (RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0]))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -l[3] * 1 + a[3] + -C * 3)),
            IntervalList::interval_upper(Bound::Included(
                -a[2] * 1 + l[0] + -l[3] * 1 + a[3] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((l[3] == l[0])
        || (!(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0]))
        || (!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[2] * 1 + l[0] + -l[3] * 1 + a[3] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[3] == l[2])
        || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0])))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[1] * 1 + l[0] + -l[3] * 1 + a[3] + -C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[3] == l[2])
        || (!(l[0] == l[1]))
        || (a[1] + -l[0] * 1 + l[3] + -a[3] * 1 + C * 2 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
            Bound::Included(-a[2] * 1 + l[0] + -l[3] * 1 + a[3] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(
            a[3] + -l[3] * 1 + -a[2] * 1 + l[0] + -C * 1,
        )),
        IntervalList::interval_lower(Bound::Excluded(
            -a[2] * 1 + l[0] + -l[3] * 1 + a[3] + -C * 1,
        )),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -l[3] * 1 + a[3] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -l[3] * 1 + a[3] + -C * 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(
            l[0] + -C * 2 + -a[1] * 1 + -l[3] * 1 + a[3],
        )),
        IntervalList::interval_lower(Bound::Excluded(
            -a[1] * 1 + l[0] + -l[3] * 1 + a[3] + -C * 2,
        )),
    ]);
    ret = ret.intersection(&tmp);
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(a[4] <= a[3] + C);
    assert!(
        (!(l[2] <= l[0]))
            || (!(l[3] <= l[2]))
            || (-C * 2 + -l[0] * 1 + -s[3] * 1 + a[4] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (!(l[2] <= l[0]))
            || (!(l[3] <= l[2]))
            || (-C * 3 + -l[0] * 1 + -s[2] * 1 + a[4] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 2 + l[0] + -a[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!((!(l[3] <= l[2])) || (-C * 2 + -a[2] * 1 + a[4] <= RealNumRep::new(0, 1)));
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + l[0] + -a[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 2 + -a[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 1 + -a[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(
        (!(l[2] <= l[0]))
            || (!(l[3] <= l[2]))
            || (-C * 4 + -a[0] * 1 + a[4] <= RealNumRep::new(0, 1))
    );
    assert!(
        (!(l[2] <= l[0]))
            || (!(l[3] <= l[2]))
            || (-C * 3 + -a[1] * 1 + a[4] <= RealNumRep::new(0, 1))
    );
    assert!(
        (!(l[2] <= l[0]))
            || (!(l[3] <= l[2]))
            || (-C * 4 + -l[0] * 1 + -s[1] * 1 + a[4] <= RealNumRep::new(0, 1))
    );
    assert!(
        (!(l[2] <= l[0]))
            || (!(l[3] <= l[2]))
            || (-C * 5 + -l[0] * 1 + -s[0] * 1 + a[4] <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(RealNumRep::new(5, 1)),
    )]);
    ret = ret.intersection(&tmp);
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-a[0] * 1 + l[0] + s[0] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_q_4_t_5_l_5(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 5);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[4] + -l[3] * 1 <= s[4]);
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!((l[3] == l[2]) || (s[3] <= a[3] + -l[3] * 1 + -B * 1));
    assert!(s[3] >= a[2] + -l[2] * 1 + -B * 1);
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!((l[2] == l[1]) || (s[2] <= a[2] + -l[2] * 1 + -B * 1));
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    assert!(s[4] <= a[4] + -l[3] * 1);
    assert!((l[3] == l[2]) || (a[4] <= a[3] + -B * 1 + C));
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!((l[2] == l[1]) || (!(l[2] <= l[1])));
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!((a[2] <= a[1] + -B * 1 + C) || (s[3] >= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!((s[3] >= a[2] + -l[1] * 1) || (!(a[2] <= a[1] + -B * 1 + C)));
    assert!(
        (l[3] == l[1])
            || (!(a[2] <= a[1] + -B * 1 + C))
            || (a[2] + -l[1] * 1 + C == a[3] + -l[3] * 1 + -B * 1)
    );
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (a[2] + -l[2] * 1 == a[1] + -l[1] * 1 + C));
    assert!((l[2] == l[1]) || (l[3] == l[2]) || (a[3] + -l[3] * 1 == a[2] + -l[2] * 1 + C));
    assert!((l[2] == l[1]) || (a[3] <= a[2] + C) || (!(l[2] == l[3])));
    assert!((l[3] == l[2]) || (!(l[3] <= l[2])));
    assert!(
        (l[1] == l[0])
            || (l[3] == l[2])
            || (a[2] <= a[1] + -B * 1 + C)
            || (a[1] + -l[1] * 1 + C * 2 == a[3] + -l[3] * 1)
    );
    assert!(a[4] <= a[3] + C);
    assert!(s[3] <= a[3] + -l[2] * 1);
    assert!(
        (l[1] == l[0]) || (!(l[2] <= l[1])) || (!(l[3] <= l[2])) || (a[4] <= a[1] + -B * 1 + C * 3)
    );
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!(
        (l[1] == l[0]) || (!(l[1] == l[2])) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    assert!(
        (l[1] == l[0])
            || (!(l[2] <= l[1]))
            || (!(l[3] <= l[2]))
            || (a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1))
    );
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    assert!(-B * 1 + -l[2] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1);
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    assert!(
        (l[2] == l[1])
            || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2)
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1)
    );
    assert!(-a[1] * 1 + l[0] + s[1] <= RealNumRep::new(0, 1));
    assert!(
        (-C * 1 + a[2] + -l[2] * 1 + -B * 1 + -a[1] * 1 + l[0] == RealNumRep::new(0, 1))
            || (!(a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1))
    );
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    assert!(
        (!(l[0] == l[1]))
            || (l[2] == l[0])
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!((l[3] == l[2]) || (s[2] <= -B * 1 + -l[3] * 1 + a[3] + -C * 1));
    assert!(
        (l[3] == l[2])
            || (!(l[1] <= l[0]))
            || (a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1)
            || (s[1] <= -B * 1 + -l[3] * 1 + a[3] + -C * 2)
    );
    assert!((l[2] == l[1]) || (!(l[3] <= l[2])) || (a[4] <= a[2] + -B * 1 + C * 2));
    assert!(
        (a[2] + -l[0] * 1 + C == a[3] + -l[3] * 1 + -B * 1)
            || (!(a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1))
    );
    assert!((l[2] == l[1]) || (s[3] <= a[2] + -l[2] * 1 + -B * 1 + C));
    assert!(-C * 1 + l[0] + -a[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(
        (l[3] == l[2])
            || (!(l[1] <= l[0]))
            || (a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1)
            || (s[0] <= -B * 1 + -l[3] * 1 + a[3] + -C * 3)
            || (RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0])
    );
    assert!(
        (l[3] == l[2])
            || (a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1)
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 2)
            || (!(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0]))
    );
    assert!(
        (!(a[1] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 2))
            || (-B * 1 + l[0] + -l[3] * 1 + a[3] + -a[1] * 1 + -C * 2 == RealNumRep::new(0, 1))
    );
    assert!(
        (l[3] == l[2])
            || (!(l[2] <= l[0]))
            || (a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1)
            || (a[1] + -l[0] * 1 + l[3] + -a[3] * 1 + C * 2 <= RealNumRep::new(0, 1))
    );
    assert!(
        (a[1] + -l[0] * 1 + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + -s[2] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[1] == l[2]))
            || (l[3] == l[1])
            || (a[2] + -l[0] * 1 + l[3] + -a[3] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!(s[2] <= a[2] + -l[1] * 1);
    assert!(s[3] <= a[2] + -l[1] * 1 + C);
    assert!(l[0] + -a[1] * 1 + s[2] + -C * 1 <= RealNumRep::new(0, 1));
    assert!((!(l[3] <= l[1])) || (a[3] + -a[2] * 1 + -C * 1 <= B));
    assert!((!(l[3] <= l[2])) || (a[4] <= a[2] + C * 2));
    assert!((s[3] >= a[2] + -l[1] * 1) || (C + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1)));
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[2] <= l[1]))
            || (!(l[3] <= l[2]))
            || (-C * 2 + -l[0] * 1 + -s[3] * 1 + a[4] <= RealNumRep::new(0, 1))
    );
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[2] <= l[1]))
            || (!(l[3] <= l[2]))
            || (-C * 3 + -l[0] * 1 + -s[2] * 1 + a[4] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[2] <= l[1]))
            || (!(l[3] <= l[2]))
            || (-C * 4 + -a[0] * 1 + a[4] <= RealNumRep::new(0, 1))
    );
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[2] <= l[1]))
            || (-C * 5 + -l[0] * 1 + -s[0] * 1 + a[4] <= RealNumRep::new(0, 1))
            || (!(RealNumRep::new(0, 1) <= -C * 1 + a[4] + -a[3] * 1))
    );
    assert!(-C * 2 + l[0] + -a[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(s[3] >= -B * 1 + -l[3] * 1 + a[3] + -C * 1);
    assert!(s[2] >= -B * 1 + -l[3] * 1 + a[3] + -C * 2);
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[2] <= l[1]))
            || (!(l[3] <= l[2]))
            || (-C * 5 + -l[0] * 1 + -s[0] * 1 + a[4] <= RealNumRep::new(0, 1))
    );
    assert!(
        (!(l[2] <= l[1]))
            || (!(l[3] <= l[2]))
            || (-C * 3 + -a[1] * 1 + a[4] <= RealNumRep::new(0, 1))
    );
    assert!(-B * 1 + -l[3] * 1 + a[3] + -C * 3 <= a[0] + -l[0] * 1);
    assert!(s[0] >= -B * 1 + -l[3] * 1 + a[3] + -C * 4);
    assert!(l[0] + -C * 2 + -a[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(s[1] >= -B * 1 + -l[3] * 1 + a[3] + -C * 3);
    assert!(
        (s[3] >= a[2] + -l[1] * 1)
            || (-l[0] * 1 + -s[3] * 1 + a[1] + C <= RealNumRep::new(0, 1))
            || (C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[2] <= l[1]))
            || (!(l[3] <= l[2]))
            || (-C * 4 + -l[0] * 1 + a[4] + -s[1] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + -a[0] * 1 + s[0] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + l[0] + -a[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_0_t_5_l_0(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 0);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Excluded(a[0] + -s[3] * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[4] >= s[3]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    let tmp =
        IntervalList::from_interval_lists(vec![IntervalList::interval_lower(Bound::Included(L0))]);
    ret = ret.intersection(&tmp);
    assert!(
        (C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1))
            || (C + a[2] + -a[1] * 1 + B + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(
        (a[2] + B + -a[1] * 1 + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1))
            || (C + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 1 + -a[2] * 1 + -B * 1 + a[1] + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + a[2] + -B * 1 + -a[3] * 1 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + a[2] + -B * 1 + -a[3] * 1 + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 1 + a[2] + -B * 1 + -a[3] * 1 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(
        (-C * 1 + -a[1] * 1 + a[2] <= RealNumRep::new(0, 1))
            || (C + -a[2] * 1 + B + a[3] + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(
        (-C * 1 + -a[1] * 1 + a[2] <= RealNumRep::new(0, 1))
            || (C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
            || (C * 2 + -a[2] * 1 + B + a[3] + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 1 + a[2] + -B * 1 + -a[3] * 1 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + a[2] + -B * 1 + -a[3] * 1 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + a[2] + -B * 1 + -a[3] * 1 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + a[2] + -B * 1 + -a[3] * 1 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (-a[2] * 1 + a[3] + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 1 + a[2] + -B * 1 + -a[4] * 1 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-a[3] * 1 + -B * 1 + a[1] + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + a[2] + -B * 1 + -a[4] * 1 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(a[2] + -B * 1 + -a[4] * 1 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    if !((a[3] + B + -a[1] * 1 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
        || (-C * 1 + -a[2] * 1 + B + a[3] <= RealNumRep::new(0, 1))
        || (-C * 1 + a[2] + -a[1] * 1 + B <= RealNumRep::new(0, 1))
        || (C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(a[3] + -s[4] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((a[3] + B + -a[1] * 1 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
        || (-C * 1 + -a[2] * 1 + B + a[3] <= RealNumRep::new(0, 1))
        || (-C * 1 + a[2] + -a[1] * 1 + B <= RealNumRep::new(0, 1))
        || (C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(a[3] + -s[4] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (C * 2 + a[2] + -a[1] * 1 + B + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
            || (!(-C * 1 + a[2] + -a[1] * 1 + B <= RealNumRep::new(0, 1)))
            || (RealNumRep::new(0, 1) <= C + a[2] + B + -a[3] * 1)
    );
    assert!(
        (C * 2 + a[2] + -a[1] * 1 + B + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
            || (-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1))
            || (C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 2 + -a[2] * 1 + a[1] + -B * 1 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -a[2] * 1 + a[1] + -B * 1 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -a[2] * 1 + a[1] + -B * 1 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -a[2] * 1 + -B * 1 + a[1] + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (a[3] + B + -a[1] * 1 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (!(-C * 1 + a[2] + -a[1] * 1 + B <= RealNumRep::new(0, 1)))
            || (C + a[2] + -a[1] * 1 + B + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 4 + -a[2] * 1 + a[1] + -B * 1 + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 1 + -a[2] * 1 + a[1] + -B * 1 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + a[2] + -B * 1 + -a[4] * 1 + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(a[4] + -s[4] * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 2 + -a[2] * 1 + a[1] + -B * 1 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -a[4] * 1 + -B * 1 + a[1] + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (!(-C * 1 + a[2] + -a[1] * 1 + B <= RealNumRep::new(0, 1)))
            || (!(-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1)))
            || (C + -a[1] * 1 + B + a[3] + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(-B * 1 + -C * 3 + -a[4] * 1 + a[3] + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-B * 1 + -C * 1 + -a[4] * 1 + a[3] + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 1 + -a[3] * 1 + -B * 1 + a[1] + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (!(-C * 1 + a[2] + -a[1] * 1 + B <= RealNumRep::new(0, 1)))
            || (-C * 1 + a[2] + -a[3] * 1 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 1 + -a[3] * 1 + -B * 1 + a[1] + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -a[3] * 1 + -B * 1 + a[1] + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -a[3] * 1 + -B * 1 + a[1] + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-a[4] * 1 + -B * 1 + a[1] + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-B * 1 + -C * 2 + -a[4] * 1 + a[3] + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    if !((-C * 1 + -a[2] * 1 + B + a[3] <= RealNumRep::new(0, 1))
        || (!(-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1)))
        || (C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
        || (C + -a[1] * 1 + B + a[3] + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(a[3] + -s[4] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (a[2] + -a[4] * 1 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1))
            || (!(-C * 1 + a[2] + -a[1] * 1 + B <= RealNumRep::new(0, 1)))
    );
    if !((-C * 1 + -a[1] * 1 + B + a[3] + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
        || (C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(a[3] + -s[4] * 1)),
            IntervalList::interval_upper(Bound::Excluded(C + a[1] + -B * 1 + -s[3] * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((-a[2] * 1 + B + a[3] + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
        || (-C * 1 + -a[1] * 1 + B + a[3] + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
        || (C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(C + a[1] + -B * 1 + -s[3] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 2 + -a[3] * 1 + -B * 1 + a[1] + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(
        (a[1] + -B * 1 + -a[3] * 1 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1))
            || (-C * 1 + a[2] + -a[1] * 1 + B <= RealNumRep::new(0, 1))
    );
    assert!(
        (-C * 1 + a[2] + -a[1] * 1 + B <= RealNumRep::new(0, 1))
            || (C + a[1] + -B * 1 + -a[4] * 1 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(C + a[3] + -s[4] * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !((!(-C * 1 + -a[1] * 1 + a[2] <= RealNumRep::new(0, 1)))
        || (!(-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1)))
        || (C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
        || (C + -a[1] * 1 + B + a[3] + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(C + a[1] + -B * 1 + -s[3] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-B * 1 + -C * 4 + -a[4] * 1 + a[3] + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    if !((a[3] + B + -a[1] * 1 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
        || (!(-C * 1 + -a[1] * 1 + a[2] <= RealNumRep::new(0, 1)))
        || (C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
        || (!(-C * 1 + -a[2] * 1 + a[3] <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(C + a[1] + -B * 1 + -s[3] * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        -B * 2 + -C * 1 + -a[4] * 1 + a[3] + -a[2] * 1 + a[1] + -s[2] * 1 + s[4]
            <= RealNumRep::new(0, 1)
    );
    assert!(
        -B * 2 + -C * 2 + -a[4] * 1 + a[3] + -a[2] * 1 + a[1] + -s[1] * 1 + s[4]
            <= RealNumRep::new(0, 1)
    );
    assert!(
        -B * 2 + -C * 3 + -a[4] * 1 + a[3] + -a[2] * 1 + a[1] + s[4] + -s[0] * 1
            <= RealNumRep::new(0, 1)
    );
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(C + -s[2] * 1 + s[0] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 5 + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 1 + -a[4] * 1 + -B * 1 + a[1] + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_1_t_5_l_1_nl_0(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 1);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[0] + -l[0] * 1 <= s[3]);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Excluded(a[1] + -s[3] * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(s[4] >= s[3]);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + a[1] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    if !(s[3] >= a[1] + -l[0] * 1 + -B * 1 + C) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_lower(Bound::Excluded(l[0])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + a[1] + -B * 1 + C),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_upper(Bound::Included(-s[2] * 1 + a[1] + -B * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + a[1] + -B * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -B * 1 + a[1] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[3] + C),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[1] + -B * 1 + C * 3)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-B * 1 + a[1] + -C * 1 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    if !(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[1] + -B * 1 + C * 2),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -B * 1 + a[1] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -B * 1 + a[1] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + a[1] + -B * 1 + C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[4] + -a[2] * 1 + a[1] + C)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(-C * 3 + s[4] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 4 + s[4] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))
            || (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[3])),
        IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[1] + -B * 1 + C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    if !((s[4] >= a[3] + -l[0] * 1) || (C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    if !(C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(a[2] + -a[4] * 1 + -B * 1 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + a[2] + -a[4] * 1 + -B * 1 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 2 + a[2] + -a[4] * 1 + -B * 1 + s[4] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + a[2] + -a[4] * 1 + -B * 1 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 1 + a[2] + -a[4] * 1 + -B * 1 + s[4] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 1 + s[1] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 2 + -a[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 3 + -a[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_1_t_5_l_0_nl_0(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 1);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[0] + -l[0] * 1 <= s[4]);
    assert!(!(a[0] + -l[0] * 1 <= s[3]));
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + a[1] + -B * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_lower(Bound::Excluded(l[0])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + a[1] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -B * 1 + a[1] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -B * 1 + a[1] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -B * 1 + a[1] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_upper(Bound::Included(-s[2] * 1 + a[1] + -B * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + a[1] + -B * 1 + C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(a[1] >= a[0]);
    if !((a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
        || (s[4] >= a[1] + -l[0] * 1 + -B * 1 + C * 2))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    if !((a[2] <= a[1] + -B * 1 + C) || (!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1)))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[3])),
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[1] + -B * 1 + C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[1] + -B * 1 + C * 3)),
    ]);
    ret = ret.intersection(&tmp);
    if !(s[3] >= a[1] + -l[0] * 1 + -B * 1 + C) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((a[3] <= a[2] + C) || (C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[3] * 1 + a[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[3] * 1 + a[2] + C),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[2] + C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(-s[3] * 1 + a[2])),
        IntervalList::interval_lower(Bound::Included(-s[3] * 1 + a[1] + -B * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[2] * 1 + a[2]),
    )]);
    ret = ret.intersection(&tmp);
    if !(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[1] + -B * 1 + C * 2)),
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[3] + -a[2] * 1 + a[1] + C)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[3] + -a[2] * 1 + a[1] + C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[3] * 1 + a[3] + -a[2] * 1 + a[1] + C),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[3] * 1 + a[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[3] + C),
    )]);
    ret = ret.intersection(&tmp);
    if !(!(a[2] <= a[1] + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[3])),
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[2] + C)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[0])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[4] + -a[2] * 1 + a[1] + C)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[4] + -a[3] * 1 + a[1] + C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[4] + -a[3] * 1 + a[2] + C + B),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    if !((a[3] <= a[2] + C) || (C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[3] * 1 + a[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[3] * 1 + a[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(C + -s[2] * 1 + s[0] <= RealNumRep::new(0, 1));
    if !(C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[3] * 1 + a[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 5 + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[4] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    if !((s[4] >= a[3] + -l[0] * 1) || (C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 4 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    if !(C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[3])),
            IntervalList::interval_lower(Bound::Excluded(l[0])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[3])),
            IntervalList::interval_lower(Bound::Excluded(l[0])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 2 + a[2] + -a[4] * 1 + -B * 1 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(a[2] + -a[4] * 1 + -B * 1 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 1 + a[2] + -a[4] * 1 + -B * 1 + s[4] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + a[2] + -a[4] * 1 + -B * 1 + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_2_t_5_l_2_nl_1(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 2);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Excluded(a[2] + -s[3] * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(a[1] + -l[1] * 1 <= s[3]);
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[1] >= a[0]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + a[2] + -B * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!(s[3] >= s[2]);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[2] * 1 + a[2] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[3] + C),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[4] >= s[3]);
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    if !(s[4] >= a[1] + -l[1] * 1 + -B * 1 + C * 2) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_lower(Bound::Excluded(l[1])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -B * 1 + a[2] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_point(Bound::Included(a[2] + -a[1] * 1 + l[1] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -B * 1 + a[2] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[3])),
        IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[2] + -B * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + -B * 1 + a[2] + -C * 1)),
        IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -B * 1 + a[2] + -C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    if !(!(l[0] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[0])),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + a[2] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -B * 1 + a[2] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-B * 1 + a[2] + -C * 2 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -B * 1 + a[2] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    if !((l[1] == l[0]) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[1]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + l[0] + -B * 1 + a[2] + -C * 1)),
        IntervalList::interval_point(Bound::Included(-C * 1 + a[2] + -B * 1 + -a[1] * 1 + l[0])),
    ]);
    ret = ret.intersection(&tmp);
    assert!(s[3] >= a[1] + -l[1] * 1 + -B * 1 + C);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[2] + -B * 1 + C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[4] + -a[3] * 1 + a[2] + C)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    assert!((l[1] == l[0]) || (s[4] <= a[4] + -a[3] * 1 + a[1] + -l[1] * 1 + C * 2));
    if !(C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 2 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-a[1] * 1 + l[0] + s[1] <= RealNumRep::new(0, 1));
    if !(C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(l[0] + -C * 1 + s[1] + -a[0] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + a[2] + -B * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(l[0] + -C * 2 + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(l[0] + -a[1] * 1 + -C * 1 + s[2] <= RealNumRep::new(0, 1));
    if !((C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1))
        || (RealNumRep::new(0, 1) <= l[0] + C + -a[1] * 1 + s[0]))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((!(RealNumRep::new(0, 1) <= l[0] + C + -a[1] * 1 + s[0]))
        || (-l[0] * 1 + a[1] + -s[4] * 1 + C * 2 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(l[0] + s[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 3 + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(
        (C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (-l[0] * 1 + -s[3] * 1 + a[1] + C <= RealNumRep::new(0, 1))
    );
    assert!(
        (-C * 1 + a[1] + -l[0] * 1 + -s[1] * 1 <= RealNumRep::new(0, 1))
            || (!(RealNumRep::new(0, 1) <= l[0] + -C * 3 + -a[1] * 1 + s[4]))
    );
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(
        (a[1] + -l[0] * 1 + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 4 + s[4] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(l[0] + -a[1] * 1 + s[4] + -C * 3 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -B * 1 + -a[4] * 1 + a[3] + s[4] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -B * 1 + -s[0] * 1 + -a[4] * 1 + a[3] + s[4] <= RealNumRep::new(0, 1));
    assert!(l[0] + -B * 1 + -a[1] * 1 + -a[4] * 1 + a[3] + s[4] + -C * 2 <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 3 + -B * 1 + -a[4] * 1 + a[3] + s[4] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 1 + -B * 1 + -s[3] * 1 + -a[4] * 1 + a[3] + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -B * 1 + -s[1] * 1 + -a[4] * 1 + a[3] + s[4] <= RealNumRep::new(0, 1));
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[4] + -s[2] * 1 <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_2_t_5_l_1_nl_1(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 2);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[1] + -l[1] * 1 <= s[4]);
    assert!(a[0] + -l[0] * 1 <= s[3]);
    assert!(!(a[1] + -l[1] * 1 <= s[3]));
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[2] * 1 + a[2] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_point(Bound::Included(a[2] + -a[1] * 1 + l[1] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    if !((l[1] == l[0]) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[1]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[4] * 1 + a[2] + -B * 1 + C),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!(
        (s[4] >= a[1] + -l[1] * 1 + -B * 1 + C * 2)
            || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_upper(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[2] + -B * 1 + C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + a[2] + -B * 1),
    )]);
    ret = ret.intersection(&tmp);
    if !(!(l[0] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(-s[3] * 1 + a[2] + -B * 1 + C)),
            IntervalList::interval_point(Bound::Included(l[0])),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    if !(!(l[0] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[0])),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + a[2] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(s[3] >= a[1] + -l[0] * 1 + -B * 1 + C) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(l[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    assert!(s[3] >= a[1] + -l[1] * 1 + -B * 1 + C);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_lower(Bound::Excluded(l[1])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -B * 1 + a[2] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -B * 1 + a[2] + -C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -B * 1 + a[2] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-B * 1 + a[2] + -C * 2 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -B * 1 + a[2] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -B * 1 + a[2] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 2 + -a[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(
        (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))
            || (C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1))
    );
    assert!(
        (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))
            || (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(
        (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))
            || (C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!((s[4] >= a[3] + -l[1] * 1) || (s[4] >= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!(s[4] <= a[3] + -l[1] * 1 + C);
    assert!(l[0] + -C * 3 + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (RealNumRep::new(0, 1) <= l[0] + B + s[3] + -a[3] * 1)
            || (C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1))
            || (!(s[3] >= a[1] + -l[0] * 1 + -B * 1 + C))
    );
    assert!(
        (!(l[0] + B + s[3] + -a[3] * 1 <= RealNumRep::new(0, 1)))
            || (C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1))
            || (!(s[3] >= a[1] + -l[0] * 1 + -B * 1 + C))
    );
    if !((s[4] >= a[3] + -l[0] * 1) || (C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((s[4] >= a[3] + -l[0] * 1) || (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((s[4] >= a[3] + -l[0] * 1) || (C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 4 + -a[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[4] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(l[0] + -C * 1 + s[1] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_2_t_5_l_0_nl_1(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 2);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[1] + -l[1] * 1 <= s[4]);
    assert!(!(a[0] + -l[0] * 1 <= s[3]));
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + a[2] + -B * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    assert!((!(l[0] == l[1])) || (s[2] >= a[1] + -l[0] * 1 + -B * 1));
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[2] * 1 + a[2] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -B * 1 + a[2] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[3] * 1 + a[3]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_lower(Bound::Excluded(l[1])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -B * 1 + a[2] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_point(Bound::Included(a[2] + -a[1] * 1 + l[1] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[3])),
        IntervalList::interval_lower(Bound::Included(-s[4] * 1 + a[2] + -B * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!((a[2] <= a[1] + -B * 1 + C) || (s[3] >= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!(s[2] <= a[2] + -l[1] * 1);
    assert!((s[3] >= a[2] + -l[1] * 1) || (!(a[2] <= a[1] + -B * 1 + C)));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + a[2] + -B * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[2] + -B * 1 + C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -B * 1 + a[2] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -B * 1 + a[2] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    if !(!(l[0] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -B * 1 + a[2] + -C * 2)),
            IntervalList::interval_point(Bound::Included(l[0])),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[0] == l[1])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[0])),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + a[2] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[4] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!((s[3] >= a[2] + -l[1] * 1) || (C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1)));
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!((s[3] >= a[2] + -l[1] * 1) || (C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1)));
    assert!(-C * 2 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[3] + C),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    if !((s[4] >= a[1] + -l[1] * 1 + -B * 1 + C * 2) || (a[2] <= a[1] + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[1] == l[0]) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[1]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    assert!(s[3] <= a[2] + -l[1] * 1 + C);
    assert!(
        (s[4] >= a[3] + -l[1] * 1)
            || (!(a[2] <= a[1] + -B * 1 + C))
            || (s[4] >= a[2] + -l[1] * 1 + C)
    );
    assert!(s[4] <= a[2] + -l[1] * 1 + C * 2);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[1])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[4] + -a[3] * 1 + a[2] + C)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(s[4] <= a[4] + -a[3] * 1 + a[1] + -l[1] * 1 + C * 2);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[4] <= a[4] + -a[3] * 1 + a[2] + -l[1] * 1 + C + B);
    assert!(-C * 4 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    if !(C + -s[4] * 1 + s[2] <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 2 + s[3] + -s[2] * 1 <= RealNumRep::new(0, 1));
    if !((!(l[1] <= l[0])) || (C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Included(-s[4] * 1 + a[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (!(l[1] <= l[0]))
            || (-l[0] * 1 + -B * 1 + a[3] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    if !((s[4] >= a[3] + -l[0] * 1) || (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[0]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_3_t_5_l_3_nl_2(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 3);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Excluded(a[3] + -s[3] * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(a[4] >= a[3]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[4] >= s[3]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(a[2] + -l[2] * 1 <= s[3]);
    assert!((l[2] == l[1]) || (s[2] <= a[2] + -l[2] * 1 + -B * 1));
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[4] * 1 + a[3] + -B * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_lower(Bound::Excluded(l[2])),
    ]);
    ret = ret.intersection(&tmp);
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[3] + -B * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + a[3] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!((l[2] == l[1]) || (!(l[2] <= l[1])));
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (a[2] + -l[2] * 1 == a[1] + -l[1] * 1 + C));
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(a[3] + -a[2] * 1 + l[2] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!((l[2] == l[1]) || (s[3] <= a[2] + -l[2] * 1 + -B * 1 + C));
    assert!((l[2] == l[1]) || (s[4] <= a[2] + -l[2] * 1 + -B * 1 + C * 2));
    assert!(s[2] <= a[2] + -l[1] * 1);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!(
        (!(l[0] == l[1]))
            || (l[2] == l[0])
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    if !((l[1] == l[0]) || (a[2] <= a[1] + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(a[3] + -a[1] * 1 + l[1] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(a[2] <= a[1] + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_point(Bound::Included(
                a[3] + -B * 1 + -a[2] * 1 + l[1] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (l[1] == l[0]) || (!(l[2] <= l[1])) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    assert!((a[3] <= a[2] + -B * 1 + C) || (s[4] >= a[2] + -l[2] * 1 + -B * 1 + C));
    assert!((s[4] >= a[3] + -l[2] * 1) || (!(a[3] <= a[2] + -B * 1 + C)));
    if !((l[2] == l[1]) || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    assert!(-B * 1 + -l[2] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1);
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    assert!(
        (l[2] == l[1])
            || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2)
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1)
    );
    assert!(-a[1] * 1 + l[0] + s[1] <= RealNumRep::new(0, 1));
    assert!(
        (-C * 1 + a[2] + -l[2] * 1 + -B * 1 + -a[1] * 1 + l[0] == RealNumRep::new(0, 1))
            || (!(a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1))
    );
    assert!(
        (!(l[2] <= l[1]))
            || (s[4] >= a[1] + -l[1] * 1 + -B * 1 + C * 2)
            || (a[2] <= a[1] + -B * 1 + C)
            || (a[3] <= a[1] + -B * 1 + C * 2)
    );
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    if !((s[4] >= a[3] + -l[1] * 1)
        || (a[2] <= a[1] + -B * 1 + C)
        || (!(a[3] <= a[1] + -B * 1 + C * 2)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[1]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[1] == l[0])
        || (!(l[2] <= l[1]))
        || (a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))
            || (!(a[2] <= a[1] + -B * 1 + C))
            || (s[4] >= a[2] + -l[1] * 1 + C)
    );
    assert!(
        (s[4] >= a[3] + -l[1] * 1)
            || (!(a[2] <= a[1] + -B * 1 + C))
            || (!(a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1)))
    );
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(a[3] + -B * 1 + -a[2] * 1 + l[0] + -C * 1)),
        IntervalList::interval_lower(Bound::Excluded(-a[2] * 1 + l[0] + -B * 1 + a[3] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[2] * 1 + -B * 1 + a[3] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -B * 1 + a[3] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-B * 1 + a[3] + -C * 3 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    if !(!(l[1] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_upper(Bound::Included(
                -a[2] * 1 + l[0] + -B * 1 + a[3] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -B * 1 + a[3] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[1] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_upper(Bound::Included(
                -a[2] * 1 + l[0] + -B * 1 + a[3] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -B * 1 + a[3] + -C * 3)),
            IntervalList::interval_upper(Bound::Included(
                -a[1] * 1 + l[0] + -B * 1 + a[3] + -C * 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -B * 1 + a[3] + -C * 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -B * 1 + a[3] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(-C * 2 + -B * 1 + -a[1] * 1 + a[3] + l[0])),
        IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + l[0] + -B * 1 + a[3] + -C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    if !(!(l[2] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_upper(Bound::Included(
                -a[2] * 1 + l[0] + -B * 1 + a[3] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + a[3] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 1 + l[0] + s[1] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    if !((!(l[1] <= l[0])) || (!(l[1] == l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_upper(Bound::Included(-a[2] * 1 + l[0] + a[3] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (a[1] + -l[0] * 1 + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + -s[2] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    assert!(s[4] <= a[3] + -l[2] * 1 + C);
    if !(a[3] + -a[2] * 1 + -C * 1 <= B) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[1]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (!(l[2] <= l[1]))
            || (s[4] >= a[3] + -l[1] * 1)
            || (C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(
        (!(l[2] <= l[1]))
            || (s[4] >= a[3] + -l[1] * 1)
            || (s[4] >= a[2] + -l[1] * 1 + C)
            || (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (RealNumRep::new(0, 1) <= C + l[0] + -a[1] * 1 + s[0])
    );
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(
        (!(l[2] <= l[1]))
            || (s[4] >= a[3] + -l[1] * 1)
            || (s[4] >= a[2] + -l[1] * 1 + C)
            || (C * 2 + -s[4] * 1 + s[1] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 1 + -a[1] * 1 + l[0] + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + l[0] + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + l[0] + s[4] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -a[1] * 1 + l[0] + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -a[1] * 1 + l[0] + s[3] <= RealNumRep::new(0, 1));
    assert!(s[3] <= a[2] + -l[1] * 1 + C);
    assert!(
        (s[4] >= a[3] + -l[0] * 1)
            || (s[4] >= a[2] + -l[0] * 1 + C)
            || (!(RealNumRep::new(0, 1) <= C + l[0] + -a[1] * 1 + s[0]))
            || (!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1)))
    );
    assert!(
        (!(l[2] <= l[0]))
            || (s[4] >= a[3] + -l[0] * 1)
            || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
            || (!(RealNumRep::new(0, 1) <= C + l[0] + -a[1] * 1 + s[0]))
            || (C * 2 + a[1] + -l[0] * 1 + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[4] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(s[4] <= a[2] + -l[1] * 1 + C * 2);
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + l[0] + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_3_t_5_l_2_nl_2(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 3);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[2] + -l[2] * 1 <= s[4]);
    assert!(a[1] + -l[1] * 1 <= s[3]);
    assert!(!(a[2] + -l[2] * 1 <= s[3]));
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[1] >= a[0]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(s[3] >= s[2]);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[4] * 1 + a[3] + -B * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[3] >= a[2] + -l[2] * 1 + -B * 1);
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!((l[2] == l[1]) || (s[2] <= a[2] + -l[2] * 1 + -B * 1));
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (a[2] + -l[2] * 1 == a[1] + -l[1] * 1 + C));
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(a[3] + -a[2] * 1 + l[2] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (!(l[2] <= l[1])));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + a[3] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    assert!((l[2] == l[1]) || (s[3] <= a[2] + -l[2] * 1 + -B * 1 + C));
    assert!(
        (l[2] == l[1])
            || (!(l[1] <= l[0]))
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_lower(Bound::Excluded(l[2])),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[3] + -B * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!(s[3] >= a[1] + -l[1] * 1 + -B * 1 + C);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(a[3] + -a[1] * 1 + l[1] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((l[2] == l[1]) || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -B * 1 + a[3] + -C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(-a[1] * 1 + l[0] + s[1] <= RealNumRep::new(0, 1));
    if !((l[1] == l[0])
        || (!(l[2] <= l[1]))
        || (a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    assert!(
        (l[1] == l[0]) || (!(l[1] == l[2])) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    assert!(
        (l[2] == l[1])
            || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2)
            || (RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0])
    );
    assert!(-B * 1 + -l[2] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1);
    assert!((s[4] >= a[3] + -l[2] * 1) || (s[4] >= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    assert!(
        (!(a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1))
            || (-C * 1 + a[2] + -l[2] * 1 + -B * 1 + -a[1] * 1 + l[0] == RealNumRep::new(0, 1))
    );
    if !(!(l[0] == l[2])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[0])),
            IntervalList::interval_upper(Bound::Included(-s[2] * 1 + -B * 1 + a[3] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + -B * 1 + a[3] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -B * 1 + a[3] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    if !((!(l[1] <= l[0])) || (!(l[1] == l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_upper(Bound::Included(-a[2] * 1 + l[0] + a[3] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-B * 1 + a[3] + -C * 3 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -B * 1 + a[3] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    if !(!(l[0] == l[2])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[0])),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + a[3] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[0] == l[2])) || (RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[0])),
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -B * 1 + a[3] + -C * 3)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[0])),
            IntervalList::interval_lower(Bound::Excluded(-a[2] * 1 + l[0] + a[3] + -C * 1)),
            IntervalList::interval_upper(Bound::Included(
                -a[1] * 1 + l[0] + -B * 1 + a[3] + -C * 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -B * 1 + a[3] + -C * 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(-C * 2 + -B * 1 + -a[1] * 1 + a[3] + l[0])),
        IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + l[0] + -B * 1 + a[3] + -C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(-C * 1 + l[0] + s[1] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[4] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(s[4] <= a[3] + -l[2] * 1 + C);
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + l[0] + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 1 + -a[1] * 1 + s[2] + l[0] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -a[1] * 1 + l[0] + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -a[1] * 1 + l[0] + s[4] <= RealNumRep::new(0, 1));
    assert!(
        (l[2] == l[0])
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1)
            || (!(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0]))
    );
    assert!((s[4] >= a[3] + -l[2] * 1) || (s[4] >= a[2] + -l[2] * 1 + -B * 1 + C));
    assert!((l[2] == l[1]) || (s[4] <= a[2] + -l[2] * 1 + -B * 1 + C * 2));
    assert!(
        (!(l[2] <= l[1]))
            || (s[4] >= a[3] + -l[1] * 1)
            || (C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(
        (!(l[2] <= l[1]))
            || (s[4] >= a[3] + -l[1] * 1)
            || (C * 2 + -s[4] * 1 + s[1] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 3 + l[0] + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (C + a[1] + -l[0] * 1 + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + l[0] + s[4] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (!(l[2] <= l[1]))
            || (s[4] >= a[3] + -l[1] * 1)
            || (C * 2 + a[1] + -l[0] * 1 + -s[4] * 1 <= RealNumRep::new(0, 1))
            || (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(
        (a[1] + -s[2] * 1 + -l[0] * 1 <= RealNumRep::new(0, 1))
            || (C + -s[2] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(C + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_3_t_5_l_1_nl_2(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 3);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[2] + -l[2] * 1 <= s[4]);
    assert!(a[0] + -l[0] * 1 <= s[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(a[4] >= a[3]);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[4] * 1 + a[3] + -B * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[2] == l[1]) || (s[2] <= a[2] + -l[2] * 1 + -B * 1));
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + a[3] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_lower(Bound::Excluded(l[2])),
    ]);
    ret = ret.intersection(&tmp);
    assert!(s[3] >= a[2] + -l[2] * 1 + -B * 1);
    if !((!(l[0] == l[1])) || (l[2] == l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(a[3] + -a[2] * 1 + l[2] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[3] + -B * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((!(l[0] == l[1])) || (s[2] >= a[1] + -l[0] * 1 + -B * 1));
    assert!((!(l[0] == l[1])) || (s[0] >= -B * 1 + -l[0] * 1 + a[1] + -C * 2));
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (a[2] + -l[2] * 1 == a[1] + -l[1] * 1 + C));
    assert!(!(a[1] + -l[1] * 1 <= s[3]));
    assert!(s[3] >= a[1] + -l[1] * 1 + -B * 1 + C);
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    if !(l[1] == l[0]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(a[3] + -a[1] * 1 + l[1] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    if !(!(l[2] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + a[3] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + -B * 1 + a[3] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -B * 1 + a[3] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -B * 1 + a[3] + -C * 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-B * 1 + a[3] + -C * 3 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[2] == l[1]) || (!(l[2] <= l[1])));
    assert!(
        (l[1] == l[0]) || (!(l[1] == l[2])) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[2] * 1 + -B * 1 + a[3] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -B * 1 + a[3] + -C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -B * 1 + a[3] + -C * 3)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -B * 1 + a[3] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    if !(!(l[0] == l[2])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(-a[2] * 1 + l[0] + a[3] + -C * 1)),
            IntervalList::interval_point(Bound::Included(l[0])),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (s[4] <= a[2] + -l[2] * 1 + -B * 1 + C * 2));
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    assert!((l[2] == l[1]) || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2));
    if !((l[2] == l[1]) || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (!(l[0] == l[1]))
            || (l[2] == l[0])
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!(s[4] <= a[4] + -l[2] * 1);
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!(-B * 1 + -l[2] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1);
    if !((l[1] == l[0])
        || (!(l[2] <= l[1]))
        || (a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((s[4] >= a[1] + -l[1] * 1 + -B * 1 + C * 2) || (a[3] <= a[1] + -B * 1 + C * 2));
    assert!((s[4] >= a[3] + -l[1] * 1) || (!(a[3] <= a[1] + -B * 1 + C * 2)));
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    assert!(C + -s[2] * 1 + s[0] <= RealNumRep::new(0, 1));
    assert!(C + -s[3] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + l[0] + s[2] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 1 + l[0] + -a[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!((s[4] >= a[3] + -l[1] * 1) || (C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1)));
    assert!((s[4] >= a[3] + -l[1] * 1) || (C * 3 + s[0] + -s[4] * 1 <= RealNumRep::new(0, 1)));
    assert!((s[4] >= a[3] + -l[1] * 1) || (C * 2 + -s[4] * 1 + s[1] <= RealNumRep::new(0, 1)));
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + l[0] + s[3] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(s[4] <= a[3] + -l[1] * 1 + C);
    assert!(-C * 4 + l[0] + s[4] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[3] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + s[4] + -s[1] * 1 <= RealNumRep::new(0, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(l[0] + s[0] + -a[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_3_t_5_l_0_nl_2(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 3);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[2] + -l[2] * 1 <= s[4]);
    assert!(!(a[0] + -l[0] * 1 <= s[3]));
    assert!(a[4] >= a[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[4] * 1 + a[3] + -B * 1),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + a[3] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    assert!((l[2] == l[1]) || (s[2] <= a[2] + -l[2] * 1 + -B * 1));
    assert!((!(l[0] == l[1])) || (s[2] >= a[1] + -l[0] * 1 + -B * 1));
    assert!((s[3] >= a[1] + -l[0] * 1 + -B * 1 + C) || (!(l[0] == l[1])));
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!(
        (s[3] >= a[1] + -l[1] * 1 + -B * 1 + C)
            || (a[2] + -l[2] * 1 <= a[1] + -l[1] * 1 + -B * 1 + C)
    );
    assert!(s[2] <= a[2] + -l[1] * 1);
    assert!((!(a[2] + -l[2] * 1 <= a[1] + -l[1] * 1 + -B * 1 + C)) || (l[2] == l[1]));
    assert!((s[3] >= a[2] + -l[1] * 1) || (!(a[2] <= a[1] + -B * 1 + C)));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[3] + -B * 1 + C)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[2] == l[1]) || (s[4] <= a[2] + -l[2] * 1 + -B * 1 + C * 2));
    if !((l[1] == l[0]) || (a[2] + -l[2] * 1 <= a[1] + -l[1] * 1 + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(a[3] + -a[1] * 1 + l[1] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[3] >= a[2] + -l[2] * 1 + -B * 1);
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    if !(!(a[2] <= a[1] + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_point(Bound::Included(
                a[3] + -B * 1 + -a[2] * 1 + l[1] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_lower(Bound::Excluded(l[2])),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_upper(
        Bound::Included(-s[4] * 1 + a[4]),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (l[2] == a[2] + -a[1] * 1 + l[1] + -C * 1));
    assert!(s[4] <= a[3] + -l[1] * 1 + C);
    assert!(s[4] <= a[2] + -l[1] * 1 + C * 2);
    assert!(
        (s[4] >= a[3] + -l[1] * 1)
            || (!(a[2] <= a[1] + -B * 1 + C))
            || (s[4] >= a[2] + -l[1] * 1 + C)
    );
    if !(a[3] + -a[2] * 1 + -C * 1 <= B) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[1]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[2] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -B * 1 + a[3] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + -B * 1 + a[3] + -C * 1),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[2] * 1 + -B * 1 + a[3] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -B * 1 + a[3] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -B * 1 + a[3] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -B * 1 + a[3] + -C * 4),
    )]);
    ret = ret.intersection(&tmp);
    assert!((!(l[2] <= l[0])) || (C * 2 + -s[3] * 1 + s[0] <= RealNumRep::new(0, 1)));
    assert!(C + -s[2] * 1 + s[0] <= RealNumRep::new(0, 1));
    if !(!(l[2] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -B * 1 + a[3] + -C * 3)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[2] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + a[3] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!((!(l[2] <= l[0])) || (C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1)));
    assert!(-C * 3 + s[2] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[2] + -s[1] * 1 <= RealNumRep::new(0, 1));
    if !((l[1] == l[0]) || (a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[1]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[2] == l[1]) || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    assert!((!(l[2] <= l[0])) || (l[2] == l[0]));
    if !(l[2] == l[1]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_upper(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(a[3] + -a[2] * 1 + l[2] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    assert!((l[2] == l[1]) || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2));
    assert!(
        (!(l[0] == l[1]))
            || (l[2] == l[0])
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    assert!((!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))) || (l[2] == l[1]));
    assert!(s[3] <= a[3] + -l[2] * 1);
    assert!(
        (l[1] == l[0]) || (!(l[1] == l[2])) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    assert!(s[4] <= a[3] + -l[2] * 1 + C);
    assert!(
        (a[3] <= a[2] + -B * 1 + C)
            || (!(l[2] == a[2] + -a[1] * 1 + l[1] + -C * 1))
            || (s[4] >= a[1] + -l[1] * 1 + -B * 1 + C * 2)
    );
    assert!((s[4] >= a[3] + -l[2] * 1) || (!(a[3] <= a[2] + -B * 1 + C)));
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!(
        (!(l[1] == l[2]))
            || (s[4] >= a[3] + -l[1] * 1)
            || (a[2] <= a[1] + -B * 1 + C)
            || (s[4] >= a[1] + -l[1] * 1 + -B * 1 + C * 2)
    );
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    assert!(s[3] <= a[2] + -l[1] * 1 + C);
    assert!((s[4] >= a[3] + -l[2] * 1) || (C + s[2] + -s[4] * 1 <= RealNumRep::new(0, 1)));
    if !(!(l[0] == l[2])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[0])),
            IntervalList::interval_upper(Bound::Included(-a[2] * 1 + l[0] + a[3] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 5 + s[4] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(
        (!(l[1] <= l[0]))
            || (s[4] >= a[3] + -l[1] * 1)
            || (C * 3 + -s[4] * 1 + s[0] <= RealNumRep::new(0, 1))
    );
    assert!(
        (!(l[1] <= l[0]))
            || (s[4] >= a[3] + -l[1] * 1)
            || (C * 2 + s[1] + -s[4] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 4 + s[3] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[3] * 1 + s[4] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_4_t_5_l_4_nl_3(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 4);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[3] + -l[2] * 1 <= s[3]);
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(s[4] >= s[3]);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[4] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[2] == l[1]) || (s[2] <= a[2] + -l[2] * 1 + -B * 1));
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!((l[2] == l[1]) || (a[3] <= a[2] + -B * 1 + C));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(a[4] + -B * 1 + -a[3] * 1 + l[2] + -C * 1)),
        IntervalList::interval_point(Bound::Included(l[2])),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    assert!(s[3] <= a[3] + -l[2] * 1);
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!((l[1] == l[0]) || (!(l[2] <= l[1])) || (a[3] <= a[1] + -B * 1 + C * 2));
    assert!(s[4] <= a[3] + -l[1] * 1 + C);
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[2] <= l[1]))
            || (-C * 2 + -l[0] * 1 + a[3] + -s[2] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(
        (a[3] + -C * 2 + -a[1] * 1 <= RealNumRep::new(0, 1))
            || (!(RealNumRep::new(0, 1) <= -C * 1 + -a[2] * 1 + a[3]))
    );
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[2] <= l[1]))
            || (-C * 4 + -l[0] * 1 + -s[0] * 1 + a[3] <= RealNumRep::new(0, 1))
    );
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (a[2] + -l[2] * 1 == a[1] + -l[1] * 1 + C));
    assert!(
        (l[1] == l[0]) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1)) || (!(l[1] == l[2]))
    );
    assert!((l[2] == l[1]) || (!(l[2] <= l[1])));
    if !(a[4] + -a[3] * 1 + -C * 1 <= B) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[2])),
        IntervalList::interval_lower(Bound::Excluded(l[2])),
    ]);
    ret = ret.intersection(&tmp);
    assert!(s[4] <= a[3] + -l[2] * 1 + C);
    assert!(s[4] <= a[4] + -l[2] * 1);
    assert!(
        (-l[0] * 1 + a[1] + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1))
    );
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    assert!(
        (l[2] == l[1])
            || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2)
            || (RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0])
    );
    assert!(
        (l[2] == l[0])
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1)
            || (!(RealNumRep::new(0, 1) <= C + -a[1] * 1 + l[0] + s[0]))
    );
    assert!((!(l[1] == l[2])) || (-B * 1 + -l[1] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1));
    assert!((!(l[1] == l[2])) || (s[1] >= -B * 1 + -l[1] * 1 + a[2] + -C * 2));
    assert!(-B * 1 + -l[2] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1);
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    assert!(
        (l[2] == l[1])
            || (!(l[1] <= l[0]))
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!(s[2] <= a[2] + -l[1] * 1);
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    assert!(l[0] + s[1] + -a[1] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (!(a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1))
            || (-C * 1 + a[2] + -l[2] * 1 + -B * 1 + -a[1] * 1 + l[0] == RealNumRep::new(0, 1))
    );
    assert!(-C * 1 + l[0] + -a[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(a[3] <= a[2] + C);
    assert!(-C * 2 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + l[0] + -a[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[2] <= l[1]))
            || (-C * 3 + -a[0] * 1 + a[3] <= RealNumRep::new(0, 1))
    );
    assert!(l[0] + -C * 1 + -a[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!((!(l[2] <= l[1])) || (a[3] + -C * 2 + -a[1] * 1 <= RealNumRep::new(0, 1)));
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[2] <= l[1]))
            || (-C * 3 + -l[0] * 1 + -s[1] * 1 + a[3] <= RealNumRep::new(0, 1))
    );
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-a[0] * 1 + l[0] + s[0] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_4_t_5_l_3_nl_3(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 4);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[3] + -l[3] * 1 <= s[4]);
    assert!(a[2] + -l[2] * 1 <= s[3]);
    assert!(!(a[3] + -l[3] * 1 <= s[3]));
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[3])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[4] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[3] == l[2]) || (s[3] <= a[3] + -l[3] * 1 + -B * 1));
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_point(Bound::Included(a[4] + -a[3] * 1 + l[3] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (l[1] == l[0])
            || (l[3] == l[2])
            || (a[2] + -l[2] * 1 <= a[1] + -l[1] * 1 + -B * 1 + C)
            || (a[3] + -l[3] * 1 == a[1] + -l[1] * 1 + C * 2)
    );
    assert!(
        (l[1] == l[0]) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1)) || (!(l[1] == l[2]))
    );
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (l[2] == a[2] + -a[1] * 1 + l[1] + -C * 1));
    assert!((!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))) || (l[2] == l[1]));
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[3])),
        IntervalList::interval_lower(Bound::Excluded(l[3])),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!((l[2] == l[1]) || (-a[2] * 1 + l[2] + B + s[2] <= RealNumRep::new(0, 1)));
    assert!((l[3] == l[2]) || (s[4] <= a[3] + -l[3] * 1 + -B * 1 + C));
    assert!(
        (l[2] == l[1])
            || (l[3] == l[2])
            || (-C * 1 + -a[2] * 1 + -l[3] * 1 + l[2] + a[3] == RealNumRep::new(0, 1))
    );
    assert!(s[4] <= a[4] + -l[2] * 1);
    assert!(l[0] + s[1] + -a[1] * 1 <= RealNumRep::new(0, 1));
    assert!((l[3] == l[2]) || (!(l[3] <= l[2])));
    assert!((!(l[1] == l[2])) || (-B * 1 + -l[1] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1));
    assert!(-B * 1 + -l[2] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1);
    if !((l[3] == l[2]) || (a[4] + -a[3] * 1 + -C * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    if !((l[1] == l[0]) || (a[2] + -l[2] * 1 <= a[1] + -l[1] * 1 + -B * 1 + C) || (!(l[2] == l[3])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(a[4] + -a[1] * 1 + l[1] + -C * 3)),
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[3] * 1 + l[2] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((l[1] == l[0]) || (a[3] + -l[2] * 1 <= a[1] + -l[1] * 1 + -B * 1 + C * 2)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(-a[3] * 1 + l[2] + -C * 1 + a[4] + -B * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    assert!((!(RealNumRep::new(0, 1) <= -l[2] * 1 + l[0])) || (l[2] == l[0]));
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    assert!(
        (-C * 1 + a[2] + -l[2] * 1 + -B * 1 + l[0] + -a[1] * 1 == RealNumRep::new(0, 1))
            || (!(a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1))
    );
    assert!(
        (!(l[0] == l[1]))
            || (l[2] == l[0])
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    assert!(
        (l[2] == l[1])
            || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2)
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1)
    );
    assert!(s[4] <= a[4] + -l[3] * 1);
    if !(!(a[3] + -l[2] * 1 <= a[1] + -l[1] * 1 + -B * 1 + C * 2)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[3] * 1 + l[2] + -C * 1,
            )),
            IntervalList::interval_except(Bound::Excluded(a[4] + -a[1] * 1 + l[1] + -C * 3)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[2] <= a[2] + -l[1] * 1);
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    if !((l[1] == l[0])
        || (a[4] + -a[3] * 1 + -C * 1 <= RealNumRep::new(0, 1))
        || (a[4] + -l[2] * 1 + -a[1] * 1 + l[1] + -C * 3 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[4] <= a[3] + -l[2] * 1 + C);
    assert!(
        (l[1] == l[0])
            || (!(l[2] == l[3]))
            || (a[3] + -l[2] * 1 + -a[1] * 1 + l[1] + -C * 2 <= RealNumRep::new(0, 1))
    );
    assert!((l[3] == l[2]) || (s[2] <= -B * 1 + -l[3] * 1 + a[3] + -C * 1));
    assert!(
        (!(l[0] == l[2]))
            || (l[3] == l[0])
            || (a[2] + -l[0] * 1 + l[3] + -a[3] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!(-B * 1 + -l[3] * 1 + a[3] + -C * 3 <= a[0] + -l[0] * 1);
    assert!(
        (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
            || (!(a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1))
    );
    assert!(
        (l[3] == l[1])
            || (a[3] + -l[3] * 1 + -B * 1 == a[2] + -l[1] * 1 + C)
            || (!(a[2] <= a[1] + -B * 1 + C))
    );
    if !((!(a[2] + -l[2] * 1 <= a[1] + -l[1] * 1 + -B * 1 + C))
        || (!(a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[3] * 1 + l[2] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] == l[3])) || (!(a[2] <= a[1] + -B * 1 + C))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[2] * 1 + l[1] + -C * 2,
            )),
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[3] * 1 + l[1] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(a[4] + -B * 1 + -a[3] * 1 + l[1] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[1] == l[2]))
            || (l[3] == l[1])
            || (s[1] <= -B * 1 + -l[3] * 1 + a[3] + -C * 2)
            || (a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1)
    );
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[1] == l[2]))
            || (l[3] == l[1])
            || (s[0] <= -B * 1 + -l[3] * 1 + a[3] + -C * 3)
            || (a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1)
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 2)
    );
    assert!(s[2] >= -B * 1 + -l[3] * 1 + a[3] + -C * 2);
    assert!(s[1] >= -B * 1 + -l[3] * 1 + a[3] + -C * 3);
    assert!(
        (-C * 2 + -l[3] * 1 + a[3] + -B * 1 + l[0] + -a[1] * 1 == RealNumRep::new(0, 1))
            || (!(a[1] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 2))
    );
    assert!(-C * 1 + l[0] + -a[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(
        (l[2] == l[1]) || (!(l[2] == l[3])) || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    assert!((l[2] == l[1]) || (s[3] <= a[2] + -l[2] * 1 + -B * 1 + C));
    assert!(-C * 1 + l[0] + -a[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(
        (!(a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1))
            || (a[3] + -l[3] * 1 + -B * 1 == a[2] + -l[0] * 1 + C)
    );
    assert!(
        (-l[0] * 1 + a[1] + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1))
    );
    if !((!(l[3] <= l[2])) || (l[3] <= l[1]) || (a[3] <= a[2] + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_point(Bound::Included(a[4] + -a[2] * 1 + l[2] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(a[3] <= a[2] + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[3] * 1 + l[2] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((l[3] <= l[1])
        || (a[4] + -a[3] * 1 + -C * 1 <= RealNumRep::new(0, 1))
        || (a[4] + -a[2] * 1 + -C * 2 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[3])),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + -B * 1 + a[4] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Excluded(-a[2] * 1 + l[0] + -B * 1 + a[4] + -C * 2)),
        IntervalList::interval_point(Bound::Included(a[4] + -B * 1 + -a[2] * 1 + l[0] + -C * 2)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(a[4] + -B * 1 + -a[3] * 1 + l[0] + -C * 1)),
        IntervalList::interval_lower(Bound::Excluded(-a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    if !(a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(-a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-B * 1 + a[4] + -C * 4 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    if !((!(l[1] <= l[0])) || (!(l[1] == l[3]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_upper(Bound::Included(-a[3] * 1 + l[0] + a[4] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[3] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(
                -a[2] * 1 + l[0] + -B * 1 + a[4] + -C * 2,
            )),
            IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -B * 1 + a[4] + -C * 3)),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (s[4] <= a[2] + -l[2] * 1 + -B * 1 + C * 2));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -B * 1 + a[4] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    if !((!(l[1] <= l[0])) || (!(l[3] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-s[2] * 1 + -B * 1 + a[4] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[3] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(
                -a[2] * 1 + l[0] + -B * 1 + a[4] + -C * 2,
            )),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + a[4] + -C * 3)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(-a[2] * 1 + l[0] + -C * 2 + a[4] + -B * 1),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[3] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-a[2] * 1 + l[0] + a[4] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(-C * 3 + -B * 1 + a[4] + -a[1] * 1 + l[0])),
        IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + l[0] + -B * 1 + a[4] + -C * 3)),
    ]);
    ret = ret.intersection(&tmp);
    if !((!(l[1] <= l[0])) || (!(l[3] <= l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(
                -a[2] * 1 + l[0] + -B * 1 + a[4] + -C * 2,
            )),
            IntervalList::interval_upper(Bound::Included(
                -a[1] * 1 + l[0] + -B * 1 + a[4] + -C * 3,
            )),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -B * 1 + a[4] + -C * 4)),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -B * 1 + a[4] + -C * 5),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (!(l[0] == l[2]))
            || (l[3] == l[0])
            || (a[2] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 1)
            || (a[1] + -l[0] * 1 + l[3] + -a[3] * 1 + C * 2 <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -B * 1 + a[4] + -C * 4),
    )]);
    ret = ret.intersection(&tmp);
    assert!(s[0] >= -B * 1 + -l[3] * 1 + a[3] + -C * 4);
    assert!(-C * 2 + l[0] + -a[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(s[3] <= a[2] + -l[1] * 1 + C);
    assert!(-C * 2 + -a[1] * 1 + l[0] + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    if !(a[4] + -a[3] * 1 + -C * 1 <= B) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 3 + l[0] + -a[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!((!(l[1] == l[3])) || (a[3] + -a[2] * 1 + -C * 1 <= B));
    if !((a[4] + -a[3] * 1 + -C * 1 <= RealNumRep::new(0, 1)) || (a[4] + -a[2] * 1 + -C * 2 <= B)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(s[4] <= a[2] + -l[1] * 1 + C * 2);
    assert!(l[0] + -a[1] * 1 + -C * 3 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-a[0] * 1 + l[0] + s[0] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + l[0] + -a[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_4_t_5_l_2_nl_3(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 4);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[3] + -l[3] * 1 <= s[4]);
    assert!(a[1] + -l[1] * 1 <= s[3]);
    assert!(a[3] >= a[2]);
    assert!(a[1] >= a[0]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[3])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[4] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_point(Bound::Included(a[4] + -a[3] * 1 + l[3] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (l[3] == l[2]) || (a[3] + -l[3] * 1 == a[1] + -l[1] * 1 + C * 2));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[3])),
        IntervalList::interval_lower(Bound::Excluded(l[3])),
    ]);
    ret = ret.intersection(&tmp);
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (l[2] == a[2] + -a[1] * 1 + l[1] + -C * 1));
    assert!(s[3] >= a[1] + -l[1] * 1 + -B * 1 + C);
    assert!(!(a[2] + -l[2] * 1 <= s[3]));
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    if !((l[1] == l[0]) || (a[3] + -l[2] * 1 <= a[1] + -l[1] * 1 + -B * 1 + C * 2)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_point(Bound::Included(a[4] + -a[1] * 1 + l[1] + -C * 3)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(a[3] + -l[2] * 1 <= a[1] + -l[1] * 1 + -B * 1 + C * 2)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[3] * 1 + l[2] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))));
    assert!(
        (l[1] == l[0]) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1)) || (!(l[1] == l[2]))
    );
    assert!((l[3] == l[2]) || (s[4] <= a[3] + -l[3] * 1 + -B * 1 + C));
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    assert!(
        (l[1] == l[0])
            || (!(l[2] == l[3]))
            || (a[3] + -l[2] * 1 + -a[1] * 1 + l[1] + -C * 2 <= RealNumRep::new(0, 1))
    );
    assert!((l[3] == l[2]) || (!(l[3] <= l[2])));
    assert!(s[4] <= a[4] + -l[3] * 1);
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    if !((l[3] == l[2]) || (a[4] + -a[3] * 1 + -C * 1 <= RealNumRep::new(0, 1))) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((l[1] == l[0])
        || (!(l[3] <= l[2]))
        || (a[4] + -l[2] * 1 + -a[1] * 1 + l[1] + -C * 3 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    assert!(s[3] >= a[2] + -l[2] * 1 + -B * 1);
    assert!((!(l[2] <= l[0])) || (l[2] == l[0]));
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    assert!((l[2] == l[1]) || (s[2] <= a[2] + -l[2] * 1 + -B * 1));
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    assert!(
        (l[2] == l[1])
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1)
            || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2)
    );
    assert!(
        (!(a[1] + -l[0] * 1 <= -B * 1 + -l[2] * 1 + a[2] + -C * 1))
            || (-C * 1 + a[2] + -l[2] * 1 + -B * 1 + l[0] + -a[1] * 1 == RealNumRep::new(0, 1))
    );
    assert!(l[0] + s[1] + -a[1] * 1 <= RealNumRep::new(0, 1));
    assert!(s[2] >= -B * 1 + -l[3] * 1 + a[3] + -C * 2);
    assert!(s[3] >= -B * 1 + -l[3] * 1 + a[3] + -C * 1);
    assert!(-B * 1 + -l[2] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1);
    assert!((l[3] == l[2]) || (s[1] <= -B * 1 + -l[3] * 1 + a[3] + -C * 2));
    assert!((l[3] == l[2]) || (s[2] <= -B * 1 + -l[3] * 1 + a[3] + -C * 1));
    assert!(
        (l[3] == l[2])
            || (a[1] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 2)
            || (s[0] <= -B * 1 + -l[3] * 1 + a[3] + -C * 3)
    );
    assert!(-C * 1 + l[0] + -a[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(
        (!(a[1] + -l[0] * 1 <= -B * 1 + -l[3] * 1 + a[3] + -C * 2))
            || (-C * 2 + -l[3] * 1 + a[3] + -B * 1 + l[0] + -a[1] * 1 == RealNumRep::new(0, 1))
    );
    assert!(-B * 1 + -l[3] * 1 + a[3] + -C * 3 <= a[0] + -l[0] * 1);
    assert!(s[0] >= -B * 1 + -l[3] * 1 + a[3] + -C * 4);
    assert!(s[1] >= -B * 1 + -l[3] * 1 + a[3] + -C * 3);
    assert!(
        (l[2] == l[1])
            || (!(l[1] <= l[0]))
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!((l[2] == l[1]) || (l[3] == l[2]) || (a[3] + -l[3] * 1 == a[2] + -l[2] * 1 + C));
    assert!(
        (!(l[1] <= l[0]))
            || (!(l[1] == l[2]))
            || (l[3] == l[1])
            || (a[2] + -l[0] * 1 + l[3] + -a[3] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!(
        (l[3] == l[2])
            || (!(l[0] == l[1]))
            || (a[1] + -l[0] * 1 + l[3] + -a[3] * 1 + C * 2 <= RealNumRep::new(0, 1))
    );
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    assert!((l[2] == l[1]) || (s[3] <= a[2] + -l[2] * 1 + -B * 1 + C));
    if !((l[2] == l[1]) || (a[3] <= a[2] + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_point(Bound::Included(a[4] + -a[2] * 1 + l[2] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(a[3] <= a[2] + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[3] * 1 + l[2] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (l[2] == l[1]) || (!(l[2] == l[3])) || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[3])),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + -B * 1 + a[4] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    if !((!(l[1] <= l[0])) || (!(l[1] == l[3]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_upper(Bound::Included(-a[2] * 1 + l[0] + a[4] + -C * 2)),
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[3] * 1 + l[1] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -B * 1 + a[4] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(a[4] + -B * 1 + -a[3] * 1 + l[0] + -C * 1)),
        IntervalList::interval_lower(Bound::Excluded(-a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + -B * 1 + a[4] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-B * 1 + a[4] + -C * 4 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    assert!((l[2] == l[1]) || (s[4] <= a[2] + -l[2] * 1 + -B * 1 + C * 2));
    assert!(s[4] <= a[3] + -l[2] * 1 + C);
    if !((!(l[1] <= l[0])) || (!(l[1] == l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -B * 1 + a[4] + -C * 3)),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[1] == l[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(-s[2] * 1 + -B * 1 + a[4] + -C * 2)),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[3] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + a[4] + -C * 3)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[1] == l[3]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_upper(Bound::Included(-a[3] * 1 + l[0] + a[4] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 2 + l[0] + -a[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    if !((l[2] == l[1])
        || (!(l[3] <= l[2]))
        || (a[4] + -a[2] * 1 + -C * 2 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((a[3] + -l[2] * 1 + -a[1] * 1 + l[0] + -C * 2 <= RealNumRep::new(0, 1))
        || (!(RealNumRep::new(0, 1) <= C + l[0] + -a[1] * 1 + s[0])))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(
                -a[1] * 1 + l[0] + -B * 1 + a[4] + -C * 3,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0]))
        || (!(l[1] == l[2]))
        || (RealNumRep::new(0, 1) <= C + l[0] + -a[1] * 1 + s[0]))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -B * 1 + a[4] + -C * 4)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[0] == l[3]))
        || (!(RealNumRep::new(0, 1) <= C + l[0] + -a[1] * 1 + s[0]))
        || (!(a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1))))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[0])),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 2 + -a[1] * 1 + l[0] + s[3] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(-C * 3 + -B * 1 + a[4] + -a[1] * 1 + l[0])),
        IntervalList::interval_lower(Bound::Excluded(-a[1] * 1 + l[0] + -B * 1 + a[4] + -C * 3)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(-C * 1 + l[0] + -a[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(
        (C + -l[0] * 1 + a[1] + -s[3] * 1 <= RealNumRep::new(0, 1))
            || (C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(
        (-l[0] * 1 + a[1] + -s[2] * 1 <= RealNumRep::new(0, 1))
            || (C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1))
    );
    assert!(-C * 2 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -B * 1 + a[4] + -C * 5),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -B * 1 + a[4] + -C * 4),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    if !(a[4] + -a[3] * 1 + -C * 1 <= B) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + l[0] + -a[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + l[0] + -a[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(l[0] + -a[1] * 1 + -C * 3 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-a[0] * 1 + l[0] + s[0] <= RealNumRep::new(0, 1));
    assert!(C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_4_t_5_l_1_nl_3(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 4);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[3] + -l[3] * 1 <= s[4]);
    assert!(a[0] + -l[0] * 1 <= s[3]);
    assert!(!(a[1] + -l[1] * 1 <= s[3]));
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    assert!(s[3] >= s[2]);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[3])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[4] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!(l[3] == l[2]);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Excluded(l[2])),
        IntervalList::interval_point(Bound::Included(l[2])),
    ]);
    ret = ret.intersection(&tmp);
    assert!((s[1] >= -B * 1 + -l[0] * 1 + a[1] + -C * 1) || (!(l[0] == l[1])));
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!((l[2] == l[1]) || (s[2] <= a[2] + -l[2] * 1 + -B * 1));
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!(-B * 1 + -l[1] * 1 + a[1] + -C * 1 <= a[0] + -l[0] * 1);
    assert!(s[3] >= a[1] + -l[1] * 1 + -B * 1 + C);
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    assert!((!(l[2] <= l[0])) || (l[2] == l[0]));
    assert!((l[2] == l[1]) || (l[1] <= l[0]) || (l[2] == a[2] + -a[1] * 1 + l[1] + -C * 1));
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!(
        (l[1] == l[0]) || (!(l[1] == l[3])) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    if !((l[2] == l[1]) || (l[1] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(a[4] + -a[1] * 1 + l[1] + -C * 3)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (!(a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))));
    if !((l[1] <= l[0]) || (a[4] + -l[2] * 1 + -a[1] * 1 + l[1] + -C * 3 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    if !((l[1] <= l[0]) || (!(l[1] == l[3])) || (a[3] <= a[1] + -B * 1 + C * 2)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_point(Bound::Included(a[4] + -a[1] * 1 + l[1] + -C * 3)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[3] >= a[2] + -l[2] * 1 + -B * 1);
    assert!(s[4] <= a[4] + -l[2] * 1);
    if !(!(a[3] <= a[1] + -B * 1 + C * 2)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[3] * 1 + l[1] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    assert!(-B * 1 + -l[2] * 1 + a[2] + -C * 2 <= a[0] + -l[0] * 1);
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    assert!((l[2] == l[1]) || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2));
    if !((l[2] == l[0]) || (!(l[0] == l[1]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(a[4] + -a[2] * 1 + l[2] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (l[2] == l[0])
            || (!(l[0] == l[1]))
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    if !((l[2] == l[0])
        || (!(l[0] == l[1]))
        || (a[4] + -a[2] * 1 + -C * 2 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[0]) || (!(l[0] == l[1])) || (s[4] <= a[2] + -l[2] * 1 + -B * 1 + C * 2));
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_lower(Bound::Excluded(-a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1)),
        IntervalList::interval_point(Bound::Included(a[4] + -B * 1 + -a[3] * 1 + l[0] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -B * 1 + a[4] + -C * 5),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-B * 1 + a[4] + -C * 4 + -a[0] * 1 + l[0]),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[3])),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + -B * 1 + a[4] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -B * 1 + a[4] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    if !((!(l[1] <= l[0]))
        || (!(l[1] == l[3]))
        || (RealNumRep::new(0, 1) <= C + l[0] + -a[3] * 1 + s[2]))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_upper(Bound::Included(-s[2] * 1 + -B * 1 + a[4] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[0] == l[3])) || (!(RealNumRep::new(0, 1) <= C + l[0] + -a[3] * 1 + s[2]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[0])),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[1] == l[3]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -B * 1 + a[4] + -C * 3)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[1] == l[3]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_upper(Bound::Included(-a[2] * 1 + l[0] + a[4] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[0] == l[3])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[0])),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + a[4] + -C * 3)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((!(l[1] <= l[0])) || (!(l[1] == l[3]))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -B * 1 + a[4] + -C * 4)),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + l[0] + -a[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + -B * 1 + a[4] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -B * 1 + a[4] + -C * 4),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 3 + l[0] + -a[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    if !(a[4] + -a[3] * 1 + -C * 1 <= B) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(s[4] <= a[3] + -l[1] * 1 + C);
    assert!(-C * 4 + l[0] + -a[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[2] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 1 + l[0] + -a[0] * 1 + s[1] <= RealNumRep::new(0, 1));
    assert!(C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(l[0] + -a[0] * 1 + s[0] <= RealNumRep::new(0, 1));
    ret
}

pub fn compute_l_4_t_5_l_0_nl_3(
    a: &[RealNumRep],
    l: &[RealNumRep],
    s: &[RealNumRep],
    L0: RealNumRep,
    C: RealNumRep,
    B: RealNumRep,
) -> IntervalList<RealNumRep> {
    assert!(l.len() == 4);
    let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));
    assert!(a[3] + -l[3] * 1 <= s[4]);
    assert!(!(a[0] + -l[0] * 1 <= s[3]));
    assert!(a[3] >= a[2]);
    assert!(a[2] >= a[1]);
    assert!(a[1] >= a[0]);
    assert!(s[3] >= s[2]);
    assert!(s[2] >= s[1]);
    assert!(s[1] >= s[0]);
    assert!(l[0] >= L0);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[3])),
        IntervalList::interval_upper(Bound::Included(-s[4] * 1 + a[4] + -B * 1)),
    ]);
    ret = ret.intersection(&tmp);
    assert!((l[3] == l[2]) || (s[3] <= a[3] + -l[3] * 1 + -B * 1));
    assert!(s[3] >= a[2] + -l[2] * 1 + -B * 1);
    assert!(s[2] >= a[1] + -l[1] * 1 + -B * 1);
    assert!(s[0] >= -B * 1 + -l[1] * 1 + a[1] + -C * 2);
    assert!(s[1] >= -B * 1 + -l[1] * 1 + a[1] + -C * 1);
    assert!((l[1] == l[0]) || (l[2] == l[1]) || (a[2] + -l[2] * 1 == a[1] + -l[1] * 1 + C));
    assert!((l[2] == l[1]) || (l[3] == l[2]) || (a[3] + -l[3] * 1 == a[2] + -l[2] * 1 + C));
    if !(l[3] == l[2]) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_point(Bound::Included(a[4] + -a[3] * 1 + l[3] + -C * 1)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (s[2] <= a[2] + -l[2] * 1 + -B * 1));
    assert!((l[1] == l[0]) || (s[1] <= a[1] + -l[1] * 1 + -B * 1));
    assert!((l[3] == l[2]) || (!(l[3] <= l[2])));
    assert!((l[1] == l[0]) || (s[0] <= -B * 1 + -l[1] * 1 + a[1] + -C * 1));
    assert!((l[2] == l[1]) || (s[3] <= a[2] + -l[2] * 1 + -B * 1 + C));
    assert!((l[2] == l[1]) || (s[4] <= a[2] + -l[2] * 1 + -B * 1 + C * 2));
    assert!((l[2] == l[1]) || (!(l[2] <= l[1])));
    if !((l[2] == l[1])
        || (!(l[3] <= l[2]))
        || (a[4] + -a[2] * 1 + -C * 2 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
            Bound::Excluded(l[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[3])),
        IntervalList::interval_lower(Bound::Excluded(l[3])),
    ]);
    ret = ret.intersection(&tmp);
    assert!(
        (l[2] == l[1]) || (!(l[3] <= l[2])) || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    assert!((l[1] == l[0]) || (!(l[1] <= l[0])));
    assert!((l[1] == l[0]) || (s[2] <= a[1] + -l[1] * 1 + -B * 1 + C));
    assert!((a[2] <= a[1] + -B * 1 + C) || (s[3] >= a[1] + -l[1] * 1 + -B * 1 + C));
    if !((l[2] == l[1]) || (a[3] <= a[2] + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_point(Bound::Included(a[4] + -a[2] * 1 + l[2] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(a[3] <= a[2] + -B * 1 + C)) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[2])),
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[3] * 1 + l[2] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !((l[3] == l[2]) || (a[4] <= a[3] + C)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !(a[4] + -a[3] * 1 + -C * 1 <= B) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[2]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[2] == l[1]) || (s[1] <= -B * 1 + -l[2] * 1 + a[2] + -C * 1));
    assert!((l[2] == l[1]) || (s[0] <= -B * 1 + -l[2] * 1 + a[2] + -C * 2));
    assert!(s[2] >= -B * 1 + -l[2] * 1 + a[2] + -C * 1);
    assert!(s[0] >= -B * 1 + -l[2] * 1 + a[2] + -C * 3);
    assert!(s[1] >= -B * 1 + -l[2] * 1 + a[2] + -C * 2);
    assert!(
        (l[2] == l[1])
            || (!(l[1] <= l[0]))
            || (a[1] + -l[0] * 1 + l[2] + -a[2] * 1 + C <= RealNumRep::new(0, 1))
    );
    assert!(
        (l[3] == l[2])
            || (a[2] <= a[1] + -B * 1 + C)
            || (a[3] + -l[3] * 1 == a[1] + -l[1] * 1 + C * 2)
    );
    assert!(s[2] <= a[2] + -l[1] * 1);
    assert!(
        (l[3] == l[1])
            || (!(a[2] <= a[1] + -B * 1 + C))
            || (a[3] + -l[3] * 1 + -B * 1 == a[2] + -l[1] * 1 + C)
    );
    assert!((s[3] >= a[2] + -l[1] * 1) || (!(a[2] <= a[1] + -B * 1 + C)));
    assert!(s[4] <= a[4] + -l[3] * 1);
    assert!((l[3] == l[2]) || (s[4] <= a[3] + -l[3] * 1 + -B * 1 + C));
    assert!(s[3] <= a[3] + -l[2] * 1);
    assert!(
        (l[1] == l[0]) || (!(l[1] == l[2])) || (a[2] + -a[1] * 1 + -C * 1 <= RealNumRep::new(0, 1))
    );
    assert!((l[1] == l[0]) || (s[3] <= a[1] + -l[1] * 1 + -B * 1 + C * 2));
    if !((l[1] == l[0])
        || (!(l[2] <= l[1]))
        || (a[2] <= a[1] + -B * 1 + C)
        || (a[3] <= a[1] + -B * 1 + C * 2))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_point(Bound::Included(a[4] + -a[1] * 1 + l[1] + -C * 3)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(s[3] <= a[2] + -l[1] * 1 + C);
    if !((a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1)) || (!(a[2] <= a[1] + -B * 1 + C))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[2] * 1 + l[1] + -C * 2,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(
        (!(l[2] == l[3]))
            || (a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))
            || (a[3] + -a[1] * 1 + -C * 2 <= RealNumRep::new(0, 1))
    );
    if !((!(l[1] == l[3])) || (a[2] <= a[1] + -B * 1 + C) || (!(a[3] <= a[1] + -B * 1 + C * 2))) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[3] * 1 + l[1] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((l[1] == l[0]) || (s[4] <= a[1] + -l[1] * 1 + -B * 1 + C * 3));
    if !((l[1] == l[0])
        || (!(l[2] <= l[1]))
        || (a[4] <= a[3] + C)
        || (a[4] + -a[1] * 1 + -C * 3 <= RealNumRep::new(0, 1)))
    {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    if !((!(a[3] + -a[2] * 1 + -C * 1 <= RealNumRep::new(0, 1))) || (!(a[2] <= a[1] + -B * 1 + C)))
    {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[1])),
            IntervalList::interval_point(Bound::Included(
                a[4] + -B * 1 + -a[3] * 1 + l[1] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!((!(l[1] == l[3])) || (a[3] + -a[2] * 1 + -C * 1 <= B));
    assert!(s[4] <= a[2] + -l[1] * 1 + C * 2);
    if !((a[4] <= a[3] + C) || (a[4] + -a[2] * 1 + -C * 2 <= B)) {
        let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_except(
            Bound::Excluded(l[3]),
        )]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 3 + -s[0] * 1 + s[2] <= RealNumRep::new(0, 1));
    assert!(C + s[0] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!((s[3] >= a[2] + -l[1] * 1) || (C * 2 + s[0] + -s[3] * 1 <= RealNumRep::new(0, 1)));
    assert!((s[3] >= a[2] + -l[1] * 1) || (C + s[1] + -s[3] * 1 <= RealNumRep::new(0, 1)));
    assert!(-C * 2 + s[1] + -s[0] * 1 <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[3] * 1 + -B * 1 + a[4] + -C * 2),
    )]);
    ret = ret.intersection(&tmp);
    assert!(-C * 2 + -s[1] * 1 + s[2] <= RealNumRep::new(0, 1));
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[2] * 1 + -B * 1 + a[4] + -C * 3),
    )]);
    ret = ret.intersection(&tmp);
    if !(!(l[1] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(-s[1] * 1 + -B * 1 + a[4] + -C * 3)),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[1] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(-s[2] * 1 + -B * 1 + a[4] + -C * 2)),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[1] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(-s[0] * 1 + -B * 1 + a[4] + -C * 4)),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(l[3])),
        IntervalList::interval_upper(Bound::Included(-s[3] * 1 + -B * 1 + a[4] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[1] * 1 + -B * 1 + a[4] + -C * 4),
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![
        IntervalList::interval_point(Bound::Included(a[4] + -B * 1 + -a[3] * 1 + l[0] + -C * 1)),
        IntervalList::interval_lower(Bound::Excluded(-a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1)),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::from_interval_lists(vec![IntervalList::interval_lower(
        Bound::Included(-s[0] * 1 + -B * 1 + a[4] + -C * 5),
    )]);
    ret = ret.intersection(&tmp);
    if !(!(l[1] <= l[0])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[3])),
            IntervalList::interval_upper(Bound::Included(
                -a[3] * 1 + l[0] + -B * 1 + a[4] + -C * 1,
            )),
            IntervalList::interval_upper(Bound::Included(-a[1] * 1 + l[0] + a[4] + -C * 3)),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(!(l[0] == l[2])) {
        let tmp = IntervalList::from_interval_lists(vec![
            IntervalList::interval_point(Bound::Included(l[0])),
            IntervalList::interval_upper(Bound::Included(-a[2] * 1 + l[0] + a[4] + -C * 2)),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-C * 5 + -s[0] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 4 + -s[1] * 1 + s[4] <= RealNumRep::new(0, 1));
    assert!(-C * 3 + s[4] + -s[2] * 1 <= RealNumRep::new(0, 1));
    assert!(-C * 3 + -s[1] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(-C * 2 + -s[2] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(s[4] <= a[3] + -l[2] * 1 + C);
    assert!(-C * 4 + -s[0] * 1 + s[3] <= RealNumRep::new(0, 1));
    assert!(B >= RealNumRep::new(5, 1));
    assert!(C >= RealNumRep::new(5, 1));
    assert!(L0 >= RealNumRep::new(0, 1));
    assert!(-C * 2 + s[4] + -s[3] * 1 <= RealNumRep::new(0, 1));
    ret
}

lazy_static! {
    pub static ref COMPUTE_C: HashMap<(i32, i32), QeFunC> = HashMap::from([
        ((5, 0), compute_c_t_5_l_0 as QeFunC),
        ((5, 1), compute_c_t_5_l_1 as QeFunC),
        ((5, 2), compute_c_t_5_l_2 as QeFunC),
        ((5, 3), compute_c_t_5_l_3 as QeFunC),
        ((5, 4), compute_c_t_5_l_4 as QeFunC),
        ((5, 5), compute_c_t_5_l_5 as QeFunC),
    ]);
    pub static ref COMPUTE_B: HashMap<(i32, i32), QeFunB> = HashMap::from([
        ((5, 0), compute_b_t_5_l_0 as QeFunB),
        ((5, 1), compute_b_t_5_l_1 as QeFunB),
        ((5, 2), compute_b_t_5_l_2 as QeFunB),
        ((5, 3), compute_b_t_5_l_3 as QeFunB),
        ((5, 4), compute_b_t_5_l_4 as QeFunB),
        ((5, 5), compute_b_t_5_l_5 as QeFunB),
    ]);
    pub static ref COMPUTE_Q_4: HashMap<(i32, i32), QeFun> = HashMap::from([
        ((5, 0), compute_q_4_t_5_l_0 as QeFun),
        ((5, 1), compute_q_4_t_5_l_1 as QeFun),
        ((5, 2), compute_q_4_t_5_l_2 as QeFun),
        ((5, 3), compute_q_4_t_5_l_3 as QeFun),
        ((5, 4), compute_q_4_t_5_l_4 as QeFun),
        ((5, 5), compute_q_4_t_5_l_5 as QeFun),
    ]);
    pub static ref COMPUTE_S_4: HashMap<(i32, i32), QeFun> = HashMap::from([
        ((5, 0), compute_s_4_t_5_l_0 as QeFun),
        ((5, 1), compute_s_4_t_5_l_1 as QeFun),
        ((5, 2), compute_s_4_t_5_l_2 as QeFun),
        ((5, 3), compute_s_4_t_5_l_3 as QeFun),
        ((5, 4), compute_s_4_t_5_l_4 as QeFun),
    ]);
    pub static ref COMPUTE_L_0: HashMap<(i32, i32), QeFun> =
        HashMap::from([((5, 0), compute_l_0_t_5_l_0 as QeFun),]);
    pub static ref COMPUTE_L_1: HashMap<(i32, i32), QeFun> = HashMap::from([
        ((5, 1), compute_l_1_t_5_l_1_nl_0 as QeFun),
        ((5, 0), compute_l_1_t_5_l_0_nl_0 as QeFun),
    ]);
    pub static ref COMPUTE_L_2: HashMap<(i32, i32), QeFun> = HashMap::from([
        ((5, 2), compute_l_2_t_5_l_2_nl_1 as QeFun),
        ((5, 1), compute_l_2_t_5_l_1_nl_1 as QeFun),
        ((5, 0), compute_l_2_t_5_l_0_nl_1 as QeFun),
    ]);
    pub static ref COMPUTE_L_3: HashMap<(i32, i32), QeFun> = HashMap::from([
        ((5, 3), compute_l_3_t_5_l_3_nl_2 as QeFun),
        ((5, 2), compute_l_3_t_5_l_2_nl_2 as QeFun),
        ((5, 1), compute_l_3_t_5_l_1_nl_2 as QeFun),
        ((5, 0), compute_l_3_t_5_l_0_nl_2 as QeFun),
    ]);
    pub static ref COMPUTE_L_4: HashMap<(i32, i32), QeFun> = HashMap::from([
        ((5, 4), compute_l_4_t_5_l_4_nl_3 as QeFun),
        ((5, 3), compute_l_4_t_5_l_3_nl_3 as QeFun),
        ((5, 2), compute_l_4_t_5_l_2_nl_3 as QeFun),
        ((5, 1), compute_l_4_t_5_l_1_nl_3 as QeFun),
        ((5, 0), compute_l_4_t_5_l_0_nl_3 as QeFun),
    ]);
}

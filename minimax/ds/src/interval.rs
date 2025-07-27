use std::ops::Bound;

#[derive(Copy, Clone, Debug)]
pub struct Interval<T>
where
    T: Ord + Clone + Copy,
{
    pub start: Bound<T>,
    pub end: Bound<T>,
    // start Unbounded is interpreted as -inf
    // end Unbounded is interpreted as +inf

    // (Unbounded, Unbounded) is universal set.

    // By convention, an interval cannot represent empty set. We will always
    // use an IntervalList to represent a set and an empty list denotes empty
    // interval.
}

// fn get_inner_bound<T>(bound: Bound<T>) -> T
// where
//     T: Ord + Clone + Copy,
// {
//     match bound {
//         Bound::Included(x) => x,
//         Bound::Excluded(x) => x,
//         Bound::Unbounded => unreachable!("Unbounded is not allowed here"),
//     }
// }

impl<T> Interval<T>
where
    T: Ord + Clone + Copy,
{
    pub fn new(start: Bound<T>, end: Bound<T>) -> Self {
        assert!(Interval::is_non_empty(start, end));
        Interval { start, end }
    }

    pub fn is_non_empty(start: Bound<T>, end: Bound<T>) -> bool {
        match (start, end) {
            (Bound::Included(s), Bound::Included(e)) => s <= e,
            (Bound::Excluded(s), Bound::Excluded(e)) => s < e,
            (Bound::Included(s), Bound::Excluded(e)) => s < e,
            (Bound::Excluded(s), Bound::Included(e)) => s < e,
            (Bound::Unbounded, _) => true,
            (_, Bound::Unbounded) => true,
        }
    }

    pub fn interval_lower(start: Bound<T>) -> Self {
        assert!(start != Bound::Unbounded);
        Interval::new(start, Bound::Unbounded)
    }

    pub fn interval_upper(end: Bound<T>) -> Self {
        assert!(end != Bound::Unbounded);
        Interval::new(Bound::Unbounded, end)
    }

    pub fn interval_bounded(start: Bound<T>, end: Bound<T>) -> Self {
        assert!(start != Bound::Unbounded);
        assert!(end != Bound::Unbounded);
        Interval::new(start, end)
    }

    pub fn interval_point(point: Bound<T>) -> Self {
        Interval::interval_bounded(point, point)
    }

    fn compare_ends(&self, other: &Self) -> std::cmp::Ordering {
        match (self.end, other.end) {
            (Bound::Included(e1), Bound::Included(e2)) => e1.cmp(&e2),
            (Bound::Excluded(e1), Bound::Excluded(e2)) => e1.cmp(&e2),
            (Bound::Included(e1), Bound::Excluded(e2)) => if e1 == e2 {std::cmp::Ordering::Greater} else {e1.cmp(&e2)},
            (Bound::Excluded(e1), Bound::Included(e2)) => if e1 == e2 {std::cmp::Ordering::Less} else {e1.cmp(&e2)},
            (Bound::Unbounded, Bound::Unbounded) => std::cmp::Ordering::Equal,
            (Bound::Unbounded, _) => std::cmp::Ordering::Greater,
            (_, Bound::Unbounded) => std::cmp::Ordering::Less,
        }
    }

    fn overlaps_with(&self, other: &Self) -> bool {
        // https://stackoverflow.com/questions/3269434/whats-the-most-efficient-way-to-test-if-two-ranges-overlap
        // https://stackoverflow.com/a/325939

        // ^^ Effectively there should be a non-empty interval if we swap the
        // starts and ends between self and other.
        Interval::is_non_empty(self.start, other.end) && Interval::is_non_empty(other.start, self.end)
    }

    pub fn intersection(&self, other: &Self) -> Option<Self> {
        if !self.overlaps_with(other) {
            return None;
        }

        // max of starts
        let start = match (self.start, other.start) {
            (Bound::Included(s1), Bound::Included(s2)) => Bound::Included(std::cmp::max(s1, s2)),
            (Bound::Excluded(s1), Bound::Excluded(s2)) => Bound::Excluded(std::cmp::max(s1, s2)),
            (Bound::Included(s1), Bound::Excluded(s2)) => if s2 >= s1 {Bound::Excluded(s2)} else {Bound::Included(s1)},
            (Bound::Excluded(s1), Bound::Included(s2)) => if s1 >= s2 {Bound::Excluded(s1)} else {Bound::Included(s2)},
            (Bound::Unbounded, _) => other.start,
            (_, Bound::Unbounded) => self.start,
        };

        // min of ends
        let end = match (self.end, other.end) {
            (Bound::Included(e1), Bound::Included(e2)) => Bound::Included(std::cmp::min(e1, e2)),
            (Bound::Excluded(e1), Bound::Excluded(e2)) => Bound::Excluded(std::cmp::min(e1, e2)),
            (Bound::Included(e1), Bound::Excluded(e2)) => if e2 <= e1 {Bound::Excluded(e2)} else {Bound::Included(e1)},
            (Bound::Excluded(e1), Bound::Included(e2)) => if e1 <= e2 {Bound::Excluded(e1)} else {Bound::Included(e2)},
            (Bound::Unbounded, _) => other.end,
            (_, Bound::Unbounded) => self.end,
        };

        Some(Interval { start, end })
    }
    pub fn union_if_mergable(&self, other: &Self) -> Option<Self> {
        let mut mergable: bool = self.overlaps_with(other);
        // Can merge even if intervals don't overlap, e.g., (1, 2), [2, 3] -> (1, 3]
        mergable = mergable || match (self.start, other.end) {
            (Bound::Included(s1), Bound::Included(e2)) => s1 == e2,
            (Bound::Excluded(s1), Bound::Included(e2)) => s1 == e2,
            (Bound::Included(s1), Bound::Excluded(e2)) => s1 == e2,
            (Bound::Excluded(_), Bound::Excluded(_)) => false,
            (Bound::Unbounded, _) => false,
            (_, Bound::Unbounded) => false,
        };
        mergable = mergable || match (other.start, self.end) {
            (Bound::Included(s2), Bound::Included(e1)) => s2 == e1,
            (Bound::Excluded(s2), Bound::Included(e1)) => s2 == e1,
            (Bound::Included(s2), Bound::Excluded(e1)) => s2 == e1,
            (Bound::Excluded(_), Bound::Excluded(_)) => false,
            (Bound::Unbounded, _) => false,
            (_, Bound::Unbounded) => false,
        };
        if !mergable {
            return None;
        }

        // min of starts
        let start = match (self.start, other.start) {
            (Bound::Included(s1), Bound::Included(s2)) => Bound::Included(std::cmp::min(s1, s2)),
            (Bound::Excluded(s1), Bound::Excluded(s2)) => Bound::Excluded(std::cmp::min(s1, s2)),
            (Bound::Included(s1), Bound::Excluded(s2)) => if s1 <= s2 {Bound::Included(s1)} else {Bound::Excluded(s2)},
            (Bound::Excluded(s1), Bound::Included(s2)) => if s2 <= s1 {Bound::Included(s2)} else {Bound::Excluded(s1)},
            (Bound::Unbounded, _) => Bound::Unbounded,
            (_, Bound::Unbounded) => Bound::Unbounded,
        };

        // max of ends
        let end = match (self.end, other.end) {
            (Bound::Included(e1), Bound::Included(e2)) => Bound::Included(std::cmp::max(e1, e2)),
            (Bound::Excluded(e1), Bound::Excluded(e2)) => Bound::Excluded(std::cmp::max(e1, e2)),
            (Bound::Included(e1), Bound::Excluded(e2)) => if e1 >= e2 {Bound::Included(e1)} else {Bound::Excluded(e2)},
            (Bound::Excluded(e1), Bound::Included(e2)) => if e2 >= e1 {Bound::Included(e2)} else {Bound::Excluded(e1)},
            (Bound::Unbounded, _) => Bound::Unbounded,
            (_, Bound::Unbounded) => Bound::Unbounded,
        };

        return Some(Interval { start, end });
    }
}

impl<T> PartialEq for Interval<T>
where
    T: Ord + Clone + Copy,
{
    fn eq(&self, other: &Self) -> bool {
        self.start == other.start && self.end == other.end
    }
}

impl<T> Eq for Interval<T> where T: Ord + Clone + Copy {}

impl<T> PartialOrd for Interval<T>
where
    T: Ord + Clone + Copy,
{
    fn partial_cmp(&self, other: &Self) -> Option<std::cmp::Ordering> {
        Some(self.cmp(other))
    }
}

impl<T> Ord for Interval<T>
where
    T: Ord + Clone + Copy,
{
    fn cmp(&self, other: &Self) -> std::cmp::Ordering {
        match (self.start, other.start) {
            (Bound::Included(s1), Bound::Included(s2)) => if s1 == s2 {self.compare_ends(other)} else {s1.cmp(&s2)},
            (Bound::Excluded(s1), Bound::Excluded(s2)) => if s1 == s2 {self.compare_ends(other)} else {s1.cmp(&s2)},
            (Bound::Included(s1), Bound::Excluded(s2)) => if s1 == s2 {std::cmp::Ordering::Less} else {s1.cmp(&s2)},
            (Bound::Excluded(s1), Bound::Included(s2)) => if s1 == s2 {std::cmp::Ordering::Greater} else {s1.cmp(&s2)},
            (Bound::Unbounded, Bound::Unbounded) => self.compare_ends(other),
            (Bound::Unbounded, _) => std::cmp::Ordering::Less,
            (_, Bound::Unbounded) => std::cmp::Ordering::Greater,
        }
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct IntervalList<T>
where
    T: Ord + Clone + Copy,
{
    intervals: Vec<Interval<T>>,

    // [(None, None)] is universal set.
    // [] is empty set.
}

impl<T> IntervalList<T>
where
    T: Ord + Clone + Copy,
{
    pub fn new(intervals: Vec<Interval<T>>) -> Self {
        // Intervals are sorted and non-overlapping
        IntervalList {
            intervals: IntervalList::sort_merge_intervals(intervals),
        }
    }

    pub fn new_raw(intervals: Vec<Interval<T>>) -> Self {
        IntervalList {
            intervals,
        }
    }

    pub fn from_interval_lists(interval_lists: Vec<IntervalList<T>>) -> Self {
        // TODO: can do quicker assuming inputs are sorted.
        let mut intervals = Vec::new();
        for interval_list in interval_lists {
            intervals.extend(interval_list.intervals.iter().copied());
        }
        IntervalList::new(intervals)
    }

    pub fn new_interval(interval: Interval<T>) -> Self {
        IntervalList {
            intervals: vec![interval],
        }
    }

    pub fn is_empty(&self) -> bool {
        self.intervals.is_empty()
    }

    pub fn is_contiguous_interval(&self) -> bool {
        self.intervals.len() == 1
    }

    pub fn is_point(&self) -> bool {
        if self.intervals.len() != 1 {
            return false;
        }

        let st = self.intervals[0].start;
        let end = self.intervals[0].end;

        if st == Bound::Unbounded || end == Bound::Unbounded {
            return false;
        }

        // Since interval cannot be empty, we don't need to check if st and end
        // are excluded bounds. But have that check just in case.
        st == end && matches!(st, Bound::Included(_))
    }

    pub fn interval_point(point: Bound<T>) -> Self {
        IntervalList::new_interval(Interval::interval_point(point))
    }

    pub fn interval_except(point: Bound<T>) -> Self {
        assert!(matches!(point, Bound::Excluded(_)));
        IntervalList::new_raw(vec![
            Interval::interval_upper(point),
            Interval::interval_lower(point),
        ])
    }

    pub fn interval_lower(start: Bound<T>) -> Self {
        IntervalList::new_interval(Interval::interval_lower(start))
    }

    pub fn interval_upper(end: Bound<T>) -> Self {
        IntervalList::new_interval(Interval::interval_upper(end))
    }

    pub fn interval_bounded(start: Bound<T>, end: Bound<T>) -> Self {
        IntervalList::new_interval(Interval::interval_bounded(start, end))
    }

    pub fn sort_merge_intervals(input: Vec<Interval<T>>) -> Vec<Interval<T>> {
        if input.is_empty() {
            // Some times an intersection might create an empty interval list.
            // This represents null set.
            return input;
        }

        let mut sorted_intervals = input.clone();
        sorted_intervals.sort();

        let mut ret = Vec::new();
        ret.push(sorted_intervals[0]);

        for current in sorted_intervals.iter().skip(1) {
            let last: &mut Interval<T> = ret.last_mut().unwrap();

            let union = last.union_if_mergable(current);
            if union.is_some() {
                *last = union.unwrap();
            } else {
                ret.push(*current);
            }
        }

        ret
    }

    pub fn union(&self, other: &Self) -> Self {
        // O(n log n)
        // TODO: can do O(n+m)
        let all_intervals: Vec<Interval<T>> = self
            .intervals
            .iter()
            .copied()
            .chain(other.intervals.iter().copied())
            .collect();
        IntervalList::new(all_intervals)
    }

    // pub fn intersection(&self, other: &Self) -> Self {
    //     // O(n^2)
    //     let mut union_list = Vec::new();
    //     for interval in other.intervals.iter() {
    //         union_list.push(self.intersect_interval(interval));
    //     }
    //     let mut ret = union_list[0].clone();
    //     for interval_list in union_list.iter().skip(1) {
    //         ret = ret.union(interval_list);
    //     }
    //     ret
    // }

    pub fn intersection(&self, other: &Self) -> Self {
        // O(n + m) Assuming the input IntervalLists are sorted and
        // individually non-overlapping.

        let mut ret = Vec::new();
        let mut i1 = 0;
        let mut i2 = 0;
        while i1 < self.intervals.len() && i2 < other.intervals.len() {
            let interval1 = &self.intervals[i1];
            let interval2 = &other.intervals[i2];

            if interval1.overlaps_with(interval2) {
                let intersection = interval1.intersection(interval2).unwrap();
                ret.push(intersection);
            }

            // Increment the pointer that points to the interval having smaller
            // end.
            let min_end = match (interval1.end, interval2.end) {
                (Bound::Included(e1), Bound::Included(e2)) => Bound::Included(std::cmp::min(e1, e2)),
                (Bound::Excluded(e1), Bound::Excluded(e2)) => Bound::Excluded(std::cmp::min(e1, e2)),
                (Bound::Included(e1), Bound::Excluded(e2)) => if e2 <= e1 {Bound::Excluded(e2)} else {Bound::Included(e1)},
                (Bound::Excluded(e1), Bound::Included(e2)) => if e1 <= e2 {Bound::Excluded(e1)} else {Bound::Included(e2)},
                (Bound::Unbounded, _) => interval2.end,
                (_, Bound::Unbounded) => interval1.end,
            };

            if min_end == interval1.end {
                i1 += 1;
            }
            if min_end == interval2.end {
                i2 += 1;
            }
        }
        IntervalList::new_raw(ret)
    }

    fn intersect_interval(&self, other: &Interval<T>) -> Self {
        let mut ret = Vec::new();
        for interval in self.intervals.iter() {
            if interval.overlaps_with(other) {
                ret.push(interval.intersection(other).unwrap());
            }
        }
        IntervalList::new(ret)
    }

    pub fn min(&self) -> Bound<T> {
        assert!(!self.intervals.is_empty());
        return self.intervals.first().unwrap().start;
    }

    pub fn max(&self) -> Bound<T> {
        assert!(!self.intervals.is_empty());
        return self.intervals.last().unwrap().end;
    }

    pub fn get_intervals(&self) -> &Vec<Interval<T>> {
        &self.intervals
    }
}

#[cfg(test)]
mod tests {
    use num_rational::Rational64;

    use super::*;

    #[test]
    fn test_union() {
        let a = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Included(1), Bound::Excluded(2)),
            Interval::interval_bounded(Bound::Excluded(4), Bound::Excluded(5)),
        ]);
        let b = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Included(2), Bound::Excluded(3)),
            Interval::interval_bounded(Bound::Excluded(5), Bound::Included(6)),
        ]);
        let c = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Included(1), Bound::Excluded(3)),
            Interval::interval_bounded(Bound::Excluded(4), Bound::Excluded(5)),
            Interval::interval_bounded(Bound::Excluded(5), Bound::Included(6)),
        ]);
        assert_eq!(a.union(&b), c);
        assert_eq!(b.union(&a), c);
    }

    #[test]
    fn test_intersection() {
        let a = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Excluded(1), Bound::Included(2)),
            Interval::interval_bounded(Bound::Excluded(4), Bound::Included(5)),
        ]);
        let b = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Included(2), Bound::Included(3)),
            Interval::interval_bounded(Bound::Excluded(5), Bound::Included(6)),
        ]);
        let c = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Included(2), Bound::Included(2)),
        ]);
        assert_eq!(a.intersection(&b), c);
        assert_eq!(b.intersection(&a), c);
    }

    #[test]
    fn test_intersection_2() {
        let a = IntervalList::new(vec![
            Interval::interval_upper(Bound::Included(Rational64::new(21, 4)))
        ]);
        let b = IntervalList::new(vec![
            Interval::interval_upper(Bound::Excluded(Rational64::new(21, 4))),
            Interval::interval_lower(Bound::Included(Rational64::new(23119, 4096)))
        ]);
        let c = IntervalList::new(vec![
            Interval::interval_upper(Bound::Excluded(Rational64::new(21, 4)))
        ]);
        assert_eq!(a.intersection(&b), c);
        assert_eq!(b.intersection(&a), c);
    }

    #[test]
    fn test_intersection_3() {
        let a = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Included(Rational64::new(0, 1)), Bound::Excluded(Rational64::new(60, 7)))
        ]);
        let b = IntervalList::new(vec![
            Interval::interval_upper(Bound::Included(Rational64::new(10, 1)))
        ]);
        let c = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Included(Rational64::new(0, 1)), Bound::Excluded(Rational64::new(60, 7)))
        ]);
        assert_eq!(a.intersection(&b), c);
        assert_eq!(b.intersection(&a), c);
    }

    #[test]
    fn test_intersection_bounded_unbounded() {
        let a = IntervalList::new(vec![
            Interval::interval_lower(Bound::Included(Rational64::new(5, 1)))
        ]);
        let b = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Included(Rational64::new(0, 1)), Bound::Excluded(Rational64::new(1000, 1)))
        ]);
        let c = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Included(Rational64::new(5, 1)), Bound::Excluded(Rational64::new(1000, 1)))
        ]);
        assert_eq!(a.intersection(&b), c);
        assert_eq!(b.intersection(&a), c);
    }

    #[test]
    fn test_intersection_interval() {
        let a = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Included(1), Bound::Included(2)),
            Interval::interval_bounded(Bound::Included(4), Bound::Included(5)),
        ]);
        let b = Interval::interval_bounded(Bound::Included(2), Bound::Included(3));
        let c = IntervalList::new(vec![Interval::interval_bounded(Bound::Included(2), Bound::Included(2))]);
        assert_eq!(a.intersect_interval(&b), c);
    }

    #[test]
    fn test_sort_merge() {
        let a = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Excluded(Rational64::new(1, 2)), Bound::Excluded(Rational64::new(5, 1))),
            Interval::interval_bounded(Bound::Included(Rational64::new(0, 1)), Bound::Included(Rational64::new(3, 1))),
        ]);
        assert_eq!(
            a.intervals,
            vec![Interval::interval_bounded(
                Bound::Included(Rational64::new(0, 1)),
                Bound::Excluded(Rational64::new(5, 1))
            )]
        );
    }

    #[test]
    fn test_union_unbounded() {
        let a = IntervalList::new(vec![
            Interval::interval_upper(Bound::Included(Rational64::new(1, 2))),
            Interval::interval_lower(Bound::Excluded(Rational64::new(5, 1))),
        ]);
        let b = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Excluded(Rational64::new(-1, 1)), Bound::Included(Rational64::new(2, 1))),
            Interval::interval_lower(Bound::Included(Rational64::new(6, 1))),
        ]);
        let c = IntervalList::new(vec![
            Interval::interval_upper(Bound::Included(Rational64::new(2, 1))),
            Interval::interval_lower(Bound::Excluded(Rational64::new(5, 1))),
        ]);
        println!("{:?}\n{:?}\n{:?}", a, b, c);
        assert_eq!(a.union(&b), c);
        assert_eq!(b.union(&a), c);
    }

    #[test]
    fn test_intersection_unbounded() {
        let a = IntervalList::new(vec![
            Interval::interval_upper(Bound::Included(Rational64::new(1, 2))),
            Interval::interval_lower(Bound::Excluded(Rational64::new(5, 1))),
        ]);
        let b = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Excluded(Rational64::new(-1, 1)), Bound::Included(Rational64::new(2, 1))),
            Interval::interval_lower(Bound::Included(Rational64::new(6, 1))),
        ]);
        let c = IntervalList::new(vec![
            Interval::interval_bounded(Bound::Excluded(Rational64::new(-1, 1)), Bound::Included(Rational64::new(1, 2))),
            Interval::interval_lower(Bound::Included(Rational64::new(6, 1))),
        ]);
        assert_eq!(a.intersection(&b), c);
        assert_eq!(b.intersection(&a), c);
    }

    #[test]
    fn test_sort_merge_unbounded() {
        let a = IntervalList::new(vec![
            Interval::interval_lower(Bound::Excluded(Rational64::new(10, 1))),
            Interval::interval_bounded(Bound::Excluded(Rational64::new(3, 1)), Bound::Excluded(Rational64::new(6, 1))),
            Interval::interval_upper(Bound::Excluded(Rational64::new(5, 1))),
            Interval::interval_upper(Bound::Excluded(Rational64::new(1, 2))),
        ]);
        assert_eq!(
            a.intervals,
            vec![
                Interval::interval_upper(Bound::Excluded(Rational64::new(6, 1))),
                Interval::interval_lower(Bound::Excluded(Rational64::new(10, 1)))
            ]
        );
    }
}

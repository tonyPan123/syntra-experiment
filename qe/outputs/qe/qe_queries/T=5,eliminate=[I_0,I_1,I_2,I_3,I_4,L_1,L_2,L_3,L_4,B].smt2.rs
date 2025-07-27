fn main() {
    let mut ret = IntervalList::new(vec![Interval::new(None, None)]);
    if -h[3].a * 1 + h[3].s + h[1].a + -h[2].s * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![Interval::interval_upper(
            -h[0].a * 1 + h[0].ld + h[2].s,
        )]);
        ret = ret.intersection(&tmp);
    }
    if -h[3].a * 1 + h[2].a <= 0.into() {
        let tmp = IntervalList::new(vec![Interval::interval_upper(h[3].s + -h[1].s * 1)]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::new(vec![
        Interval::interval_upper(-h[0].a * 1 + h[0].ld + h[2].s),
        Interval::interval_lower(-h[3].a * 1 + h[4].s + h[1].a + -h[2].s * 1),
    ]);
    ret = ret.intersection(&tmp);
    if -h[2].a * 1 + h[1].a <= 0.into() {
        let tmp = IntervalList::new(vec![Interval::interval_upper(
            -h[0].a * 1 + h[0].ld + h[2].s,
        )]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::new(vec![
        Interval::interval_upper(-h[0].a * 1 + h[0].ld + h[2].s),
        Interval::interval_lower(-h[2].a * 1 + h[3].s + h[1].a + -h[2].s * 1),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::new(vec![
        Interval::interval_upper(-h[0].a * 1 + h[0].ld + h[2].s),
        Interval::interval_lower(
            -h[2].a * 1 / 2 + h[4].s * 1 / 2 + h[1].a * 1 / 2 + -h[2].s * 1 / 2,
        ),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::new(vec![
        Interval::interval_upper(h[3].s + -h[1].s * 1),
        Interval::interval_lower(-h[3].a * 1 + h[4].s + h[2].a + -h[3].s * 1),
    ]);
    ret = ret.intersection(&tmp);
    if -h[3].a * 1 + h[4].s + h[1].a + -h[3].s * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 / 2 + h[0].ld * 1 / 2 + h[3].s * 1 / 2),
            Interval::interval_lower(-h[3].a * 1 + h[4].s + h[2].a + -h[3].s * 1),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::new(vec![Interval::interval_lower(
        h[4].s * 1 / 2 + -h[3].s * 1 / 2,
    )]);
    ret = ret.intersection(&tmp);
    if -h[3].a * 1 + h[4].s + h[1].a + -h[3].s * 2 + h[0].s + -h[0].a * 1 + h[2].a <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 / 2 + h[0].ld * 1 / 2 + h[3].s * 1 / 2),
            Interval::interval_upper(-h[1].a * 1 + h[3].s + h[0].ld),
            Interval::interval_lower(-h[3].a * 1 + h[4].s + h[2].a + -h[3].s * 1),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[1].a + h[4].s + -h[4].a * 1 + -h[2].s * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![Interval::interval_upper(
            -h[0].a * 1 + h[0].ld + h[2].s,
        )]);
        ret = ret.intersection(&tmp);
    }
    if h[4].s + -h[4].a * 1 + h[2].a + -h[3].s * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 / 2 + h[0].ld * 1 / 2 + h[3].s * 1 / 2),
            Interval::interval_upper(-h[1].a * 1 + -h[4].s * 1 + h[4].a + h[3].s),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::new(vec![Interval::interval_lower(
        h[3].s * 1 / 2 + -h[2].s * 1 / 2,
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::new(vec![Interval::interval_lower(
        h[4].s * 1 / 3 + -h[2].s * 1 / 3,
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::new(vec![
        Interval::interval_lower(-h[0].a * 1 + h[1].a),
        Interval::interval_upper(-h[0].a * 1 + h[0].ld + h[2].s),
        Interval::interval_lower(
            -h[2].a * 1
                + h[4].s
                + -h[4].a * 1
                + h[1].a * 2
                + -h[2].s * 2
                + h[0].s
                + -h[0].a * 1
                + h[3].a,
        ),
        Interval::interval_lower(
            h[3].a + h[4].s + -h[4].a * 1 + -h[2].a * 1 + h[1].a + -h[2].s * 1,
        ),
    ]);
    ret = ret.intersection(&tmp);
    if h[1].a + -h[2].s * 1 + -h[0].ld * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 + h[1].a),
            Interval::interval_lower(
                -h[2].a * 1
                    + h[4].s
                    + -h[4].a * 1
                    + h[1].a * 2
                    + -h[2].s * 2
                    + h[0].s
                    + -h[0].a * 1
                    + h[3].a,
            ),
            Interval::interval_lower(
                h[3].a + h[4].s + -h[4].a * 1 + -h[2].a * 1 + h[1].a + -h[2].s * 1,
            ),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[1].a + -h[2].s * 1 + -h[0].ld * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 + h[0].ld + h[2].s),
            Interval::interval_lower(
                h[4].s + -h[4].a * 1 + h[1].a + -h[2].s * 2 + h[0].s + -h[0].a * 1 + h[2].a,
            ),
            Interval::interval_lower(h[4].s + -h[4].a * 1 + h[2].a + -h[2].s * 1),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[4].s + -h[4].a * 1 + h[2].a + -h[3].s * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![Interval::interval_upper(h[3].s + -h[1].s * 1)]);
        ret = ret.intersection(&tmp);
    }
    if h[1].a + -h[2].s * 1 + h[0].s + -h[0].a * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 + h[1].a),
            Interval::interval_lower(
                h[3].a * 1 / 2 + h[4].s * 1 / 2 + -h[4].a * 1 / 2 + -h[2].s * 1 / 2,
            ),
        ]);
        ret = ret.intersection(&tmp);
    }
    if (h[2].a + -h[3].s * 1 + -h[1].a * 1 + h[1].s <= 0.into())
        || (-h[1].a * 1 + h[0].a <= 0.into())
    {
        let tmp = IntervalList::new(vec![Interval::interval_upper(h[3].s + -h[1].s * 1)]);
        ret = ret.intersection(&tmp);
    }
    if h[1].a + -h[2].s * 1 + -h[0].ld * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 + h[1].a),
            Interval::interval_lower(
                h[1].a * 1 / 2
                    + h[4].s * 1 / 2
                    + -h[4].a * 1 / 2
                    + -h[2].s * 1
                    + h[0].s * 1 / 2
                    + -h[0].a * 1 / 2
                    + h[3].a * 1 / 2,
            ),
            Interval::interval_lower(
                -h[1].a * 1 / 2
                    + h[4].s * 1 / 2
                    + -h[4].a * 1 / 2
                    + -h[0].s * 1 / 2
                    + h[0].a * 1 / 2
                    + h[3].a * 1 / 2,
            ),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[1].a + -h[2].s * 1 + -h[0].ld * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 + h[0].ld + h[2].s),
            Interval::interval_lower(
                -h[3].a * 1 + h[1].a + h[3].s + -h[2].s * 2 + h[0].s + -h[0].a * 1 + h[2].a,
            ),
            Interval::interval_lower(-h[3].a * 1 + h[2].a + h[3].s + -h[2].s * 1),
        ]);
        ret = ret.intersection(&tmp);
    }
    if (-h[2].a * 1 + h[2].s + -h[1].s * 1 + h[0].a <= 0.into())
        || (h[3].a + -h[4].s * 1 + -h[2].a * 1 + h[2].s <= 0.into())
    {
        let tmp = IntervalList::new(vec![Interval::interval_upper(h[4].s + -h[2].s * 1)]);
        ret = ret.intersection(&tmp);
    }
    if h[3].a + -h[4].a * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![Interval::interval_upper(h[4].s + -h[2].s * 1)]);
        ret = ret.intersection(&tmp);
    }
    if h[1].a + -h[2].s * 1 + -h[0].ld * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 + h[0].ld + h[2].s),
            Interval::interval_lower(
                -h[3].a * 1 / 2 + h[4].s * 1 / 2 + h[2].a * 1 / 2 + -h[2].s * 1 / 2,
            ),
            Interval::interval_lower(
                -h[3].a * 1 / 2
                    + h[4].s * 1 / 2
                    + h[1].a * 1 / 2
                    + -h[2].s * 1
                    + h[0].s * 1 / 2
                    + -h[0].a * 1 / 2
                    + h[2].a * 1 / 2,
            ),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::new(vec![
        Interval::interval_lower(
            h[2].a + h[4].s + -h[4].a * 1 + -h[3].s * 2 + h[0].s + -h[0].a * 1 + h[3].a,
        ),
        Interval::interval_upper(h[2].a + -h[1].a * 1),
        Interval::interval_upper(-h[1].a * 1 + h[3].s + h[0].ld),
        Interval::interval_upper(h[1].a + -h[0].a * 1),
        Interval::interval_lower(-h[1].a * 1 + h[2].a),
        Interval::interval_lower(h[3].a + h[4].s + -h[4].a * 1 + -h[3].s * 1),
    ]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::new(vec![
        Interval::interval_lower(-h[0].a * 1 + h[1].a),
        Interval::interval_upper(-h[0].a * 1 + h[0].ld + h[2].s),
        Interval::interval_lower(
            h[1].a * 1 / 2
                + h[4].s * 1 / 2
                + -h[4].a * 1 / 2
                + -h[2].s * 1
                + h[0].s * 1 / 2
                + -h[0].a * 1 / 2
                + h[3].a * 1 / 2,
        ),
        Interval::interval_lower(
            h[3].a * 1 / 2 + h[4].s * 1 / 2 + -h[4].a * 1 / 2 + -h[2].s * 1 / 2,
        ),
    ]);
    ret = ret.intersection(&tmp);
    if h[3].a + -h[4].a * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(h[4].s * 1 / 3 + -h[0].a * 1 / 3 + h[0].ld * 1 / 3),
            Interval::interval_lower(h[2].a + -h[1].a * 1),
            Interval::interval_upper(-h[1].a * 1 / 2 + h[4].a * 1 / 2),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[3].a + -h[4].s * 1 + -h[2].a * 1 + h[2].s <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(h[4].s + -h[2].s * 1),
            Interval::interval_lower(-h[2].a * 1 + h[1].a + h[2].s + h[0].ld + -h[0].a * 1),
        ]);
        ret = ret.intersection(&tmp);
    }
    if (-h[1].a * 1 + h[0].a <= 0.into())
        || (h[3].a + -h[4].s * 1 + -h[1].a * 1 + h[1].s <= 0.into())
    {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(h[4].s * 1 / 2 + -h[1].s * 1 / 2),
            Interval::interval_upper(-h[2].a * 1 + h[4].s + h[1].a + -h[1].s * 1),
            Interval::interval_upper(
                -h[3].a * 1 + h[4].s + h[1].a + -h[1].s * 1 + -h[0].a * 1 + h[2].a,
            ),
        ]);
        ret = ret.intersection(&tmp);
    }
    if -h[3].a * 1 + h[2].a <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 / 2 + h[0].ld * 1 / 2 + h[3].s * 1 / 2),
            Interval::interval_upper(-h[1].a * 1 + h[3].s + h[0].ld),
            Interval::interval_upper(
                h[3].a + -h[1].a * 1 + h[3].s + -h[0].s * 1 + h[0].a + -h[2].a * 1,
            ),
        ]);
        ret = ret.intersection(&tmp);
    }
    if -h[3].a * 1 + h[2].a <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 / 2 + h[0].ld * 1 / 2 + h[3].s * 1 / 2),
            Interval::interval_upper(h[3].a + -h[1].a * 1),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[1].a * 1 / 2
        + h[4].s * 1 / 2
        + -h[4].a * 1 / 2
        + -h[3].s * 1
        + h[0].s * 1 / 2
        + -h[0].a * 1 / 2
        + h[3].a * 1 / 2
        <= 0.into()
    {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 / 2 + h[0].ld * 1 / 2 + h[3].s * 1 / 2),
            Interval::interval_lower(h[2].a + -h[1].a * 1),
            Interval::interval_upper(-h[1].a * 1 + h[3].s + h[0].ld),
            Interval::interval_lower(h[3].a + h[4].s + -h[4].a * 1 + -h[3].s * 1),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[2].a + -h[0].a * 1 + -h[2].s * 1 + h[1].s <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(h[4].s + -h[2].s * 1),
            Interval::interval_lower(-h[1].a * 1 + h[2].s + -h[1].s * 1 + h[0].a),
            Interval::interval_lower(
                h[3].a
                    + -h[4].s * 1
                    + -h[1].a * 1
                    + h[2].s * 2
                    + -h[1].s * 1
                    + h[0].a
                    + -h[2].a * 1,
            ),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[3].a + -h[4].s * 1 + -h[2].a * 1 + h[2].s <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(h[4].s + -h[2].s * 1),
            Interval::interval_lower(-h[1].a * 1 + h[2].s + -h[1].s * 1 + h[0].a),
        ]);
        ret = ret.intersection(&tmp);
    }
    if !(h[2].a + -h[0].a * 1 + -h[2].s * 1 + h[1].s <= 0.into()) {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(h[4].s + -h[2].s * 1),
            Interval::interval_lower(-h[1].a * 1 + h[2].s + -h[1].s * 1 + h[0].a),
            Interval::interval_lower(h[3].a + -h[4].s * 1 + -h[1].a * 1 + h[2].s),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[3].a + -h[4].a * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(h[4].s * 1 / 3 + -h[0].a * 1 / 3 + h[0].ld * 1 / 3),
            Interval::interval_lower(-h[0].a * 1 / 2 + h[2].a * 1 / 2),
            Interval::interval_upper(-h[1].a * 1 + h[2].a),
            Interval::interval_upper(
                -h[2].a * 1 + h[4].s + h[4].a + -h[0].s * 1 + h[0].a + -h[3].a * 1,
            ),
            Interval::interval_upper(
                -h[2].a * 1 / 2
                    + h[4].s * 1 / 2
                    + h[4].a * 1 / 2
                    + -h[0].a * 1 / 2
                    + h[0].ld * 1 / 2
                    + h[1].a * 1 / 2
                    + -h[3].a * 1 / 2,
            ),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[3].a + -h[4].a * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 / 2 + h[2].a * 1 / 2),
            Interval::interval_upper(-h[1].a * 1 + h[2].a),
            Interval::interval_upper(-h[2].a * 1 + h[4].s + h[0].ld),
            Interval::interval_upper(
                -h[2].a * 1 + h[4].s + h[4].a + -h[0].s * 1 + h[0].a + -h[3].a * 1,
            ),
            Interval::interval_upper(
                -h[2].a * 1 / 2
                    + h[4].s * 1 / 2
                    + h[4].a * 1 / 2
                    + -h[0].a * 1 / 2
                    + h[0].ld * 1 / 2
                    + h[1].a * 1 / 2
                    + -h[3].a * 1 / 2,
            ),
        ]);
        ret = ret.intersection(&tmp);
    }
    if (h[2].a + -h[3].s * 1 + -h[0].ld * 1 <= 0.into())
        || (h[2].a * 1 / 2
            + h[4].s * 1 / 2
            + -h[4].a * 1 / 2
            + -h[3].s * 1
            + h[0].a * 1 / 2
            + -h[0].ld * 1 / 2
            + -h[1].a * 1 / 2
            + h[3].a * 1 / 2
            <= 0.into())
    {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 / 2 + h[2].a * 1 / 2),
            Interval::interval_lower(-h[0].a * 2 + h[0].ld + h[0].s + h[1].a),
            Interval::interval_lower(h[3].a + h[4].s + -h[4].a * 1 + -h[3].s * 1),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[2].a + -h[3].s * 1 + -h[1].a * 1 + h[1].s <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(h[3].s + -h[1].s * 1),
            Interval::interval_lower(h[3].a + h[4].s + -h[4].a * 1 + -h[3].s * 1),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[3].a + -h[4].a * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(h[4].s * 1 / 3 + -h[0].a * 1 / 3 + h[0].ld * 1 / 3),
            Interval::interval_upper(-h[1].a * 1 / 2 + h[4].a * 1 / 2),
            Interval::interval_upper(-h[2].a * 1 + h[4].a),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[3].a + -h[4].a * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(h[4].s * 1 / 3 + -h[0].a * 1 / 3 + h[0].ld * 1 / 3),
            Interval::interval_upper(h[2].a + -h[1].a * 1),
            Interval::interval_lower(-h[1].a * 1 + h[2].a),
            Interval::interval_upper(
                -h[1].a * 1 / 2
                    + h[4].s * 1 / 2
                    + h[4].a * 1 / 2
                    + -h[0].s * 1 / 2
                    + h[0].a * 1 / 2
                    + -h[3].a * 1 / 2,
            ),
            Interval::interval_upper(-h[2].a * 1 + h[4].s + h[0].ld),
        ]);
        ret = ret.intersection(&tmp);
    }
    let tmp = IntervalList::new(vec![
        Interval::interval_lower(
            h[2].a + h[4].s + -h[4].a * 1 + -h[3].s * 2 + h[0].s + -h[0].a * 1 + h[3].a,
        ),
        Interval::interval_upper(h[2].a + -h[1].a * 1),
        Interval::interval_lower(h[1].a + -h[0].a * 1),
        Interval::interval_upper(-h[2].a * 1 + h[3].s + -h[0].a * 1 + h[0].ld + h[1].a),
        Interval::interval_lower(h[3].a + h[4].s + -h[4].a * 1 + -h[3].s * 1),
    ]);
    ret = ret.intersection(&tmp);
    if h[2].a + -h[3].s * 1 + -h[0].ld * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_lower(
                h[2].a + h[4].s + -h[4].a * 1 + -h[3].s * 2 + h[0].s + -h[0].a * 1 + h[3].a,
            ),
            Interval::interval_upper(-h[1].a * 1 + h[2].a),
            Interval::interval_upper(-h[2].a * 1 + h[3].s + -h[0].a * 1 + h[0].ld + h[1].a),
            Interval::interval_lower(h[3].a + h[4].s + -h[4].a * 1 + -h[3].s * 1),
        ]);
        ret = ret.intersection(&tmp);
    }
    if (h[2].a + -h[3].s * 1 + -h[0].ld * 1 <= 0.into())
        || (h[2].a * 1 / 2
            + h[4].s * 1 / 2
            + -h[4].a * 1 / 2
            + -h[3].s * 1
            + h[0].a * 1 / 2
            + -h[0].ld * 1 / 2
            + -h[1].a * 1 / 2
            + h[3].a * 1 / 2
            <= 0.into())
    {
        let tmp = IntervalList::new(vec![
            Interval::interval_lower(
                h[2].a + h[4].s + -h[4].a * 1 + -h[3].s * 2 + h[0].s + -h[0].a * 1 + h[3].a,
            ),
            Interval::interval_upper(-h[0].a * 1 / 2 + h[2].a * 1 / 2),
            Interval::interval_lower(h[1].a + -h[0].a * 1),
            Interval::interval_lower(h[3].a + h[4].s + -h[4].a * 1 + -h[3].s * 1),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[2].a * 1 / 2
        + h[4].s * 1 / 2
        + -h[4].a * 1 / 2
        + -h[3].s * 1
        + h[0].a * 1 / 2
        + -h[0].ld * 1 / 2
        + -h[1].a * 1 / 2
        + h[3].a * 1 / 2
        <= 0.into()
    {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 / 2 + h[0].ld * 1 / 2 + h[3].s * 1 / 2),
            Interval::interval_lower(-h[0].a * 1 / 2 + h[2].a * 1 / 2),
            Interval::interval_lower(-h[0].a * 2 + h[0].ld + h[0].s + h[1].a),
            Interval::interval_lower(h[3].a + h[4].s + -h[4].a * 1 + -h[3].s * 1),
        ]);
        ret = ret.intersection(&tmp);
    }
    if (h[2].a * 1 / 2
        + h[4].s * 1 / 2
        + -h[4].a * 1 / 2
        + -h[3].s * 1
        + h[0].a * 1 / 2
        + -h[0].ld * 1 / 2
        + -h[1].a * 1 / 2
        + h[3].a * 1 / 2
        <= 0.into())
        || (!(-h[3].s * 1 + h[0].s + -h[0].a * 1 + h[2].a <= 0.into()))
    {
        let tmp = IntervalList::new(vec![
            Interval::interval_lower(
                h[2].a + h[4].s + -h[4].a * 1 + -h[3].s * 2 + h[0].s + -h[0].a * 1 + h[3].a,
            ),
            Interval::interval_upper(-h[0].a * 1 / 2 + h[0].ld * 1 / 2 + h[3].s * 1 / 2),
            Interval::interval_lower(-h[0].a * 1 / 2 + h[2].a * 1 / 2),
            Interval::interval_upper(-h[1].a * 1 + h[2].a),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[4].s + -h[4].a * 1 + h[2].a + -h[3].s * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(-h[0].a * 1 / 2 + h[0].ld * 1 / 2 + h[3].s * 1 / 2),
            Interval::interval_upper(-h[1].a * 1 + h[3].s + h[0].ld),
            Interval::interval_upper(
                -h[4].s * 1
                    + h[4].a
                    + -h[1].a * 1
                    + h[3].s * 2
                    + -h[0].s * 1
                    + h[0].a
                    + -h[2].a * 1,
            ),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[3].a + -h[4].a * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(h[4].s * 1 / 3 + -h[0].a * 1 / 3 + h[0].ld * 1 / 3),
            Interval::interval_lower(h[2].a + -h[1].a * 1),
            Interval::interval_upper(
                -h[1].a * 1 / 2
                    + h[4].s * 1 / 2
                    + h[4].a * 1 / 2
                    + -h[0].s * 1 / 2
                    + h[0].a * 1 / 2
                    + -h[3].a * 1 / 2,
            ),
            Interval::interval_upper(-h[1].a * 1 / 2 + h[4].s * 1 / 2 + h[0].ld * 1 / 2),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[3].a + -h[4].a * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(h[4].s * 1 / 2 + -h[1].s * 1 / 2),
            Interval::interval_upper(-h[2].a * 1 + h[4].s + h[1].a + -h[1].s * 1),
        ]);
        ret = ret.intersection(&tmp);
    }
    if h[3].a + -h[4].a * 1 <= 0.into() {
        let tmp = IntervalList::new(vec![
            Interval::interval_upper(h[4].s * 1 / 3 + -h[0].a * 1 / 3 + h[0].ld * 1 / 3),
            Interval::interval_upper(-h[2].a * 1 + h[3].a),
            Interval::interval_upper(-h[1].a * 1 / 2 + h[4].s * 1 / 2 + h[0].ld * 1 / 2),
            Interval::interval_upper(
                -h[1].a * 1 / 3
                    + h[4].s * 1 / 3
                    + h[4].a * 1 / 3
                    + -h[0].s * 1 / 3
                    + h[0].a * 1 / 3
                    + -h[2].a * 1 / 3,
            ),
        ]);
        ret = ret.intersection(&tmp);
    }
    assert!(-h[1].s * 1 + h[0].s <= 0.into());
    let tmp = IntervalList::new(vec![Interval::interval_lower(
        -h[0].a * 1 + h[0].ld + h[1].s,
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::new(vec![Interval::interval_lower(
        -h[0].a * 1 / 2 + h[0].ld * 1 / 2 + h[2].s * 1 / 2,
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::new(vec![Interval::interval_lower(
        -h[0].a * 1 / 3 + h[0].ld * 1 / 3 + h[3].s * 1 / 3,
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::new(vec![Interval::interval_lower(
        h[4].s * 1 / 4 + -h[0].a * 1 / 4 + h[0].ld * 1 / 4,
    )]);
    ret = ret.intersection(&tmp);
    assert!(-h[3].a * 1 + h[3].s + h[0].ld <= 0.into());
    assert!(h[4].s + -h[4].a * 1 + h[0].ld <= 0.into());
    assert!(-h[4].s * 1 + h[3].s <= 0.into());
    let tmp = IntervalList::new(vec![Interval::interval_lower(
        -h[1].a * 1 / 2 + h[3].s * 1 / 2 + h[0].ld * 1 / 2,
    )]);
    ret = ret.intersection(&tmp);
    assert!(h[0].s + h[0].ld + -h[0].a * 1 <= 0.into());
    assert!(-h[1].a * 1 + h[1].s + h[0].ld <= 0.into());
    let tmp = IntervalList::new(vec![Interval::interval_lower(
        h[4].s * 1 / 3 + -h[1].a * 1 / 3 + h[0].ld * 1 / 3,
    )]);
    ret = ret.intersection(&tmp);
    assert!(-h[3].s * 1 + h[2].s <= 0.into());
    assert!(-h[2].s * 1 + h[1].s <= 0.into());
    let tmp = IntervalList::new(vec![Interval::interval_lower(
        -h[1].a * 1 + h[2].s + h[0].ld,
    )]);
    ret = ret.intersection(&tmp);
    assert!(-h[2].a * 1 + h[2].s + h[0].ld <= 0.into());
    let tmp = IntervalList::new(vec![Interval::interval_lower(
        h[4].s * 1 / 2 + h[0].ld * 1 / 2 + -h[2].a * 1 / 2,
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::new(vec![Interval::interval_lower(
        -h[2].a * 1 + h[3].s + h[0].ld,
    )]);
    ret = ret.intersection(&tmp);
    let tmp = IntervalList::new(vec![Interval::interval_lower(
        -h[3].a * 1 + h[4].s + h[0].ld,
    )]);
    ret = ret.intersection(&tmp);
    ret
}

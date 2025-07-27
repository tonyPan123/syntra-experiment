import z3
from dataclasses import dataclass
from qe.environment.ideal import Ideal


class CBRDelay(Ideal):

    @dataclass
    class Config(Ideal.Config):
        D: int = 1
        use_qdel: bool = False
        use_hop_delay: bool = False

    class Variables(Ideal.Variables):
        def __init__(self, name: str, c):
            super().__init__(name, c)
            self.c = c
            # self.S = z3.RealVarVector(c.T)
            # I think using RealVarVector just makes those vars have a forall quantifier.

            if c.use_qdel:
                if c.N == 1:
                    self.qdel = [
                        [z3.Bool(f"{name}qdel_{t},{dt}") for dt in range(c.T)]
                        for t in range(c.T)
                    ]
                if c.N > 1:
                    self.qdelf = [
                        [
                            [z3.Bool(f"{name}qdel_{t},{dt}") for dt in range(c.T)]
                            for t in range(c.T)
                        ]
                        for n in range(c.N)
                    ]
                # Since CCA only sees Ld, qdel cannot be reconstructed from
                # just A, Ld, S. qdel actually leaks information about L to
                # CCA.
            if c.use_hop_delay:
                self.hop_delay = [
                    [z3.Bool(f"{name}hop_delay_{t},{dt}") for dt in range(c.T)]
                    for t in range(c.T)
                ]

        @property
        def bq(self):
            return [self.A[t] - self.L[t] - self.I[t] for t in range(self.c.T)]

    class Constraints(Ideal.Constraints):
        def ecn(self, c, v):
            assert isinstance(c, CBRDelay.Config)
            assert isinstance(v, CBRDelay.Variables)

            if not c.use_ecn:
                return []

            cl = []
            for t in range(c.D, c.T):
                cl.append(
                    v.ecn[t]
                    == (
                        v.A[t - c.D] - v.L[t - c.D] - v.I[t - c.D]
                        > c.ecn_k
                    )
                )

            return cl

        def hop_delay(self, c, v):
            assert isinstance(c, CBRDelay.Config)
            assert isinstance(v, CBRDelay.Variables)

            # hop_delay[t][dt]: True iff the bottleneck queueing delay at time t is
            # greater than or equal to dt.

            if not c.use_hop_delay:
                return []

            cl = []
            for t in range(c.T):
                for dt in range(t+1):
                    cl.append(
                        v.hop_delay[t][dt] == (v.A[t-dt] - v.L[t-dt] >= v.I[t])
                    )

            return cl

        def non_det_service(self, c, v):
            assert isinstance(c, CBRDelay.Config)
            assert isinstance(v, CBRDelay.Variables)

            cl = []
            # cl.append(v.S[0] >= 0)
            for t in range(c.T):
                if t - c.D >= 0:
                    cl.append(v.S[t] >= v.I[t - c.D])
                else:
                    assert c.D == 1
                    assert t == 0
                    cl.append(v.S[t] >= v.I[t] - v.C * c.D)
                if t - 1 >= 0:
                    cl.append(v.S[t] >= v.S[t - 1])
                cl.append(v.S[t] <= v.I[t])
            return cl

        def calculate_qdel_defs(self, c, v):
            assert isinstance(c, CBRDelay.Config)
            assert isinstance(v, CBRDelay.Variables)

            if c.N != 1:
                return []

            # qdel[t][dt>=t] is non-deterministic (including,
            #                qdel[0][dt], qdel[t][dt>t-1])
            # qdel[t][dt<t] is deterministic
            """
                dt
                0 1 2 3
            ----------
            0| n n n n
            t 1| d n n n
            2| d d n n
            3| d d d n
            """

            cl = []
            for t in range(1, c.T):
                for dt in range(t):
                    cl.append(
                        z3.Implies(
                            v.S[t] != v.S[t - 1],
                            v.qdel[t][dt]
                            == z3.And(
                                v.A[t - dt - 1] - v.L[t - dt - 1] < v.S[t],
                                v.A[t - dt] - v.L[t - dt] >= v.S[t],
                            ),
                        )
                    )
                    cl.append(
                        z3.Implies(
                            v.S[t] == v.S[t - 1], v.qdel[t][dt] == v.qdel[t - 1][dt]
                        )
                    )

            return cl

        def calculate_qdel_env(self, c, v):
            assert isinstance(c, CBRDelay.Config)
            assert isinstance(v, CBRDelay.Variables)

            if c.N != 1:
                return []

            cl = []
            # There can be only one value for queuing delay at a given time.
            # Needed only for non-deterministic choices, mostly a sanity
            # constraint for deterministic variables.
            for t in range(c.T):
                cl.append(z3.Sum(*v.qdel[t]) <= 1)

            # Let solver choose non-deterministically what happens for t = 0,
            # i.e., no constraint on qdel[0][dt].
            for t in range(1, c.T):
                for dt in range(t, c.T):
                    cl.append(
                        z3.Implies(
                            v.S[t] == v.S[t - 1], v.qdel[t][dt] == v.qdel[t - 1][dt]
                        )
                    )
                    # We let solver choose non-deterministically what happens
                    # when S[t] != S[t-1] for dt > t-1, i.e., no constraint on
                    # qdel[t][dt>t-1]

            # qdel[t][dt] is True iff queueing delay is >=dt but <dt+1 If
            # queuing delay at time t1 is dt1, then queuing delay at time
            # t2=t1+1, cannot be more than dt1+1. I.e., qdel[t2][dt1+1+1] has
            # to be false. Note qdel[t2][dt1+1] can be true as queueing delay
            # at t1+1 can be dt1+1.
            for t1 in range(c.T - 1):
                for dt1 in range(c.T):
                    t2 = t1 + 1
                    # dt2 starts from dt1+1+1
                    cl.append(
                        z3.Implies(
                            v.qdel[t1][dt1],
                            z3.And(
                                *[
                                    z3.Not(v.qdel[t2][dt2])
                                    for dt2 in range(dt1 + 1 + 1, c.T)
                                ]
                            ),
                        )
                    )
                    cl.append(
                        z3.Implies(
                            v.qdel[t1][dt1],
                            z3.Or(
                                *[
                                    v.qdel[t2][dt2]
                                    for dt2 in range(min(c.T, dt1 + 1 + 1))
                                ]
                            ),
                        )
                    )

            # Allow Qdel for time < 0 to be larger than maxdelay as the link
            # rate could have changed.
            # # Delay cannot be more than max_delay. This means that one of
            # # qdel[t][dt<=max_delay] must be true. This also means that all of
            # # qdel[t][dt>max_delay] are false.
            # max_delay = v.B/v.C + c.D
            # for t in range(c.T):
            #     some_qdel_is_true = (1 == z3.Sum(
            #         *[z3.If(dt <= max_delay, v.qdel[t][dt], False)
            #         for dt in range(c.T)]))
            #     # if max_delay is very high, then all qdel can be false.
            #     cl.append(z3.Implies(max_delay <= c.T-1, some_qdel_is_true))

            return cl

        def multi_calculate_qdel_defs(self, c, v):
            assert isinstance(c, CBRDelay.Config)
            assert isinstance(v, CBRDelay.Variables)

            if c.N == 1:
                return []

            # qdel[t][dt>=t] is non-deterministic (including,
            #                qdel[0][dt], qdel[t][dt>t-1])
            # qdel[t][dt<t] is deterministic
            """
                dt
                0 1 2 3
            ----------
            0| n n n n
            t 1| d n n n
            2| d d n n
            3| d d d n
            """

            cl = []
            for n in range(c.N):
                for t in range(1, c.T):
                    for dt in range(t):
                        cl.append(
                            z3.Implies(
                                v.Sf[n][t] != v.Sf[n][t - 1],
                                v.qdelf[n][t][dt]
                                == z3.And(
                                    v.Af[n][t - dt - 1] - v.Lf[n][t - dt - 1]
                                    < v.Sf[n][t],
                                    v.Af[n][t - dt] - v.Lf[n][t - dt] >= v.Sf[n][t],
                                ),
                            )
                        )
                        cl.append(
                            z3.Implies(
                                v.Sf[n][t] == v.Sf[n][t - 1],
                                v.qdelf[n][t][dt] == v.qdelf[n][t - 1][dt],
                            )
                        )

            return cl

        def multi_calculate_qdel_env(self, c, v):
            assert isinstance(c, CBRDelay.Config)
            assert isinstance(v, CBRDelay.Variables)

            if c.N == 1:
                return []

            cl = []
            # There can be only one value for queuing delay at a given time.
            # Needed only for non-deterministic choices, mostly a sanity
            # constraint for deterministic variables.
            for n in range(c.N):
                for t in range(c.T):
                    cl.append(z3.Sum(*v.qdelf[n][t]) <= 1)

            # Let solver choose non-deterministically what happens for t = 0,
            # i.e., no constraint on qdel[0][dt].
            for n in range(c.N):
                for t in range(1, c.T):
                    for dt in range(t, c.T):
                        cl.append(
                            z3.Implies(
                                v.Sf[n][t] == v.Sf[n][t - 1],
                                v.qdelf[n][t][dt] == v.qdelf[n][t - 1][dt],
                            )
                        )
                        # We let solver choose non-deterministically what happens
                        # when S[t] != S[t-1] for dt > t-1, i.e., no constraint on
                        # qdel[t][dt>t-1]

            # qdel[t][dt] is True iff queueing delay is >=dt but <dt+1 If
            # queuing delay at time t1 is dt1, then queuing delay at time
            # t2=t1+1, cannot be more than dt1+1. I.e., qdel[t2][dt1+1+1] has
            # to be false. Note qdel[t2][dt1+1] can be true as queueing delay
            # at t1+1 can be dt1+1.
            for n in range(c.N):
                for t1 in range(c.T - 1):
                    for dt1 in range(c.T):
                        t2 = t1 + 1
                        # dt2 starts from dt1+1+1
                        cl.append(
                            z3.Implies(
                                v.qdelf[n][t1][dt1],
                                z3.And(
                                    *[
                                        z3.Not(v.qdelf[n][t2][dt2])
                                        for dt2 in range(dt1 + 1 + 1, c.T)
                                    ]
                                ),
                            )
                        )
                        cl.append(
                            z3.Implies(
                                v.qdelf[n][t1][dt1],
                                z3.Or(
                                    *[
                                        v.qdelf[n][t2][dt2]
                                        for dt2 in range(min(c.T, dt1 + 1 + 1))
                                    ]
                                ),
                            )
                        )

            # Allow Qdel for time < 0 to be larger than maxdelay as the link
            # rate could have changed.
            # # Delay cannot be more than max_delay. This means that one of
            # # qdel[t][dt<=max_delay] must be true. This also means that all of
            # # qdel[t][dt>max_delay] are false.
            # max_delay = v.B/v.C + c.D
            # for t in range(c.T):
            #     some_qdel_is_true = (1 == z3.Sum(
            #         *[z3.If(dt <= max_delay, v.qdel[t][dt], False)
            #         for dt in range(c.T)]))
            #     # if max_delay is very high, then all qdel can be false.
            #     cl.append(z3.Implies(max_delay <= c.T-1, some_qdel_is_true))

            return cl

        def multiflow_jitter(self, c, v):
            assert isinstance(c, CBRDelay.Config)
            assert isinstance(v, CBRDelay.Variables)

            if c.N == 1:
                return []

            cl = []
            for n in range(c.N):
                for t in range(c.T):
                    if t - c.D >= 0:
                        cl.append(v.If[n][t - c.D] <= v.Sf[n][t])
                    else:
                        assert c.D == 1
                        assert t == 0
                        # TODO: verify this
                        cl.append(v.Sf[n][t] >= v.If[n][t] - v.C * c.D)

                    cl.append(v.Sf[n][t] <= v.If[n][t])

                    if t - 1 >= 0:
                        cl.append(v.Sf[n][t] >= v.Sf[n][t - 1])

            return cl

        def all_constraints(self, c, v):
            assert isinstance(c, CBRDelay.Config)

            ret = (
                self.non_det_initial(c, v)
                + self.det_loss(c, v)
                + self.det_service_ideal(c, v)
                + self.non_det_service(c, v)
                + self.non_dec_arrival(c, v)
                + self.multiflow_initial(c, v)
                + self.multiflow_sum(c, v)
                + self.multiflow_monotonic(c, v)
                + self.multiflow_fifo(c, v)
                + self.multiflow_jitter(c, v)
                + self.multiflow_bq_positive(c, v)
                # + self.non_det_cca(c, v)
            )
            if c.use_loss_detect:
                # ret += self.oracle_loss_detect(c, v)
                if c.N > 1:
                    ret += self.multiflow_loss_detect(c, v)
                else:
                    ret += self.loss_detect(c, v)
            if c.use_qdel:
                if c.N == 1:
                    ret += (self.calculate_qdel_defs(c, v)
                            + self.calculate_qdel_env(c, v))
                else:
                    assert c.N > 1
                    ret += (self.multi_calculate_qdel_defs(c, v)
                            + self.multi_calculate_qdel_env(c, v))
            if c.use_ecn:
                ret += self.ecn(c, v)
            if c.use_hop_delay:
                ret += self.hop_delay(c, v)
            return ret

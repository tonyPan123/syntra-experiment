import z3
from dataclasses import dataclass
from qe.environment.cbr_delay import CBRDelay


class CCAC(CBRDelay):

    @dataclass
    class Config(CBRDelay.Config):
        compose: bool = False

    class Variables(CBRDelay.Variables):
        def __init__(self, name: str, c):
            super().__init__(name, c)
            self.c = c
            self.T0 = z3.Real(f"{name}T0")
            self.W = [z3.Real(f"{name}W_{t}") for t in range(c.T)]

        @property
        def tokens(self):
            return [self.T0 + self.C * t for t in range(self.c.T)]

    class Constraints(CBRDelay.Constraints):
        def non_det_initial(self, c, v):
            assert isinstance(c, CCAC.Config)
            assert isinstance(v, CCAC.Variables)

            cl = []
            cl.append(v.L[0] >= 0)
            if c.use_loss_detect:
                cl.append(v.Ld[0] >= 0)
            # cl.append(v.I[0] <= v.A[0] - v.L[0])  # Bq can be negative now as
            # bursts can happen
            cl.append(v.C >= 5 * v.a)  # ~BDP is at least 5 pkts.
            cl.append(v.B >= 5 * v.a)
            cl.append(v.a == 1)
            return cl

        def non_det_waste(self, c, v):
            assert isinstance(c, CCAC.Config)
            assert isinstance(v, CCAC.Variables)

            cl = []
            if c.compose:
                for t in range(1, c.T):
                    cl.append(
                        z3.Implies(
                            v.W[t] > v.W[t - 1], v.A[t] - v.L[t] <= v.tokens[t] - v.W[t]
                        )
                    )

            else:
                for t in range(1, c.T):
                    cl.append(
                        z3.Implies(v.W[t] > v.W[t - 1], v.A[t] - v.L[t] <= v.S[t])
                    )

            for t in range(1, c.T):
                cl.append(v.W[t] >= v.W[t - 1])

            return cl

        def all_constraints(self, c, v):
            assert isinstance(c, CCAC.Config)
            assert isinstance(v, CCAC.Variables)

            del v.I
            v.I = [v.tokens[t] - v.W[t] for t in range(c.T)]

            ret = []
            for t in range(c.T):
                # In CBR delay I <= A-L already ensures this, but in CCAC I can
                # be larger.
                ret.append(v.S[t] <= v.A[t] - v.L[t])

            ret += (
                self.non_det_initial(c, v)
                + self.det_loss(c, v)
                + self.non_det_waste(c, v)
                + self.non_det_service(c, v)
                + self.non_dec_arrival(c, v)
                + self.multiflow_initial(c, v)
                + self.multiflow_sum(c, v)
                + self.multiflow_monotonic(c, v)
                + self.multiflow_fifo(c, v)
                + self.multiflow_jitter(c, v)
                # + self.det_service_ideal(c, v) # We can
                # non-deterministically waste, so I is not deterministic.
                # + self.non_det_cca(c, v)
            )
            if c.use_loss_detect:
                # ret += self.oracle_loss_detect(c, v)
                ret += self.loss_detect(c, v)
            if c.use_qdel:
                ret += self.calculate_qdel_defs(c, v) + self.calculate_qdel_env(c, v)
            if c.use_ecn:
                ret += self.ecn(c, v)
            if c.use_hop_delay:
                ret += self.hop_delay(c, v)
            return ret

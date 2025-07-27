import pandas as pd
import z3
from qe.environment.base import BaseEnvironment
from qe.util import get_model_value_list, get_name_for_list, get_names, z3_min


class Ideal(BaseEnvironment):
    class Variables(BaseEnvironment.Variables):
        def __init__(self, name: str, c):
            super().__init__(name, c)

    class Constraints(BaseEnvironment.Constraints):
        def ecn(self, c, v):
            assert isinstance(c, Ideal.Config)
            assert isinstance(v, Ideal.Variables)

            if not c.use_ecn:
                return []

            cl = []
            for t in range(c.T):
                cl.append(v.ecn[t] == (v.A[t] - v.L[t] - v.I[t] > c.ecn_k))

            return cl

        def non_det_initial(self, c, v):
            assert isinstance(c, Ideal.Config)
            assert isinstance(v, Ideal.Variables)

            cl = []
            # cl.append(v.C > 0)
            # cl.append(v.B > 0)
            # cl.append(v.A[0] >= 0)
            # cl.append(v.I[0] >= 0)
            cl.append(v.L[0] >= 0)
            cl.append(v.L[0] >= v.L0)
            cl.append(v.L0 >= 0)
            if c.use_loss_detect:
                if(c.N > 1):
                    for n in range(c.N):
                        cl.append(v.Ldf[n][0] >= 0)
                else:
                    cl.append(v.Ld[0] >= 0)
            cl.append(v.I[0] <= v.A[0] - v.L[0])
            if (c.N > 1):
                for n in range(c.N):
                    cl.append(v.If[n][0] <= v.Af[n][0] - v.Lf[n][0])
            # cl.append(v.a <= v.C / 1000)
            # cl.append(v.a <= v.C*0.99)
            cl.append(v.C >= 5 * v.a)  # ~BDP is at least 5 pkts.
            cl.append(v.B >= 5 * v.a)
            cl.append(v.a == 1)
            # cl.append(v.a < v.C)
            # cl.append(v.a > 0)  # Must.
            # cl.append(v.a == 1)
            # cl.append(v.B >= 10 * v.C * c.R)
            # cl.append(v.BbyC * v.C == v.B)
            return cl

        def det_loss(self, c, v):
            assert isinstance(c, Ideal.Config)
            assert isinstance(v, Ideal.Variables)

            cl = []
            if c.infinite_buffer:
                for t in range(c.T):
                    cl.append(v.L[t] == 0)

                if c.N > 1:
                    for n in range(c.N):
                        for t in range(c.T):
                            cl.append(v.Lf[n][t] == 0)

                return cl

            for t in range(1, c.T):
                # cl.append(
                #     v.L[t]
                #     == z3.If(
                #         v.A[t] - v.L[t - 1] - v.I[t] > v.B,
                #         v.A[t] - v.I[t] - v.B,
                #         v.L[t - 1],
                #     )
                # )
                cl.append(
                    z3.Implies(
                        v.A[t] - v.L[t - 1] - v.I[t] > v.B,
                        v.L[t] == v.A[t] - v.I[t] - v.B,
                    )
                )
                cl.append(
                    z3.Implies(
                        z3.Not(v.A[t] - v.L[t - 1] - v.I[t] > v.B),
                        v.L[t] == v.L[t - 1],
                    )
                )
            return cl

        def oracle_loss_detect(self, c, v):
            assert isinstance(c, Ideal.Config)
            assert isinstance(v, Ideal.Variables)

            cl = []
            for t in range(c.R, c.T):
                cl.append(v.Ld[t] == v.L[t - c.R])
            return cl

        def loss_detect(self, c, v):
            # NOTE: In the CCAC code, the Ld variable also has a t-c.R and so
            # they use Ld[t] to compute A[t]. In the convention below,
            # Ld[t-c.R] would be visible when computing A[t].

            assert isinstance(c, Ideal.Config)
            assert isinstance(v, Ideal.Variables)

            cl = []
            for t in range(1, c.T):
                cl.append(v.Ld[t] >= v.Ld[t - 1])

            for t in range(c.T):
                for dt in range(t + 1):
                    detectable = v.S[t] >= v.A[t - dt] - v.L[t - dt] + v.a
                    cl.append(z3.Implies(detectable, v.Ld[t] >= v.L[t - dt]))
                    cl.append(z3.Implies(z3.Not(detectable), v.Ld[t] <= v.L[t - dt]))
                if t - 1 >= 0:
                    cl.append(v.Ld[t - 1] <= v.Ld[t])
                cl.append(v.Ld[t] <= v.L[t])
            return cl

        def multiflow_loss_detect(self, c, v):
            assert isinstance(c, Ideal.Config)
            assert isinstance(v, Ideal.Variables)

            cl = []
            for n in range(c.N):
                for t in range(1, c.T):
                    cl.append(v.Ldf[n][t] >= v.Ldf[n][t - 1])

                for t in range(c.T):
                    for dt in range(t + 1):
                        detectable = v.Sf[n][t] >= v.Af[n][t - dt] - v.Lf[n][t - dt] + v.a
                        cl.append(z3.Implies(detectable, v.Ldf[n][t] >= v.Lf[n][t - dt]))
                        cl.append(z3.Implies(z3.Not(detectable), v.Ldf[n][t] <= v.Lf[n][t - dt]))
                    if t - 1 >= 0:
                        cl.append(v.Ldf[n][t - 1] <= v.Ldf[n][t])
                    cl.append(v.Ldf[n][t] <= v.Lf[n][t])
            return cl

        def multiflow_bq_positive(self, c, v):
            if c.N == 1:
                return []

            cl = []
            for n in range(c.N):
                for t in range(c.T):
                    cl.append(v.Af[n][t] - v.Lf[n][t] - v.If[n][t] >= 0)

            return cl

        def det_service_ideal(self, c, v):
            assert isinstance(c, Ideal.Config)
            assert isinstance(v, Ideal.Variables)

            cl = []
            for t in range(1, c.T):
                cl.append(v.I[t] == z3_min(v.I[t - 1] + v.C * 1, v.A[t] - v.L[t]))
            return cl

        def non_det_cca(self, c, v):
            assert isinstance(c, Ideal.Config)
            assert isinstance(v, Ideal.Variables)

            cl = []
            for t in range(1, c.T):
                cl.append(v.A[t] >= v.A[t - 1] + v.a)

            if c.N > 1:
                for n in range(c.N):
                    for t in range(1, c.T):
                        cl.append(v.Af[n][t] >= v.Af[n][t - 1] + v.a)

            return cl

        def non_dec_arrival(self, c, v):
            assert isinstance(c, Ideal.Config)
            assert isinstance(v, Ideal.Variables)

            cl = []
            for t in range(1, c.T):
                cl.append(v.A[t] >= v.A[t - 1])

            if c.N > 1:
                for n in range(c.N):
                    for t in range(1, c.T):
                        cl.append(v.Af[n][t] >= v.Af[n][t - 1])

            return cl

        def all_constraints(self, c, v):
            del v.I
            v.I = v.S

            if c.N > 1:
                del v.If
                v.If = v.Sf

            ret = (
                self.non_det_initial(c, v)
                + self.det_loss(c, v)
                + self.det_service_ideal(c, v)
                + self.non_dec_arrival(c, v)
                + self.multiflow_initial(c, v)
                + self.multiflow_sum(c, v)
                + self.multiflow_monotonic(c, v)
                + self.multiflow_fifo(c, v)
                + self.multiflow_bq_positive(c, v)
                # + self.oracle_loss_detect(c, v)
                # + self.non_det_cca(c, v)
            )
            if c.use_loss_detect:
                # ret += self.oracle_loss_detect(c, v)
                if c.N > 1:
                    ret += self.multiflow_loss_detect(c, v)
                else:
                    ret += self.loss_detect(c, v)
            if c.use_ecn:
                ret += self.ecn(c, v)
            return ret

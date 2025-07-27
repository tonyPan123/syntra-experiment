from dataclasses import dataclass
from qe.environment.base import BaseEnvironment
from qe.util import try_except_wrapper, z3_min_const_list


class CBRDelayNC(BaseEnvironment):
    @dataclass
    class Config(BaseEnvironment.Config):
        D: int = 1

    class Variables(BaseEnvironment.Variables):
        def __init__(self, name: str, c):
            super().__init__(name, c)
            self.c = c

        @property
        def N(self):
            return [self.A[t] - self.L[t] for t in range(self.c.T)]

        @property
        def bq(self):
            return [self.A[t] - self.L[t] - self.I[t] for t in range(self.c.T)]

    class Constraints:
        def get_i_constraints(self, c, v):
            assert isinstance(c, CBRDelayNC.Config)
            assert isinstance(v, CBRDelayNC.Variables)
            # This might enforce that N(0) = I(0), which we may not want?
            # Update: Actually this is not necessary, so ignoring.
            cl = []
            for t in range(1, c.T):
                cl.extend(
                    z3_min_const_list(
                        [v.N[t - s] + v.C * s for s in range(t + 1)], v.I[t]
                    )
                )
            cl.append(v.I[0] <= v.N[0])
            return cl

        def get_n_constraints(
            self, c: BaseEnvironment.Config, v: BaseEnvironment.Variables
        ):
            assert isinstance(c, CBRDelayNC.Config)
            assert isinstance(v, CBRDelayNC.Variables)
            cl = []
            for t in range(1, c.T):
                cl.extend(
                    z3_min_const_list(
                        [v.I[t - s] + v.B + v.A[t] - v.A[t - s] for s in range(t + 1)]
                        + [v.N[t - s] + v.A[t] - v.A[t - s] for s in range(1, t + 1)],
                        v.N[t],
                    )
                )
                """
                Fix these constraints (TODO).

                If we include s = 0 in N[t-s] constraint, then N[t] can be
                small if that satisfies I[t] constraints.

                If we don't include this constraint, then we get unsat.

                Update: 2024/01/08 Setting B > 0 seems to be working fine.
                """
            return cl

        def get_s_constraints(
            self, c: BaseEnvironment.Config, v: BaseEnvironment.Variables
        ):
            assert isinstance(c, CBRDelayNC.Config)
            assert isinstance(v, CBRDelayNC.Variables)
            cl = []
            for t in range(c.T):
                cl.append(v.S[t] <= v.I[t])
                if t - c.D >= 0:
                    cl.append(v.S[t] >= v.I[t - c.D])
            return cl

        def get_a_constraints(
            self, c: BaseEnvironment.Config, v: BaseEnvironment.Variables
        ):
            # In the QE output, some of the clauses check if A[t] >= A[t-1],
            # this should not be needed.
            assert isinstance(c, CBRDelayNC.Config)
            assert isinstance(v, CBRDelayNC.Variables)
            cl = []
            for t in range(1, c.T):
                cl.append(v.A[t] >= v.A[t - 1])
            return cl

        @try_except_wrapper
        def all_constraints(self, c, v):
            assert isinstance(c, CBRDelayNC.Config)
            assert isinstance(v, CBRDelayNC.Variables)
            cl = [
                v.C > 0,
                v.B > 0,
                v.C >= 5 * v.a,
                v.a == 1,
            ]
            cl.extend(self.get_a_constraints(c, v))
            cl.extend(self.get_i_constraints(c, v))
            cl.extend(self.get_n_constraints(c, v))
            cl.extend(self.get_s_constraints(c, v))
            return cl

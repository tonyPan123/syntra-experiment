import z3
from qe.environment.base import BaseEnvironment
from qe.environment.cbr_delay import CBRDelay


def get_synthesis_invariant(
        c: BaseEnvironment.Config, v: BaseEnvironment.Variables, o: BaseEnvironment.Objectives):
    assert isinstance(c, CBRDelay.Config)
    cl = []
    assert c.T >= 2
    util_ = v.S[c.T-1] - v.S[0] >= o.f_util * (c.T-1-c.D) * v.C
    rate_increases = v.A[c.T-1] - v.A[c.T-2] > v.A[1] - v.A[0]
    # cl.append(z3.Or(util_, rate_increases))
    cl.append(util_)
    return cl

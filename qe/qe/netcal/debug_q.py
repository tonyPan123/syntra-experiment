import z3
from get_unsat_core import get_unsat_core
from qe.environment.cbr_delay_nc import CBRDelayNC
from fractions import Fraction

from qe.util import extract_vars

T = 5
c = CBRDelayNC.Config(T=T)
v = CBRDelayNC.Variables("", c)

cl = CBRDelayNC.Constraints().all_constraints(c, v)
solver = z3.Solver()
solver.from_file("outputs/qe_queries_cbrdelay_obs_redo/input_T=5,eliminate=[I_0,I_1,I_2,I_3,I_4,C,B,lhs=Q_4].smt2")
goal = solver.assertions()[0]

tactics = [
    'qe2',
    # 'qe',
    # 'solve-eqs',
    'propagate-values2',
    'propagate-ineqs',

    # 'demodulator',
    # 'dom-simplify',

    'purify-arith',
    'simplify',
    'unit-subsume-simplify',

    'solver-subsumption',
]

goals = [goal]
for tactic in tactics:
    ret = z3.Tactic(tactic)(goals[-1]).as_expr()
    assert isinstance(ret, z3.BoolRef)
    print(set(extract_vars(ret)))
    import ipdb; ipdb.set_trace()
    goals.append(ret)

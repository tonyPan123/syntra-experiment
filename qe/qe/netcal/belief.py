import z3
from get_unsat_core import get_unsat_core
from qe.environment.cbr_delay_nc import CBRDelayNC
from qe.util import flatten, qe_simplify

T = 3

c = CBRDelayNC.Config(T=T)
v = CBRDelayNC.Variables("", c)

cl = CBRDelayNC.Constraints().all_constraints(c, v)
feasible = z3.And(cl)

g = z3.Goal()
remove = flatten([v.I, v.L[-2:], v.C, v.B])
print("Removing: ", remove)
g.add(z3.Exists(remove, feasible))
ret = qe_simplify(g)

print(ret)

s = z3.Solver()
s.add(ret)
import ipdb; ipdb.set_trace()

import z3
from get_unsat_core import get_unsat_core
from qe.environment.cbr_delay_nc import CBRDelayNC


T = 6

c = CBRDelayNC.Config(T=T)
v = CBRDelayNC.Variables("", c)

cl = CBRDelayNC.Constraints().all_constraints(c, v)
feasible = z3.And(cl)

s = z3.Solver()
s.add(feasible)

for t in range(1, c.T):
    s.add(v.A[t] == v.A[t - 1] + v.C * c.D + v.B)

s.add(v.C == 100)
s.add(v.B == 20)

sat = s.check()
print(sat)

if sat == z3.sat:
    m = s.model()
    print(CBRDelayNC.get_cex_df(c, v, m))
else:
    print(get_unsat_core(s))

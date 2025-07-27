import os
import z3
from get_unsat_core import get_unsat_core
from qe.environment.cbr_delay import CBRDelay
from fractions import Fraction

MODEL_DIR = "/home/ubuntu/Projects/deductive-logic/qe/outputs/qe/"
EXP_DIR = os.path.join(MODEL_DIR, "cbrdelay_obs_newl")

T = 5
c = CBRDelay.Config(T=T)
v = CBRDelay.Variables("", c)

cl = CBRDelay.Constraints().all_constraints(c, v)
solver = z3.Solver()
solver.add(cl)
# solver.from_file(os.path.join(EXP_DIR, "T=5,eliminate=[I_0,I_1,I_2,I_3,I_4,L_3,L_4,C,B,lhs=L_2],pl=2.smt2"))
# solver.from_file(os.path.join(EXP_DIR, "T=5,eliminate=[I_0,I_1,I_2,I_3,I_4,lhs=L_4],pl=4.smt2"))

# a = [t * 10 for t in range(T-1)]
# l = [0 for t in range(T-1)]
# s = [t * 10 for t in range(T-1)]
solver.add(v.A[4]-v.L[4] > v.S[4])
solver.add(v.C == 73)

a = [872.8125, 924.0625, 925.0625, 947.8125, 1001.125]
l = [0, 0, 0, 0]
s = [849.21875, 872.8125, 922.8125, 925.0625, 947.8125]

# solver.add(z3.Real("loss_rate_tol") == 2)
# solver.add(v.A[4] == 42)
# solver.add(v.L[4] == 1.9)
# solver.add(v.B > 0)

for t in range(len(a)):
    solver.add(v.A[t] == a[t])

for t in range(len(s)):
    solver.add(v.S[t] == s[t])

for t in range(len(l)):
    solver.add(v.L[t] == l[t])

ret = solver.check()
print(ret)

if ret == z3.sat:
    m = solver.model()
    df = CBRDelay.get_cex_df(c, v, m)
    print(df)
    print("C = ", m.eval(v.C))
    print("B = ", m.eval(v.B))

else:
    uc = get_unsat_core(solver)
    print(uc)

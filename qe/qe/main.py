import z3
from qe.environment import Ideal, CBRDelay
from qe.util import flatten, get_raw_value


# l = CBRDelay()
# c = l.Config()
# v = l.Variables('', c)
# constrs = l.Constraints()
# cl = constrs.all_constraints(c, v)

T = 3
c = CBRDelay.Config(T=T)

v1 = CBRDelay.Variables('x', c)
cl1 = CBRDelay.Constraints().all_constraints(c, v1)

v2 = CBRDelay.Variables('y', c)
cl2 = CBRDelay.Constraints().all_constraints(c, v2)

v3 = CBRDelay.Variables('z', c)
cl3 = CBRDelay.Constraints().all_constraints(c, v3)

cl = cl1 + cl2

for t in range(c.T):
    cl.append(v1.A[t] == v2.A[t])
    cl.append(v2.A[t] == v3.A[t])
    cl.append(v1.S[t] == v2.S[t])
    cl.append(v2.S[t] == v3.S[t])
    # cl.append(v1.L[t] == v2.L[t])
    # cl.append(v2.L[t] == v3.L[t])
    cl.append(v1.Ld[t] == v2.Ld[t])
    cl.append(v2.Ld[t] == v3.Ld[t])

cl.append(v1.a == v2.a)
cl.append(v2.a == v3.a)
cl.append(v3.C == (v1.C + v2.C)/2)
cl.append(v3.B == (v1.B + v2.B)/2)
cl.append(v3.C == 100)
cl.append(v1.C == 50)
cl.append(v1.B == 150)
cl.append(v3.B == 250)

# cl.append(v3.C == v1.C)
# cl.append(v3.B == v1.B)

# Is there trace1 and trace2 such that no mid point network that can produce
# same observations as t1 and t2.
cl.append(z3.Not(z3.Exists(flatten([v3.I, v3.L]), z3.And(cl3))))

s = z3.Solver()
s.add(cl)
ret = s.check()
print(ret)
print("")
if (str(ret) == "sat"):
    m = s.model()
    print(CBRDelay.get_str(c, v1, m))
    print("")
    print(CBRDelay.get_str(c, v2, m))
    print("")
    print(CBRDelay.get_str(c, v3, m))

    # Compute belief set
    vb = CBRDelay.Variables('', c)
    clb = CBRDelay.Constraints().all_constraints(c, vb)
    for t in range(c.T):
        clb.append(vb.A[t] == get_raw_value(m.eval(v1.A[t])))
        clb.append(vb.S[t] == get_raw_value(m.eval(v1.S[t])))
        # clb.append(vb.L[t] == get_raw_value(m.eval(v1.L[t])))
        clb.append(vb.Ld[t] == get_raw_value(m.eval(v1.Ld[t])))

    g = z3.Goal()
    # We need separate loss detection to be able to compute upper bounds.
    # g.add(z3.Exists(flatten([vb.I, vb.Ld, vb.L]), z3.And(clb)))
    g.add(z3.Exists(flatten([vb.I, vb.L]), z3.And(clb)))
    tl = [z3.Tactic('qe2'),
          z3.Tactic('solve-eqs'),
          z3.Tactic('propagate-values'),
          z3.Tactic('propagate-ineqs'),
          z3.Tactic('purify-arith'),
          z3.Tactic('simplify'),
          z3.Tactic('unit-subsume-simplify'),
          z3.Tactic('solver-subsumption'),
          # z3.Tactic('aig'),
          # z3.Tactic('sat-preprocess'),
          # z3.Tactic('fm'),
          # z3.Tactic('ctx-solver-simplify'),
          # z3.Tactic('ctx-simplify')
          # z3.With(z3.Tactic('add-bounds'), ),
          ]
    tactic = tl[0]
    for tac in tl[1:]:
        tactic = z3.Then(tactic, tac)
    print(tactic(g))

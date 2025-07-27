import z3
from qe.environment.cbr_delay import CBRDelay
from qe.transition_system import get_synthesis_invariant
from qe.util import extract_vars, flatten, z3_max


T = 4
c = CBRDelay.Config(T=T)

# Compute belief set
vb = CBRDelay.Variables('', c)
clb = CBRDelay.Constraints().all_constraints(c, vb)
for t in range(1, c.T):
    clb.append(vb.A[t] >= vb.A[t-1] + vb.a)

for t in range(2, c.T):
    clb.append(vb.A[t] == z3_max(vb.S[t]-vb.S[t-2], 0) + vb.a)

o = CBRDelay.Objectives()
feasible = z3.And(clb)
desired = z3.And(get_synthesis_invariant(c, vb, o))

g = z3.Goal()
g.add(z3.ForAll([vb.C, vb.B], z3.Implies(feasible, desired)))
tl = [
        # z3.Tactic('fm'),
        z3.Tactic('qe2'),
        z3.Tactic('solve-eqs'),
        z3.Tactic('propagate-values2'),
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
        # z3.Tactic('add-bounds'),
        ]
tactic = tl[0]
for tac in tl[1:]:
    tactic = z3.Then(tactic, tac)
ret = tactic(g)
print(ret)
print("\n\n")
import z3
from qe.environment.cbr_delay import CBRDelay
from qe.transition_system import get_synthesis_invariant
from qe.util import extract_vars, flatten


def qe_simplify(g: z3.Goal):
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
    return ret


T = 5
c = CBRDelay.Config(T=T)
c.use_loss_detect = True

# Compute belief set
vb = CBRDelay.Variables('', c)
clb = CBRDelay.Constraints().all_constraints(c, vb)
# for t in range(1, c.T):
#     clb.append(vb.A[t] >= vb.A[t-1] + vb.a)

feasible = z3.And(clb)

tc = c.T-1
goal = z3.Exists(
    flatten([vb.C, vb.B, vb.I, vb.L, vb.S[tc], vb.Ld[tc]]), feasible
)

g = z3.Goal()
g.add(goal)
ret = qe_simplify(g)
print(ret.as_expr())
print("\n\n")
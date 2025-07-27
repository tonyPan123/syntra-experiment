import z3
from qe.environment.cbr_delay import CBRDelay
from qe.transition_system import get_synthesis_invariant
from qe.util import extract_vars, flatten


def qe_simplify(g: z3.Goal):
    tactic = z3.Then(
        # 'fm',

        'qe2',
        # 'qe',
        'solve-eqs',
        'propagate-values2',
        'propagate-ineqs',

        'demodulator',
        'dom-simplify',

        'purify-arith',
        'simplify',
        'unit-subsume-simplify',

        'solver-subsumption',

        # 'aig',
        # 'sat-preprocess',
        # 'fm',
        # 'ctx-solver-simplify',
        # 'ctx-simplify,
        # 'add-bounds',
    )
    ret = tactic(g)
    return ret


T = 8
c = CBRDelay.Config(T=T)

# Compute belief set
vb = CBRDelay.Variables('', c)
clb = CBRDelay.Constraints().all_constraints(c, vb)
# for t in range(1, c.T):
#     clb.append(vb.A[t] >= vb.A[t-1] + vb.a)

o = CBRDelay.Objectives()

feasible = z3.And(clb)
desired = z3.And(get_synthesis_invariant(c, vb, o))

tc = 1

# assert tc+2 == c.T-1
# goal = z3.Exists(
#     flatten([vb.C, vb.B, vb.I[:tc], vb.L[:tc]]),
#     z3.ForAll(
#         flatten([vb.L[tc], vb.Ld[tc], vb.S[tc], vb.I[tc]]),
#         z3.Exists(vb.A[tc+1],
#                   z3.ForAll(
#                       flatten([vb.L[tc+1], vb.Ld[tc+1],
#                               vb.S[tc+1], vb.I[tc+1]]),
#                       z3.Exists(
#                           vb.A[tc+2],
#                           z3.ForAll(
#                               flatten([vb.L[tc+2], vb.Ld[tc+2],
#                                       vb.S[tc+2], vb.I[tc+2]]),
#                               feasible
#                               # z3.Implies(feasible, desired)
#                           )
#                       )
#         ))
#     )
# )

goal = z3.Exists(
    flatten([vb.C, vb.B, vb.I[:tc], vb.L[:tc]]), feasible
)

goal = feasible

goal = z3.Exists(
    flatten([vb.C, vb.B, vb.I, vb.L]), feasible
)

goal = z3.Exists(
    # flatten([vb.C, vb.B, vb.I, vb.L]), z3.Implies(feasible, desired)
    # flatten([vb.I, vb.L]), z3.Implies(feasible, desired)
    flatten([vb.C, vb.B]), z3.Implies(feasible, desired)
)

goal = z3.ForAll(
    flatten([vb.C, vb.B]), z3.Implies(feasible, desired))

goal = z3.ForAll(
    flatten([vb.C, vb.B, vb.I, vb.L]), z3.Implies(feasible, desired)
)

# What action can i take in penultimate step
tc = c.T-2
goal = z3.ForAll(
    flatten([vb.C, vb.B, vb.I[:tc+1], vb.L[:tc+1], vb.S[tc]]),
    z3.Exists(
        vb.A[tc+1],
        z3.ForAll(
            flatten([vb.I[tc+1], vb.L[tc+1], vb.S[tc+1]]),
            z3.And(vb.A[tc+1] >= vb.A[tc] + vb.a, z3.Implies(feasible, desired))  # My future action should be feasible.
            )))

# TODO: Try encoding a rate instead A and treat A as hidden state.
# Maybe that formula is easier from QE perspectuve.

# What action can i take in the last step
tc = c.T-1
goal = z3.ForAll(
    flatten([vb.C, vb.B, vb.I[:tc+1], vb.L[:tc+1], vb.S[tc], vb.Ld[tc]]),
    z3.Implies(feasible, desired)
)

# # Bad actions at penultimate step
# tc = c.T-2
# goal = z3.Exists(
#     flatten([vb.C, vb.B, vb.I[:tc+1], vb.L[:tc+1], vb.S[tc]]),
#     z3.ForAll(
#         vb.A[tc+1],
#         z3.Exists(
#             flatten([vb.I[tc+1], vb.L[tc+1], vb.S[tc+1]]),
#             z3.Implies(vb.A[tc+1] >= vb.A[tc] + vb.a, z3.And(feasible, z3.Not(desired)))
#             )))

# # Bad actions at last step
# tc = c.T-1
# goal = z3.Exists(
#     flatten([vb.C, vb.B, vb.I, vb.L, vb.S[tc], vb.Ld[tc]]),
#     z3.And(feasible, z3.Not(desired))
# )
# # goal = z3.Not(goal)

# s = z3.Solver()
# # s.add(z3.And(feasible, z3.Not(desired)))
# # s.add(z3.Implies(feasible, desired))
# s.add(z3.And(feasible, desired))
# import ipdb; ipdb.set_trace()
# ret = s.check()

# if(ret == z3.sat):
#     m = s.model()
#     print(CBRDelay.get_str(c, vb, m))
#     print("")

# goal = z3.Implies(feasible, desired)

goal2 = z3.Exists(
    flatten([vb.C, vb.B, vb.I, vb.L, vb.S[tc], vb.Ld[tc]]), feasible
)

g = z3.Goal()
# g.add(z3.And(goal, goal2))
g.add(goal)
# g.add(z3.Exists(flatten([vb.I, vb.L]), z3.And(clb)))
ret = qe_simplify(g)
print(ret.as_expr())
print("\n\n")

g2 = z3.Goal()
g2.add(goal2)
ret2 = qe_simplify(g2)
print(ret2.as_expr())
print("\n\n")

g3 = z3.Goal()
g3.add(z3.And(ret.as_expr(), ret2.as_expr()))
# g3.add(z3.Implies(ret.as_expr(), ret2.as_expr()))
ret3 = qe_simplify(g3)
print(ret3.as_expr())
print("\n\n")

# import ipdb; ipdb.set_trace()

# feasible_obs = []
# for t in range(c.T):
#     if(t <= c.T-2):
#         feasible_obs.append(vb.A[t] - vb.Ld[t] >= 0)
#         feasible_obs.append(vb.A[t] - vb.Ld[t] - vb.S[t] >= 0)
#     if (t >= 1):
#         feasible_obs.append(vb.A[t] >= vb.A[t-1])
#         if(t <= c.T-2):
#             feasible_obs.append(vb.S[t] >= vb.S[t-1])
#             feasible_obs.append(vb.Ld[t] >= vb.Ld[t-1])
# feasible_obs.append(vb.Ld[0] >= 0)
# feasible_obs.append(vb.A[0] >= 0)
# feasible_obs.append(vb.S[0] >= 0)

# g2 = z3.Goal()
# g2.add(z3.And(feasible_obs), ret.as_expr())
# # g2.add(z3.Implies(ret.as_expr(), z3.And(feasible_obs)))
# ret = qe_simplify(g2)
# print(ret)
# print('\n\n')

# Remove the assumptions
assert ret3.as_expr().decl().kind() == z3.Z3_OP_AND
assert ret.as_expr().decl().kind() == z3.Z3_OP_AND

s2 = set(ret2.as_expr().children())
s3 = set(ret3.as_expr().children())
print(z3.And(s3-s2))
print("\n\n")
print("-"*80)

constrs = ret3.as_expr().children()
filtered = []
for constr in constrs:
    if(vb.A[-1] in extract_vars(constr)):
        filtered.append(constr)
print(z3.And(filtered))

s = z3.Solver()
# # s.add(z3.Implies(ret3.as_expr(), z3.Implies(feasible, desired)))
# s.add(feasible)
# s.add(desired)
# s.add(vb.C==100)
# # s.add(ret3.as_expr())
# # s.add(z3.Not(ret.as_expr()))
# s.add(ret.as_expr())
s.add(feasible)
s.add(z3.Not(ret.as_expr() == z3.Implies(feasible, desired)))
sat = s.check()
print(sat)
if(sat == z3.sat):
    m = s.model()
    print(CBRDelay.get_str(c, vb, m))
    print("")

"""
And(A_2 >= 1 + A_1,
    Or(Not(-1*A_1 + 1/2*A_2 + -1/2*Ld_2 + Ld_1 <= 0),
       S_0 <= 1,
       0 <= -1/2*A_2 + S_1 + 1/2*Ld_2,
       -5 <= -1/2*A_2 + 1/2*Ld_2,
       0 <= -1*S_1 + S_0),
    Or(S_0 <= 1,
       Not(2*A_1 + -1*A_2 + Ld_2 + -2*Ld_1 <= 0),
       0 <= -1*S_1 + S_0,
       0 <= -1*A_1 + S_1 + Ld_1,
       -5 <= -1*A_1 + Ld_1),
    Or(Not(-1*A_0 + Ld_1 <= 0),
       1 <= -1*A_0 + S_0 + Ld_1,
       -1 <= 2*A_1 + -1*A_2 + -1*S_0 + Ld_2 + -2*Ld_1,
       -5 <= A_1 + -1*A_2 + Ld_2 + -1*Ld_1),
    Or(S_0 <= 1,
       1 <= -1*A_0 + S_0 + Ld_1,
       0 <= -1/2*A_2 + S_1 + 1/2*Ld_2,
       -5 <= -1/2*A_2 + 1/2*Ld_2),
    Or(-4 <= A_1 + -1*A_2 + -1*A_0 + S_1 + Ld_2,
       1 <= -1*A_0 + S_1 + Ld_1,
       1 <= 2*A_1 + -1*A_2 + -2*A_0 + 2*S_1 + -1*S_0 + Ld_2,
       Not(1 <= S_1)),
    Or(-5 <= -1*A_2 + S_1 + Ld_2,
       -1 <= -1*A_2 + 2*S_1 + -1*S_0 + Ld_2,
       Not(A_2 + -2*S_1 + -1*Ld_2 <= 0),
       0 <= -1*A_0 + S_1 + Ld_1),
    Or(-5 <= -1*A_2 + S_1 + Ld_2,
       -1 <= -1*A_2 + 2*S_1 + -1*S_0 + Ld_2,
       Not(A_2 + -2*S_1 + -1*Ld_2 <= 0),
       1 <= -1*A_0 + S_0 + Ld_1),
    Or(1 <= S_1,
       Not(-1*A_0 + Ld_1 <= 0),
       -1 <= 2*A_1 + -1*A_2 + -2*A_0 + -1*S_0 + Ld_2,
       -5 <= A_1 + -1*A_2 + -1*A_0 + Ld_2),
    Or(-5 <= -1*A_2 + S_1 + Ld_2,
       -1 <= -1*A_2 + 2*S_1 + -1*S_0 + Ld_2,
       Not(A_2 + -2*S_1 + -1*Ld_2 <= 0),
       Not(A_0 + -1*S_1 + -1*Ld_0 <= -1),
       0 <= -1*A_1 + S_1 + Ld_1),
    Or(-5 <= -1*A_2 + S_1 + Ld_2,
       -1 <= -1*A_2 + 2*S_1 + -1*S_0 + Ld_2,
       Not(A_2 + -2*S_1 + -1*Ld_2 <= 0),
       0 <= -1*S_1 + S_0,
       0 <= -1*A_1 + S_1 + Ld_1),
    A_2 + -1*Ld_2 + -1*S_2 >= 0)
"""
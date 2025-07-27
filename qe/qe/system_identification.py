import z3

from qe.util import flatten

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


class Variables:
    def __init__(self, name: str, T: int):
        self.A = [z3.Real(f'{name}A_{t}') for t in range(T)]
        self.S = [z3.Real(f'{name}S_{t}') for t in range(T)]
        self.Ld = [z3.Real(f'{name}Ld_{t}') for t in range(T)]
        self.cwnd = [z3.Real(f'{name}cwnd_{t}') for t in range(T)]
        self.a = z3.Real(f'{name}a')  # pkt size
        self.C = z3.Real(f'{name}C')  # pkt size

H = 3
T = 7
v = Variables('', T)

cca_constrs = []
# # AIMD
# for t in range(2, T):
#     cca_constrs.append(
#         v.cwnd[t] == z3.If(
#             v.Ld[t-1] > v.Ld[t-2],
#             v.cwnd[t-1]/2,
#             v.cwnd[t-1] + v.a))
# ROCC
for t in range(H, T):
    cca_constrs.append(
        v.cwnd[t] == v.S[t-1] - v.S[t-H] + 1
    )

env_constrs = [v.C > 0]
# forall_constrs = [v.C > 0, v.a > 0, v.a < v.C/5, v.a==1]
# forall_constrs = [v.C > 0]
forall_constrs = []
for t in range(T):
    # env_constrs.append(v.A[t] >= 0)
    env_constrs.append(v.S[t] >= 0)
    # env_constrs.append(v.Ld[t] >= 0)
    # env_constrs.append(v.cwnd[t] >= 0)
for t in range(1, T):
    env_constrs.append(v.S[t] >= v.S[t-1])
for t in range(H, T):
    forall_constrs.append(v.cwnd[t] >= 1)

forall_constr = z3.And(forall_constrs)
env = z3.And(env_constrs)
cca = z3.And(cca_constrs)
desired_util = z3.Or(v.S[T-1] - v.S[H] >= 0.1 * v.C *(T-H-1),
                     v.cwnd[T-1] > v.cwnd[H])
desired_queue = z3.Or(
    z3.And([v.cwnd[t] <= 10 * v.C for t in range(H, T)]),
    v.cwnd[T-1] < v.cwnd[H])
desired = z3.And(desired_util, desired_queue)

# f = z3.ForAll(flatten([v.C]), z3.And(env, cca, z3.Implies(z3.And(forall_constr), desired)))
# f = z3.ForAll(flatten([v.cwnd]), z3.And(env, z3.Implies(z3.And(forall_constr, cca), desired)))
f = z3.ForAll(flatten([v.cwnd]), z3.And(env, cca, z3.Implies(z3.And(forall_constr), desired)))
f = z3.Exists(flatten([v.cwnd]), z3.And(env, cca, z3.Implies(z3.And(forall_constr), desired)))
# f = z3.And(env, cca, z3.Implies(z3.And(forall_constr), desired))
g = z3.Goal()
g.add(f)
ret = qe_simplify(f)
print(ret)
print("")
print("")


# AIMD
H = 2
cca_constrs = []
for t in range(H, T):
    cca_constrs.append(
        v.cwnd[t] == z3.If(
            v.Ld[t-1] > v.Ld[t-2],
            v.cwnd[t-1]/2,
            v.cwnd[t-1] + 1))

cca = z3.And(cca_constrs)
desired_util = z3.Or(v.cwnd[T-1] > v.cwnd[H], v.S[T-1] - v.S[H] >= 0.1 * v.C *(T-H-1))
desired_queue = z3.Or(v.cwnd[T-1] < v.cwnd[H], z3.And([v.cwnd[t] <= 10 * v.C for t in range(H, T)]))
desired = z3.And(desired_util, desired_queue)
f = z3.Exists(flatten([v.cwnd]), z3.And(cca, z3.And(forall_constr), desired))
g = z3.Goal()
g.add(f)
ret = qe_simplify(f)
print(ret)


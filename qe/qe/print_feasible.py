import z3
from qe.environment.cbr_delay import CBRDelay
from qe.util import try_except_wrapper


T = 5
c = CBRDelay.Config(T=T, use_loss_detect=True, use_qdel=True)
vb = CBRDelay.Variables('', c)
clb = CBRDelay.Constraints().all_constraints(c, vb)
clb += [vb.a == 1]
feasible = z3.And(clb)

s = z3.Solver()
for constr in clb:
    s.add(constr)
# s.add(feasible)
with open(f'feasible-{T}.smt2', 'w') as f:
    f.write(s.to_smt2())
# print(feasible.sexpr())

@try_except_wrapper
def test():
    fhl = []
    # for t in range(c.T-1):
    #     fhl.append(vb.A[t] == 10 * (t+1))
    #     fhl.append(vb.S[t] == 10 * (t))
    #     fhl.append(vb.Ld[t] == 0)
    #     fhl.append(vb.qdel[t][1] == True)

    fhl.append(vb.A[0] == 0)
    fhl.append(vb.S[0] == 0)
    fhl.append(vb.Ld[0] == 0)
    fhl.append(vb.qdel[0][0] == True)

    fhl.append(vb.A[1] == 10)
    fhl.append(vb.S[1] == 8)
    fhl.append(vb.Ld[1] == 0)
    fhl.append(vb.qdel[1][0] == True)

    fhl.append(vb.A[2] == 18)
    fhl.append(vb.S[2] == 10)
    fhl.append(vb.Ld[2] == 0)
    fhl.append(vb.qdel[2][0] == True)

    fhl.append(vb.A[3] == 27)
    fhl.append(vb.S[3] == 16)
    fhl.append(vb.Ld[3] == 1)

    s = z3.Solver()
    s.add(clb)
    s.add(fhl)

    ret = s.check()
    print(ret)
    if(str(ret) == "sat"):
        m = s.model()
        print(CBRDelay.get_str(c, vb, m))


# test()
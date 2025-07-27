from qe.environment.ccac import CCAC


NM = CCAC

c = NM.Config(
    T=5,
    R=1,
    use_loss_detect=False,
    D=1,
    use_qdel=False,
    compose=True,
    infinite_buffer=True,
)

# Compute belief set
vb = NM.Variables("", c)
clb = NM.Constraints().all_constraints(c, vb)
# for t in range(1, c.T):
#     clb.append(vb.A[t] >= vb.A[t-1] + vb.a)

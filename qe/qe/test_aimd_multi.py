import z3
from get_unsat_core import get_unsat_core
from qe.environment.cbr_delay import CBRDelay
from qe.environment.cbr_delay import Ideal
from qe.util import get_model_value_list, z3_max


T = 10

name = ""
NetworkModel = Ideal
c = NetworkModel.Config(T=T, N=2, use_loss_detect=True)
v = NetworkModel.Variables(name, c)

cl = NetworkModel.Constraints().all_constraints(c, v)
feasible = z3.And(cl)

s = z3.Solver()
s.add(feasible)

v.cwndf = [[z3.Real(f"{name}cwndf_{n}_{t}") for t in range(c.T)] for n in range(c.N)]
v.lastdecf = [
    [z3.Real(f"{name}lastdecf_{n}_{t}") for t in range(c.T)] for n in range(c.N)
]

assert c.R == 1

# Implement cwnd
for n in range(c.N):
    for t in range(max(1, c.R), c.T):
        inflight = v.Af[n][t - 1] - v.Ldf[n][t - c.R] - v.Sf[n][t - c.R]
        s.add(v.Af[n][t] == v.Af[n][t - 1] + z3_max(0, v.cwndf[n][t] - inflight))

# Implement AIMD
for n in range(c.N):
    for t in range(1, c.T):
        # Should Ld have c.R?
        s.add(
            v.lastdecf[n][t]
            == z3.If(
                v.cwndf[n][t] < v.cwndf[n][t - 1],
                # v.Af[n][t - 1] - v.Ld[n][t - c.R],
                v.Af[n][t - 1],
                v.lastdecf[n][t - 1],
            )
        )
    s.add(v.lastdecf[n][0] <= v.Af[n][0])

    for t in range(max(c.R + 1, 2), c.T):
        dec = z3.And(
            v.Ldf[n][t - c.R] > v.Ldf[n][t - c.R - 1],
            # v.Sf[n][t-c.R] >= v.lastdec[n][t]
            v.Sf[n][t-c.R] + v.Ldf[n][t-c.R] >= v.lastdecf[n][t-1]  # I know the fate of all pkts sent before decreasing cwnd.
        )
        s.add(
            v.cwndf[n][t]
            == z3.If(
                dec,
                v.cwndf[n][t - 1] / 2,
                v.cwndf[n][t - 1] + v.a,
            )
        )
    for t in range(max(c.R+1, 2)):
        s.add(v.cwndf[n][t] >= 0)

st = c.R + 1
# fefficient = v.S[c.T-1] - v.S[st] >= 0.1 * v.C * (c.T - 1 - (st))
# ramp_up_cwnd = z3.Or(
#     [v.cwndf[n][c.T-1] > v.cwndf[n][st] + v.a for n in range(c.N)]
# )
# ramp_up_bq = v.bq[c.T-1] > v.bq[st]
# ramp_up_queue = v.A[c.T-1] - v.L[c.T-1] - v.S[c.T-1] > v.A[st] - v.L[st] - v.S[st]

# agg_util_inv = z3.Or(fefficient, ramp_up_cwnd, ramp_up_bq, ramp_up_queue)
# gap_decrease = z3.Implies(
#     v.cwndf[0][st] > 5 * v.cwndf[1][st],
#     z3.And(
#         v.cwndf[1][c.T - 1] >= v.cwndf[1][st] + v.a,
#     ),
# )

# desired = z3.And(agg_util_inv, gap_decrease)
# # desired = False

# WLOG choose origin for simplicity
for n in range(c.N):
    s.add(v.Af[n][0] >= 0)
    s.add(v.Lf[n][0] >= 0)
    s.add(v.Sf[n][0] >= 0)
    s.add(v.If[n][0] >= 0)
    s.add(v.Ldf[n][0] >= 0)
# # # s.add(v.S[0] == 0)
s.add(v.C == 5)
s.add(v.B == 6)
# s.add(v.C == v.B)

# TODO: Search for periodic traces.
for t in range(st):
    tail = (c.T - 1) - (st - 1) + t
    # Currently exploring period only in the eyes of CCAs.
    # Per flow view
    for n in range(c.N):
        s.add(v.cwndf[n][t] == v.cwndf[n][tail])
        s.add(
            v.Af[n][t] - v.Lf[n][t] - v.Sf[n][t]
            == v.Af[n][tail] - v.Lf[n][tail] - v.Sf[n][tail]
        )

        # s.add(v.Af[n][t] - v.If[n][t] - v.Sf[n][t] == v.Af[n][tail] - v.If[n][tail] - v.Sf[n][tail])

    # Network view
    # s.add(v.bq[t] == v.bq[tail])
    # s.add(v.A[t] - v.L[t] - v.S[t] == v.A[tail] - v.L[tail] - v.S[tail])

both_efficient = [
    v.Sf[n][c.T - 1] - v.Sf[n][st] >= 0.1 * v.C * (c.T - 1 - (st)) for n in range(c.N)
]
desired = z3.And(both_efficient)

# At least see if there are periodic bad traces.
# TODO: Include backoff on RTT > R+D.

s.add(z3.Not(desired))
# s.add(desired)

sat = s.check()
print(sat)

if sat == z3.sat:
    m = s.model()
    df = CBRDelay.get_cex_df(c, v, m)
    for n in range(c.N):
        df[f"cwndf_{n}"] = get_model_value_list(m, v.cwndf[n])
        df[f"lastdecf_{n}"] = get_model_value_list(m, v.lastdecf[n])
        df[f"bqf_{n}"] = df[f"Af_{n}"] - df[f"Lf_{n}"] - df[f"If_{n}"]
    print(df.astype(float))

    vars = {
        "C": v.C,
        "B": v.B,
        "a": v.a,
        # "fefficient": fefficient,
        # "ramp_up_cwnd": ramp_up_cwnd,
        # "ramp_up_bq": ramp_up_bq,
        # "ramp_up_queue": ramp_up_queue,
        # "agg_util_inv": agg_util_inv,
        # "gap_decrease": gap_decrease,
        "efficient0": both_efficient[0],
        "efficient1": both_efficient[1],
    }

    for key, val in vars.items():
        print(key, " =", m.eval(val))

    import matplotlib.pyplot as plt
    fig, ax = plt.subplots()
    xx = range((c.T-2) * 10)
    y1 = [df["cwndf_0"][t % (c.T-2)] for t in xx]
    y2 = [df["cwndf_1"][t % (c.T-2)] for t in xx]

    ax.plot(xx, y1, label="f1")
    ax.plot(xx, y2, label="f2")

    ax.legend()

    ax.set_xlabel('Time [Rm]')
    ax.set_ylabel('Cwnd')

    fig.tight_layout()
    fig.savefig(f'tmp/aimd_ccac.svg')


else:
    import ipdb; ipdb.set_trace()
    print(get_unsat_core(s))

import pandas as pd
import argparse
from typing import List
import z3
from qe.environment.cbr_delay import CBRDelay
from qe.util import extract_vars, flatten, try_except_wrapper, var_to_str_list


def get_args():
    parser = argparse.ArgumentParser(description="Belief computation")

    parser.add_argument("--use-qdel", action="store_true")
    parser.add_argument("--use-loss-detect", action="store_true")
    parser.add_argument("-t", "--tsteps", action="store", type=int, default=6)
    parser.add_argument("--csv", action="store", type=str)

    args = parser.parse_args()
    return args


def fix_history(start, df, v):
    T = len(v.A)
    fix_constr = []
    for i, row in enumerate(range(start, start+T)):
        rec = df.iloc[row]
        fix_constr.append(v.A[i] == rec["a"])
        fix_constr.append(v.Ld[i] == rec["ld"])
        fix_constr.append(v.S[i] == rec["s"])
        if rec["qdel"] < T:
            fix_constr.append(v.qdel[i][rec["qdel"]])
        else:
            for dt in range(T):
                fix_constr.append(z3.Not(v.qdel[i][dt]))

    return fix_constr


@try_except_wrapper
def main(args):
    c = CBRDelay.Config(
        T=args.tsteps, use_qdel=args.use_qdel, use_loss_detect=args.use_loss_detect
    )

    # Compute belief set
    v = CBRDelay.Variables("", c)
    constrs = CBRDelay.Constraints().all_constraints(c, v)

    # Read csv that already has header
    df = pd.read_csv(args.csv, header=0)

    import matplotlib.pyplot as plt
    fig, ax = plt.subplots()
    ax.plot(range(8), df.iloc[40:48]['s'], marker='o')
    fig.savefig("tmp/s.pdf")

    s = z3.Solver()
    s.add(constrs)
    s.add(v.C == 20)
    s.add(v.B == 100)

    def my_check(start):
        s.push()
        s.add(fix_history(start, df, v))
        ret = s.check()
        print(ret)
        if str(ret) == "sat":
            m = s.model()
            print(CBRDelay.get_str(c, v, m))
        s.pop()

    for start in range(40, 60):
        my_check(start)
        print("")


if __name__ == "__main__":
    args = get_args()
    main(args)

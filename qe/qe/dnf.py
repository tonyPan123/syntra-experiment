import argparse
from typing import List
import z3
from qe.environment.cbr_delay import CBRDelay
from qe.util import extract_vars, flatten, try_except_wrapper, var_to_str_list


def get_args():
    parser = argparse.ArgumentParser(description="Belief computation")

    parser.add_argument("--use-qdel", action="store_true")
    parser.add_argument("--use-loss-detect", action="store_true")
    parser.add_argument("-t", "--tsteps", action="store", type=int, default=3)

    args = parser.parse_args()
    return args


def qe_simplify(g: z3.Goal) -> z3.BoolRef:
    tactic = z3.Then(
        # 'fm',
        "qe2",
        # 'qe',
        "solve-eqs",
        "propagate-values2",
        "propagate-ineqs",
        # 'demodulator',
        # 'dom-simplify',
        "purify-arith",
        "simplify",
        "unit-subsume-simplify",
        "solver-subsumption",
        # 'aig',
        # 'sat-preprocess',
        # 'fm',
        # 'ctx-solver-simplify',
        # 'ctx-simplify,
        # 'add-bounds',
    )
    ret = tactic(g)
    # ret2 = z3.simplify(ret.as_expr())
    return ret.as_expr()  #  ret2


def check(f: z3.BoolRef):
    s = z3.Solver()
    s.add(f)
    return s.check(), s


@try_except_wrapper
def main(args):
    c = CBRDelay.Config(
        T=args.tsteps, use_qdel=args.use_qdel, use_loss_detect=args.use_loss_detect
    )

    # Compute belief set
    vb = CBRDelay.Variables("", c)
    clb = CBRDelay.Constraints().all_constraints(c, vb)
    # for t in range(1, c.T):
    #     clb.append(vb.A[t] >= vb.A[t-1] + vb.a)

    g = z3.Goal()
    path = [vb.C, vb.B]
    unobserved = [vb.I, vb.L]
    future = [vb.Ld[-1], vb.qdel[-1][:]]
    # g.add(z3.Exists(flatten([path, unobserved, future]), z3.And(clb)))

    # for x in clb:
    #     g.add(x)
    g.add(z3.And(clb))

    # https://stackoverflow.com/questions/11599230/how-to-convert-a-formula-to-disjunctive-normal-form
    # https://www.cs.tau.ac.il/~msagiv/courses/asv/z3py/strategies-examples.htm
    repeat_split = z3.Repeat(z3.OrElse(z3.Tactic("split-clause"), z3.Tactic("skip")))
    t = z3.Then(
        "tseitin-cnf",
        "simplify",
        repeat_split
    )
    print(t(g))


if __name__ == "__main__":
    main(get_args())

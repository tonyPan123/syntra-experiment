import argparse
from math import inf
from typing import List
from qe.environment.ccac import CCAC
from qe.environment.ideal import Ideal
import z3
from qe.environment.cbr_delay import CBRDelay
from qe.util import extract_vars, flatten, try_except_wrapper, var_to_str_list, qe_simplify, my_simplify


def get_args():

    parser = argparse.ArgumentParser(description='Belief computation')

    parser.add_argument('--use-qdel', action='store_true')
    parser.add_argument('--use-loss-detect', action='store_true')
    parser.add_argument('-t', '--tsteps', action='store', type=int, default=3)
    parser.add_argument('--project-C', action='store_true')

    args = parser.parse_args()
    return args


def check(f: z3.BoolRef):
    s = z3.Solver()
    s.add(f)
    return s.check(), s


def filter_known_(c: CBRDelay.Config, v: CBRDelay.Variables,
                  bc: z3.BoolRef, kc: z3.BoolRef):
    assert bc.decl().kind() == z3.Z3_OP_AND

    filtered = []
    for constr in bc.children():
        sat, s = check(z3.Not(z3.Implies(kc, constr)))
        # If unsat, that means that the implication is always true.
        # I.e., that bc constraint is implied by kc and so we can filter it out.
        if(sat != z3.unsat):
            filtered.append(constr)
    return z3.And(filtered)


def filter_known(c: CBRDelay.Config, v: CBRDelay.Variables, bc: z3.BoolRef):

    known_list: List[z3.BoolRef] = [v.C > v.a]

    """
    Bounds on only C
    """
    for t1 in range(c.T):
        # With qdel get eps better lower bounds. These perhaps we can skip.
        if (c.use_qdel and t1 + c.D <= c.T-1 and t1 > 0):
            known_list.append(
                z3.Implies(z3.And(v.S[t1] != v.S[t1-c.D], v.qdel[t1][0]),
                           v.C * (2 * c.D) > v.S[t1+c.D] - v.S[t1]))
            if (t1-c.D >= 0):
                known_list.append(
                    z3.Implies(z3.And(v.S[t1] != v.S[t1-c.D], v.qdel[t1][0]),
                               v.C * c.D > v.S[t1+c.D] - v.S[t1] - (v.A[t1] - v.A[t1-c.D])))

        for t2 in range(t1+1, c.T):
            # in paper
            known_list.append(v.C * (t2-t1+c.D) >= v.S[t2] - v.S[t1])
            # because of absence of TBF, burst is bounded by inflight.
            if(c.use_loss_detect):
                known_list.append(v.C * (t2-t1) >= v.S[t2] - (v.A[t1]-v.Ld[t1]))

            # TODO: Need better. something like if not ACKed within R+D instead of T+D
            # TODO: I think this can be done from T=4.
            # TODO: I think if we guess, we can check using non QE query with longer traces.
            # if not ACKed within T+D time, then utilized.
            # variant of minqdel > 0 upper bound.
            if(c.use_loss_detect and t2 > t1 + c.D and t1+1 <= c.T-1):
                known_list.append(z3.Implies(
                    v.S[t2] < v.A[t1+1]-v.Ld[t2],
                    v.C * (t2-t1-c.D) <= v.S[t2] - v.S[t1]))

            # We get slightly better lower bounds (off by a/T+D, and use higher
            # Ld idx) depending on sequence manipulation.
            # Not written those bounds.
            # TODO: Might need to understand these for additive increment style CCAs.

            # TODO: qdel based upper bounds on C.
            # These go away (i.e., they implied (weaker)), when we add loss detection.

    """
    Bounds on B and C
    """

    # known_list = []
    kc = z3.And(known_list)

    # Check
    s = z3.Solver()
    to_check = z3.Implies(bc, kc)  # kc is an overapproximation
    s.add(z3.Not(to_check))
    sat = s.check()
    print("# Checking if kc is an overapproximation (if so result should be unsat)")
    print(sat)
    if(sat == z3.sat):
        print(s.model())
        import ipdb; ipdb.set_trace()
    else:
        return filter_known_(c, v, bc, kc)


def get_coeff_sign_from_expr(e: z3.ArithRef, v: z3.ArithRef):
    # 0 means positive
    # 1 means negative
    children = []
    kind = e.decl().kind()
    if(kind == z3.Z3_OP_ADD):
        children = e.children()
    elif(kind >= 0x206 and kind <= 0x20C or kind == z3.Z3_OP_UNINTERPRETED):
        # binary arithematic operator, e.g., add, sub, mul, etc.
        # https://z3prover.github.io/api/html/group__capi.html
        children = [e]
    else:
        raise NotImplementedError

    for child in children:
        if(str(v) in var_to_str_list(extract_vars(child))):
            if(str(child)[0] == '-'):
                return True
            else:
                return False


def check_sign(b: z3.BoolRef, v: z3.ArithRef) -> bool:
    # 0 means b is lower bound on v
    # 1 means b is upper bound on v
    if(b.decl().kind() == z3.Z3_OP_NOT):
        assert len(b.children()) == 1
        return not check_sign(b.children()[0], v)
    elif(b.decl().kind() == z3.Z3_OP_LE):
        # Check which arg does v lie in
        # And check the coefficient of v
        # Based on that return if b is upper or lower bound on v.
        assert len(b.children()) == 2
        lhs = b.children()[0]
        rhs = b.children()[1]
        if(str(v) in var_to_str_list(extract_vars(lhs))):
            sign = get_coeff_sign_from_expr(lhs, v)
            return not sign
        else:
            assert str(v) in var_to_str_list(extract_vars(rhs))
            sign = get_coeff_sign_from_expr(rhs, v)
            return sign
    else:
        raise NotImplementedError


def print_with_bound(b: z3.BoolRef, v: z3.ArithRef, indent: str = ''):
    kind = b.decl().kind()
    # import ipdb; ipdb.set_trace()
    if(kind in [z3.Z3_OP_AND, z3.Z3_OP_OR]):
        OP_NAME = "AND" if kind == z3.Z3_OP_AND else "OR"
        print(f"{indent}{OP_NAME}(")
        for constr in b.children():
            print_with_bound(constr, v, indent + '    ')
        print(f"{indent})")
    elif(str(v) in var_to_str_list(extract_vars(b))):
        if(kind in [z3.Z3_OP_LE, z3.Z3_OP_NOT]):
            sign = check_sign(b, v)
            NAME = "  # UPPER" if sign else "  # LOWER"
            print(f"{indent}{b}{NAME}")
        else:
            print(f"{indent}{b}")
    else:
        print(f"{indent}{b}")


@try_except_wrapper
def main(args):
    NM = CBRDelay
    NM = Ideal
    # NM = CCAC

    if NM == CCAC:
        c = CCAC.Config(
            T=args.tsteps,
            use_qdel=args.use_qdel,
            use_loss_detect=args.use_loss_detect,
            compose=True,
            infinite_buffer=True,
            use_ecn=True,
            use_hop_delay=True,
        )
    elif NM == CBRDelay:
        c = CBRDelay.Config(
            T=args.tsteps, use_qdel=args.use_qdel, use_loss_detect=args.use_loss_detect
        )
    elif NM == Ideal:
        c = Ideal.Config(T=args.tsteps, use_loss_detect=args.use_loss_detect, infinite_buffer=True, N=2, use_ecn=True)

    # Compute belief set
    vb = NM.Variables('', c)
    clb = NM.Constraints().all_constraints(c, vb)

    # send non-zero bytes every round.
    for t in range(1, c.T):
        clb.append(vb.A[t] >= vb.A[t-1] + vb.a)

    # Constraint on other flow
    assert c.N == 2
    # # # Other flow perfect
    # # for t in range(1, c.T):
    # #     clb.append(vb.Af[1][t] == vb.Af[1][t-1] + vb.C/2)
    # # Average half rate.
    # clb.append(vb.Af[1][c.T-1] - vb.Af[1][0] == vb.C * (c.T-1)/2)
    # # Not as bursty
    # for t in range (1, c.T):
    #     clb.append(vb.Af[1][t] - vb.Af[1][t-1] <= vb.C)
    # # Even less bursty
    # for t in range (1, c.T):
    #     clb.append(vb.Af[1][t] - vb.Af[1][t-1] <= 3 * vb.C/4)
    #     clb.append(vb.Af[1][t] - vb.Af[1][t-1] >= vb.C/4)

    # Fair share
    vb.F = z3.Real("F")
    clb.append(vb.F <= vb.C - vb.a)
    clb.append(vb.F >= 5)
    # Average fair share
    clb.append(vb.Af[1][c.T-1] - vb.Af[1][0] == vb.C - vb.F)
    # Max rate is double fair share
    for t in range (1, c.T):
        clb.append(vb.Af[1][t] - vb.Af[1][t-1] <= 2 * (vb.C - vb.F))

    import ipdb; ipdb.set_trace()

    g = z3.Goal()

    # # We need separate loss detection to be able to compute upper bounds.
    # # g.add(z3.Exists(flatten([vb.I, vb.Ld, vb.L]), z3.And(clb)))
    # if(args.project_C):
    #     # g.add(z3.Exists(flatten([vb.I, vb.L, vb.B]), z3.And(clb)))

    #     # For minclambda style computation
    #     # clb.append(vb.B == 0)
    #     g.add(z3.Exists(flatten([vb.I, vb.L]), z3.And(clb)))
    # else:
    #     g.add(z3.Exists(flatten([vb.I[:-1], vb.L[:-1]]), z3.And(clb)))

    # import ipdb; ipdb.set_trace()

    if NM == CCAC:
        g.add(z3.Exists(flatten([vb.W, vb.T0, vb.hop_delay]), z3.And(clb)))
    elif NM == CBRDelay:
        g.add(z3.Exists(flatten([vb.I]), z3.And(clb)))
    elif NM == Ideal:
        if c.infinite_buffer:
            g.add(z3.Exists(flatten([vb.Af[1], vb.Lf, vb.Sf[1], vb.A, vb.L, vb.S]), z3.And(clb)))
        else:
            g.add(z3.Exists(flatten([vb.Af[1], vb.Lf[1], vb.Sf[1], vb.A, vb.L, vb.S]), z3.And(clb)))


    ret = qe_simplify(g)
    print("# Result of QE")
    print(ret)
    print("\n\n")

    import ipdb; ipdb.set_trace()

    # g = z3.Goal(z3.Exists(vb.B, ret.as_expr()))
    # ret = qe_simplify(g)
    # print(ret)
    # print("\n\n")

    # Split constraints
    # import ipdb; ipdb.set_trace()

    # fc = filter_known(c, vb, ret)
    # constrs = fc.children()
    constrs = ret.children()
    onlyC = []
    onlyB = []
    both = []
    for constr in constrs:
        if (str(vb.C) in var_to_str_list(extract_vars(constr)) and not str(vb.B) in var_to_str_list(extract_vars(constr))):
            onlyC.append(constr)
        elif (not str(vb.C) in var_to_str_list(extract_vars(constr)) and str(vb.B) in var_to_str_list(extract_vars(constr))):
            onlyB.append(constr)
        elif (str(vb.C) in var_to_str_list(extract_vars(constr)) and str(vb.B) in var_to_str_list(extract_vars(constr))):
            both.append(constr)
        else:
            pass
    print("\n\n")
    print("# Constraints on C")
    # print(z3.And(onlyC))
    print_with_bound(z3.And(onlyC), vb.C)
    print("\n\n")
    print("# Constraints on B")
    # print(z3.And(onlyB))
    print_with_bound(z3.And(onlyB), vb.B)
    print("\n\n")
    print("# Constraints on C and B")
    # print(z3.And(both))
    print_with_bound(z3.And(both), vb.C)
    # import ipdb; ipdb.set_trace()


if (__name__ == "__main__"):
    main(get_args())

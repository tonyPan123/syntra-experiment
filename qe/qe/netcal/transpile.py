import os
import subprocess
from typing import Dict, List, Optional, Sequence, Tuple

import z3  # type: ignore
import numpy as np
from qe.environment.cbr_delay_nc import CBRDelayNC
from qe.environment.cbr_delay import CBRDelay
from dataclasses import dataclass

from qe.util import get_name_for_list, get_names, try_except_wrapper


# NetworkModel = CBRDelayNC
NetworkModel = CBRDelay


# Common utils between transpile and qe output
THIS_SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
REPO_ROOT = os.path.dirname(os.path.dirname(THIS_SCRIPT_DIR))
OUTPUT_DIR = os.path.join(REPO_ROOT, "outputs/qe/cbrdelay_l0_t6/")
OUTPUT_PATH = os.path.join(OUTPUT_DIR, "lib.rs")


def get_string_list(eliminate: List[z3.ExprRef] = []):
    return [str(e) for e in eliminate]


def get_output_filename(T: int, eliminate: List[str], lhs: str, ideal: bool, prior_l_obs: int):
    lhs_tag = f",lhs={lhs}"
    ideal_tag = ",ideal" if ideal else ""
    prior_l_obs_tag = f",pl={prior_l_obs}" if prior_l_obs >= 0 else ""
    return f'T={T},eliminate=[{",".join(eliminate)}{lhs_tag}{ideal_tag}]{prior_l_obs_tag}.smt2'


# Transpile only utils
def get_lower_bound_name(lhs: z3.ExprRef):
    return f"{str(lhs)}_min"


def get_upper_bound_name(lhs: z3.ExprRef):
    return f"{str(lhs)}_max"


def contains(lhs: z3.ExprRef, expr: z3.ExprRef):
    if expr.eq(lhs):
        return True
    if expr.num_args() == 0:
        return False
    for child in expr.children():
        if contains(lhs, child):
            return True
    return False


def get_term_containing_lhs(lhs: z3.ExprRef, expr: z3.ExprRef):
    # Assuming this is only called if expr contains lhs.
    if lhs.eq(expr):
        return expr
    if expr.decl().kind() == z3.Z3_OP_MUL and contains(lhs, expr):
        return expr
    if expr.num_args() == 0:
        return None
    for child in expr.children():
        # Assuming lhs appears exactly once in expr.
        if contains(lhs, child):
            return get_term_containing_lhs(lhs, child)
    assert False


def is_ineq(ineq: z3.ExprRef) -> bool:
    return ineq.decl().kind() in [z3.Z3_OP_LE, z3.Z3_OP_GE, z3.Z3_OP_NOT, z3.Z3_OP_EQ, z3.Z3_OP_LT, z3.Z3_OP_GT]


def const_is_neg(const: z3.ArithRef):
    if const.decl().kind() == z3.Z3_OP_UMINUS:
        return True
    elif isinstance(const, z3.RatNumRef):
        return const.as_fraction() < 0
    elif const.decl().kind() == z3.Z3_OP_DIV:
        numerator = const.children()[0]
        denominator = const.children()[1]
        assert isinstance(numerator, z3.ArithRef)
        assert isinstance(denominator, z3.ArithRef)
        x = const_is_neg(numerator)
        y = const_is_neg(denominator)
        # x XOR y
        return (x and (not y)) or (y and (not x))
    else:
        raise NotImplementedError


def my_str(expr: z3.ExprRef) -> str:
    # Since rust does not allow left multiplication of ratio with i32, we are
    # reodering multiplication.

    # Not is handled outside this function
    assert expr.decl().kind() != z3.Z3_OP_NOT

    if expr.decl().kind() == z3.Z3_OP_ITE:
        # import ipdb; ipdb.set_trace()
        assert len(expr.children()) == 3
        cond = expr.children()[0]
        true_expr = expr.children()[1]
        false_expr = expr.children()[2]
        return f"if {my_str(cond)} {{ {my_str(true_expr)} }} else {{ {my_str(false_expr)} }}"
    if expr.decl().kind() == z3.Z3_OP_ADD:
        return " + ".join([my_str(x) for x in expr.children()])
    elif expr.decl().kind() == z3.Z3_OP_MUL:
        children = expr.children()
        assert len(children) == 2
        const = children[0]
        var = children[1]
        assert isinstance(const, z3.ArithRef)
        assert isinstance(var, z3.ArithRef)
        assert var.decl().kind() == z3.Z3_OP_UNINTERPRETED
        # num, den = parse_rational_from_arithref(const)
        if const_is_neg(const):
            return f"-{var} * {z3.simplify(-const)}"
        return f"{var} * {const}"
    elif isinstance(expr, z3.ArithRef) and expr.decl().kind() == z3.Z3_OP_UMINUS:
        return f"-{my_str(expr.children()[0])}"
    elif isinstance(expr, z3.RatNumRef):
        return f"RealNumRep::new({expr.numerator()}, {expr.denominator()})"
    elif is_ineq(expr):
        children = expr.children()
        assert len(children) == 2
        lhs = children[0]
        rhs = children[1]
        return f"{my_str(lhs)} {expr.decl()} {my_str(rhs)}"
    else:
        return str(expr)


def transpile_ineq_assertion_cond(orig_ineq):
    ineq = z3.simplify(orig_ineq)
    assert is_ineq(ineq)
    if ineq.decl().kind() == z3.Z3_OP_NOT:
        assert len(ineq.children()) == 1
        ineq = ineq.children()[0]
        assert isinstance(ineq, z3.BoolRef)
        assert ineq.decl().kind() in [
            z3.Z3_OP_LE,
            z3.Z3_OP_GE,
            z3.Z3_OP_EQ,
            z3.Z3_OP_LT,
            z3.Z3_OP_GT,
        ]
        return f"!({my_str(ineq)})"
    else:
        return my_str(ineq)


def eliminate_ite(expr: z3.ExprRef) -> List[z3.ExprRef]:
    if("If" in str(expr)):
        ite = z3.Tactic('blast-term-ite')(expr).as_expr()
        assert isinstance(ite, z3.BoolRef)
        assert ite.decl().kind() == z3.Z3_OP_ITE
        cond_expr = ite.children()[0]
        true_expr = ite.children()[1]
        false_expr = ite.children()[2]
        ret = [z3.simplify(z3.Implies(cond_expr, true_expr)),
               z3.simplify(z3.Implies(z3.Not(cond_expr), false_expr))]
    else:
        ret = [expr]
    return ret


def transpile_union_list(lhs: z3.ExprRef, ineq_list: List[z3.ExprRef]):
    ineq_with_lhs = []
    ineq_without_lhs = []
    for ineq in ineq_list:
        assert isinstance(ineq, z3.BoolRef)
        assert is_ineq(ineq)
        if contains(lhs, ineq):
            ineq_with_lhs.append(ineq)
        else:
            ineq_without_lhs.append(ineq)

    # Condition
    cond = " || ".join(
        [f"({transpile_ineq_assertion_cond(x)})" for x in ineq_without_lhs]
    )
    if len(ineq_without_lhs) == 1:
        cond = transpile_ineq_assertion_cond(ineq_without_lhs[0])

    # Interval bounds
    if len(ineq_with_lhs) == 0:
        assert len(ineq_without_lhs) > 0
        return f"assert!({cond});"
    else:
        # Each disjunction is a list of inequalities, and the lhs only needs to
        # honor the loosest of the ones

        interval_list = []
        for ineq in ineq_with_lhs:
            interval = transpile_ineq_interval(lhs, ineq)
            interval_list.append(interval)

        interval_list_arguments = ", ".join(interval_list)
        if len(ineq_without_lhs) > 0:
            return (
                f"if !({cond}) {{\n"
                f"let tmp = IntervalList::from_interval_lists(vec![{interval_list_arguments}]);\n"
                f"ret = ret.intersection(&tmp);"
                f"}}"
            )
        else:
            return (
                f"let tmp = IntervalList::from_interval_lists(vec![{interval_list_arguments}]);\n"
                f"ret = ret.intersection(&tmp);"
            )


def rename_ineq_op(op: str):
    if op == "=":
        return "=="
    return op


def transpile_ineq_interval(lhs: z3.ExprRef, orig_ineq: z3.BoolRef) -> str:
    if "If" in str(orig_ineq):
        if orig_ineq.decl().kind() == z3.Z3_OP_EQ:
            assert contains(lhs, orig_ineq.children()[0])
        elif orig_ineq.decl().kind() == z3.Z3_OP_NOT:
            child = orig_ineq.children()[0]
            assert child.decl().kind() == z3.Z3_OP_EQ
            assert contains(lhs, child.children()[0])
        else:
            assert False

    # Returns interval list object.
    ineq = z3.simplify(orig_ineq)
    assert is_ineq(ineq)
    assert contains(lhs, ineq)
    ineq_is_not = False
    if ineq.decl().kind() == z3.Z3_OP_NOT:
        ineq_is_not = True
        ineq = ineq.children()[0]
        assert ineq.decl().kind() in [
            z3.Z3_OP_LE,
            z3.Z3_OP_GE,
            z3.Z3_OP_EQ,
            z3.Z3_OP_LT,
            z3.Z3_OP_GT,
        ]

    # Convert ineq to the form expr <= 0.
    c1 = ineq.children()[0]
    c2 = ineq.children()[1]
    ineq = eval(f"c1 - c2 {rename_ineq_op(ineq.decl().name())} 0")
    ineq = z3.simplify(ineq)

    # This code is now moot as ineq is always expr <= 0.
    c1 = ineq.children()[0]
    c2 = ineq.children()[1]
    expr = c1  # ineq = expr <= 0
    const = c2
    expr_lhs = True
    if isinstance(c1, z3.RatNumRef):
        expr = c2  # ineq = 0 <= expr
        const = c1
        expr_lhs = False
    else:
        assert isinstance(c2, z3.RatNumRef)

    # Get term
    term = get_term_containing_lhs(lhs, ineq)
    assert term is not None
    assert isinstance(term, z3.ArithRef)
    assert term.decl().kind() == z3.Z3_OP_MUL or term.is_real()

    # Get coeff and sign
    coeff = 1
    coeff_neg = False
    if term.decl().kind() == z3.Z3_OP_MUL:
        coeff = term.children()[0]
        assert isinstance(coeff, z3.ArithRef)
        coeff_neg = const_is_neg(coeff)

    # Get bound
    assert isinstance(expr, z3.ArithRef)
    bound = z3.simplify((const + term - expr) / coeff)

    # Get ineq sign and compute if upper or lower bound
    # We are effectively doing infimum/supremum, so don't care about difference
    # between lt and le.
    bound_included = ineq.decl().kind() in [z3.Z3_OP_LE, z3.Z3_OP_GE, z3.Z3_OP_EQ]
    is_ub = ineq.decl().kind() in [z3.Z3_OP_LE, z3.Z3_OP_LT]
    # coeff * var + () <= 0 gives upper bound on var with
    # positive coeff.
    if not (is_ub):
        assert ineq.decl().kind() in [z3.Z3_OP_GE, z3.Z3_OP_GT, z3.Z3_OP_EQ]

    # import ipdb; ipdb.set_trace()

    if ineq_is_not:
        # Not(expr <= 0), implies the ineq is actually expr > 0, implies we get
        # lower bound.
        is_ub = not is_ub
        bound_included = not bound_included
    if not (expr_lhs):
        # ineq is actually 0 <= expr. expr >= 0, so we get lower bound.
        # In case it is Not(expr >= 0), we'd get upper bound (expr < 0).
        is_ub = not is_ub
    if coeff_neg:
        # -var + () <= 0 implies var >= () so we get lower bound.
        is_ub = not is_ub

    if ineq.decl().kind() == z3.Z3_OP_EQ:
        if ineq_is_not:
            return f"IntervalList::interval_except(Bound::Excluded({my_str(bound)}))"

        # ub = get_upper_bound_name(lhs)
        # lb = get_lower_bound_name(lhs)
        return (
            f"IntervalList::interval_point(Bound::Included({my_str(bound)}))"
            # f"{ub} = std::cmp::min({ub}, {my_str(bound)});"
            # + f"\n{lb} = std::cmp::max({lb}, {my_str(bound)});"
        )
    included = "Included" if bound_included else "Excluded"
    if is_ub:
        # Is upper bound
        # lhs_rust_var = get_upper_bound_name(lhs)
        return f"IntervalList::interval_upper(Bound::{included}({my_str(bound)}))"
        # return f"{lhs_rust_var} = std::cmp::min({lhs_rust_var}, {my_str(bound)});"
    else:
        # Is lower bound
        # lhs_rust_var = get_lower_bound_name(lhs)
        return f"IntervalList::interval_lower(Bound::{included}({my_str(bound)}))"
        # return f"{lhs_rust_var} = std::cmp::max({lhs_rust_var}, {my_str(bound)});"


rename_dict = {
    "A_t": "a",
    "S_t": "s",
    "L_t": "l",
    "I_t": "i",
    "Q_t": "q",
}


def rename_vars(c: NetworkModel.Config, v: NetworkModel.Variables, cnf: z3.BoolRef):
    # Convert all vector variable names
    substitutions = []
    for _, val in v.__dict__.items():
        if isinstance(val, list) or isinstance(val, np.ndarray):
            assert isinstance(val[0], z3.ArithRef)
            prefix = get_name_for_list(get_names(val))  # type: ignore
            for i in range(len(val)):
                v_new = z3.Const(f"{rename_dict[prefix]}[{i}]", val[i].sort())
                substitutions.append((val[i], v_new))

    return z3.substitute(cnf, substitutions)


def get_extra_input_for_lhs(lhs: str, sim: bool) -> str:
    if lhs == "C":
        return ""
    elif lhs == "B":
        return ", C: RealNumRep"

    prefix = ", C: RealNumRep, B: RealNumRep"
    if lhs.startswith("A"):
        return prefix + ", loss_rate_tol: RealNumRep"
    else:
        return prefix


fn_ptr_dict: Dict[str, Dict[Tuple[int, int], str]] = dict()


def update_fn_ptr_dict(fn_tag: str, T: int, n_losses_observed: int, newly_obs_l: int, fn_name: str):
    # TODO: Auto generate HashMaps for loss computations. Right now doing by
    # hand.
    if fn_tag not in fn_ptr_dict:
        fn_ptr_dict[fn_tag] = dict()
    fn_ptr_dict[fn_tag][(T, n_losses_observed)] = fn_name


def transpile_fn_ptr_dict() -> List[str]:
    """
    lazy_static! {
    pub static ref COMPUTE_C: HashMap<(i32, i32), QeFun> = HashMap::from([
        ((5, 1), compute_c_t_5_l_1 as QeFun),
        ((5, 2), compute_c_t_5_l_2 as QeFun),
    ]);
    }
    """
    ret = [
        "lazy_static! {",
    ]

    for fn_tag, fn_dict in fn_ptr_dict.items():
        qe_fun = "QeFun"
        if(fn_tag.startswith("compute_c")):
            qe_fun = "QeFunC"
        if(fn_tag.startswith("compute_b")):
            qe_fun = "QeFunB"
        if(fn_tag.startswith("compute_a")):
            qe_fun = "QeFunRate"
        if("sim" in fn_tag):
            qe_fun = "QeFunSim"

        ret.append(f"pub static ref {fn_tag.upper()}: HashMap<(i32, i32), {qe_fun}> = HashMap::from([")
        for (T, n_losses_observed), fn_name in fn_dict.items():
            ret.append(f"(({T}, {n_losses_observed}), {fn_name} as {qe_fun}),")
        ret.append("]);\n")

    ret.append("}\n")
    out_str = "\n".join(ret)

    with open(OUTPUT_PATH, "a") as f:
        f.write(out_str)

    return ret


def get_function_name(lhs: str, T: int, n_losses_observed: int, sim: bool, ideal: bool, newly_obs_l: int) -> (str, str):
    sim_tag = "sim_" if sim else ""
    ideal_tag = "ideal_" if ideal else ""
    fn_prefix = f"compute_{sim_tag}{ideal_tag}{lhs.lower()}"
    newly_obs_l_tag = f"_nl_{newly_obs_l}" if newly_obs_l >= 0 else ""
    return fn_prefix, f"{fn_prefix}_t_{T}_l_{n_losses_observed}{newly_obs_l_tag}"


# @try_except_wrapper
def transpile(
    T: int, lhs: str, eliminate: List[str], n_losses_observed: int,
    sim: bool, ideal: bool,
    newly_obs_l: int
) -> Optional[str]:
    # The interface of this function needs to be Send + Sync. As this may be
    # called in a new thread.
    c = NetworkModel.Config(T=T)
    v = NetworkModel.Variables("", c)
    fname = get_output_filename(T, eliminate, lhs, ideal, -2 if newly_obs_l == -2 else n_losses_observed)
    fpath = os.path.join(OUTPUT_DIR, fname)

    if not os.path.exists(fpath):
        print("Skipping as file not found: ", T, eliminate, fpath)
        return None

    print("Transpiling: ", T, lhs, eliminate, fpath)
    s = z3.Solver()
    s.from_file(fpath)

    fpath_z3 = fpath + ".z3"
    # Just to compare manually if the transpiled output makes sense.
    if not os.path.exists(fpath_z3):
        with open(fpath_z3, "w") as f:
            f.write(str(s))

    # Assume CNF
    assertions = s.assertions()
    assert len(assertions) == 1
    cnf = assertions[0]
    assert isinstance(cnf, z3.BoolRef)

    # Substitute each variable name with the name that will be used in rust.
    cnf = rename_vars(c, v, cnf)

    if lhs in ["C", "B"]:
        lhs_var = z3.Real(lhs)
    else:
        prefix = lhs.split("_")[0] + "_t"
        time = int(lhs.split("_")[1])
        lhs_var = z3.Real(f"{rename_dict[prefix]}[{time}]")

    # TODO: Also output a hashmap with function pointers so that we can use
    # that to dynamically dispatch the function based on how many losses/RTTs
    # have been observed.

    # We want to output rust code that computes the minimum and maximum value
    # of the lhs variable under the CNF constraints.
    fn_prefix, fn_name = get_function_name(
        lhs, T, n_losses_observed, sim, ideal, newly_obs_l)
    print(fn_name)
    update_fn_ptr_dict(fn_prefix, T, n_losses_observed, newly_obs_l, fn_name)
    extra_args = get_extra_input_for_lhs(lhs, sim)
    ret_str_list = [
        f"pub fn {fn_name}(a: &[RealNumRep], l: &[RealNumRep], s: &[RealNumRep], L0: RealNumRep{extra_args}) -> IntervalList<RealNumRep> {{",
        f"assert!(l.len() == {max(newly_obs_l + 1, n_losses_observed)});"
        "let mut ret = IntervalList::new_interval(Interval::new(Bound::Unbounded, Bound::Unbounded));",
    ]

    # Handle ite constraints
    disjunctions = []
    for disjunction in cnf.children():
        if("If" in str(disjunction) and disjunction.decl().kind() == z3.Z3_OP_EQ):
            # print(lhs, disjunction)
            # assert disjunction.decl().kind() == z3.Z3_OP_EQ
            ret = eliminate_ite(disjunction)
            disjunctions.extend(ret)
            print(f"For lhs {lhs_var}, converted {disjunction} to {ret}")
        else:
            disjunctions.append(disjunction)

    for disjunction in disjunctions:
        assert isinstance(disjunction, z3.BoolRef)
        # import ipdb; ipdb.set_trace()
        this_str = ""
        if disjunction.decl().kind() == z3.Z3_OP_OR:
            this_str = transpile_union_list(lhs_var, disjunction.children())
        elif is_ineq(disjunction):
            this_str = transpile_union_list(lhs_var, [disjunction])
        else:
            assert False
        ret_str_list.append(this_str)

    ret_str_list.append("ret")
    ret_str_list.append("}")
    ret_str_list.append("\n")
    out_str = "\n".join([x for x in ret_str_list if x is not None])
    # print(out_str)

    with open(OUTPUT_PATH, "a") as f:
        f.write(out_str)

    return out_str


@dataclass
class QEQuery:
    lhs: str
    eliminate: List[z3.ExprRef]
    n_losses_observed: int
    last_observed_s: int
    sim: bool = False
    ideal: bool = False
    newly_obs_s: int = -1  # -1 means unspecified.
    newly_obs_l: int = -2  # -2 means unspecified, -1 means specified and no new losses.


@try_except_wrapper
def transpile_all(T: int, queries: List[QEQuery]):
    with open(OUTPUT_PATH, "w") as f:
        f.write("""
// Computer generated. Do not edit by hand.
#![allow(clippy::all)]
use ds::*;
use ds::interval::{Interval, IntervalList};
use std::collections::HashMap;
use lazy_static::lazy_static;
use std::ops::Bound;

pub type QeFun = fn(
    &[RealNumRep],
    &[RealNumRep],
    &[RealNumRep],
    RealNumRep,
    RealNumRep,
    RealNumRep,
) -> IntervalList<RealNumRep>;
pub type QeFunC =
    fn(&[RealNumRep], &[RealNumRep], &[RealNumRep], RealNumRep) -> IntervalList<RealNumRep>;
pub type QeFunB = fn(
    &[RealNumRep],
    &[RealNumRep],
    &[RealNumRep],
    RealNumRep,
    RealNumRep,
) -> IntervalList<RealNumRep>;
pub type QeFunRate =
    fn(&[RealNumRep], &[RealNumRep], &[RealNumRep], RealNumRep) -> IntervalList<RealNumRep>;
pub type QeFunSim = fn(
    &[RealNumRep],
    &[RealNumRep],
    &[RealNumRep],
    RealNumRep,
    RealNumRep,
) -> IntervalList<RealNumRep>;

""")
        # f.write("// Computer generated. Do not edit by hand.\n")
        # f.write("use crate::cc_common::*;\n")
        # f.write("use crate::interval::{Interval, IntervalList};\n")
        # f.write("use std::collections::HashMap;\n")
        # f.write("\n")
        # f.write("pub type QeFun = fn(&[RealNumRep], &[RealNumRep], &[RealNumRep]) -> IntervalList<RealNumRep>;\n")
        # f.write("pub type QeFunRate = fn(&[RealNumRep], &[RealNumRep], &[RealNumRep], RealNumRep) -> IntervalList<RealNumRep>;\n")
        # f.write("\n")

    for qe_query in queries:
        lhs = qe_query.lhs
        eliminate = qe_query.eliminate
        n_losses_observed = qe_query.n_losses_observed
        ret = transpile(T, lhs, get_string_list(eliminate), n_losses_observed, qe_query.sim, qe_query.ideal, qe_query.newly_obs_l)
        # print(ret)
        # import ipdb; ipdb.set_trace()

    transpile_fn_ptr_dict()
    subprocess.run(["rustfmt", f"{OUTPUT_PATH}"])


# Tests
if __name__ == "__main__":
    c = NetworkModel.Config(T=5)
    v = NetworkModel.Variables("", c)
    print(transpile_ineq_interval(v.L[2], z3.Not(v.A[2] - v.L[2] <= v.S[3])))
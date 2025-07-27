import numpy as np
import z3
from typing import Callable, List, Union


def get_raw_value(expr: z3.ExprRef):
    try:
        if(isinstance(expr, z3.RatNumRef)):
            return expr.as_fraction()
        elif(isinstance(expr, z3.BoolRef)):
            return bool(expr)
        elif(isinstance(expr, z3.ArithRef)):
            return np.nan
        else:
            raise NotImplementedError
    except z3.z3types.Z3Exception as e:
        return np.nan


def get_model_value_list(model: z3.ModelRef, l: List[z3.ExprRef]):
    ret = []
    for var in l:
        val = get_raw_value(model.eval(var))
        ret.append(val)
    return ret


def z3_min(a: z3.ArithRef, b: z3.ArithRef):
    ret = z3.If(a < b, a, b)
    assert isinstance(ret, z3.ArithRef)
    return ret


def z3_max(a: z3.ArithRef, b: z3.ArithRef):
    ret = z3.If(a > b, a, b)
    assert isinstance(ret, z3.ArithRef)
    return ret


def z3_min_const(a: z3.ArithRef, b: z3.ArithRef, out: z3.ArithRef):
    cl = []
    cl.append(out <= a)
    cl.append(out <= b)
    cl.append(z3.Or(out == a, out == b))
    return cl


def z3_max_const(a: z3.ArithRef, b: z3.ArithRef, out: z3.ArithRef):
    cl = []
    cl.append(out >= a)
    cl.append(out >= b)
    cl.append(z3.Or(out == a, out == b))
    return cl


def z3_min_const_list(l: List[z3.ArithRef], out: z3.ArithRef):
    cl = []
    for x in l:
        cl.append(out <= x)
    cl.append(z3.Or([out == x for x in l]))
    return cl


def z3_max_const_list(l: List[z3.ArithRef], out: z3.ArithRef):
    cl = []
    for x in l:
        cl.append(out >= x)
    cl.append(z3.Or([out == x for x in l]))
    return cl


def try_except(function: Callable):
    try:
        return function()
    except Exception:
        import sys
        import traceback

        import ipdb
        extype, value, tb = sys.exc_info()
        traceback.print_exc()
        ipdb.post_mortem(tb)


def try_except_wrapper(function):
    def func_to_return(*args, **kwargs):
        def func_to_try():
            return function(*args, **kwargs)
        return try_except(func_to_try)
    return func_to_return


def get_names(l: List[z3.ArithRef]):
    return [x.decl().name() for x in l]


def lcs(arr: Union[List[str], np.ndarray]) -> str:
    """
    Least common substring of a list of strings
    """
    n = len(arr)
    larr = [len(x) for x in arr]
    for i in range(min(larr)):
        same = True
        for j in range(1, n):
            if(arr[j][i] != arr[0][i]):
                same = False
                break
        if(not same):
            return arr[0][:i]
    return arr[0][:min(larr)]


def get_name_for_list(l: Union[np.ndarray, List[str], str]) -> str:
    # import ipdb; ipdb.set_trace()
    if(isinstance(l, list) or isinstance(l, np.ndarray)):
        return lcs(l) + "t"
    elif(isinstance(l, str)):
        return l
    else:
        raise TypeError("Expected list or str")


def flatten(l) -> list:
    ret = []
    if(isinstance(l, list) or isinstance(l, np.ndarray)):
        for item in l:
            ret.extend(flatten(item))
        return ret
    else:
        return [l]


def extract_vars(e: z3.ExprRef) -> List[z3.ExprRef]:
    if e.children() == []:
        if str(e)[:4] == "Var(":
            return []
        elif type(e) == z3.ArithRef or type(e) == z3.BoolRef\
                or type(e) == z3.FuncDeclRef:
            if(str(e) in ["True", "False", "And", "Or"]):
                return []
            return [e]
        else:
            return []
    else:
        res = []
        for x in e.children():
            res += extract_vars(x)
        return res


def var_to_str_list(l: List[z3.ExprRef]) -> List[str]:
    ret = []
    for e in l:
        ret.append(str(e))
    return ret


def qe_simplify(g: z3.Goal) -> z3.BoolRef:
    tactic = z3.Then(
        # 'fm',

        'qe2',
        # 'qe',
        'solve-eqs',
        'propagate-values2',
        'propagate-ineqs',

        # 'demodulator',
        # 'dom-simplify',

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
    # ret2 = z3.simplify(ret.as_expr())
    return ret.as_expr()  #  ret2


def my_simplify(g: z3.Goal) -> z3.BoolRef:
    tactic = z3.Then(
        # 'fm',

        # 'qe2',
        # 'qe',
        'solve-eqs',
        'propagate-values2',
        'propagate-ineqs',

        # 'demodulator',
        # 'dom-simplify',

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
    # ret2 = z3.simplify(ret.as_expr())
    return ret.as_expr()  #  ret2

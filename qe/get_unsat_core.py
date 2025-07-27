from typing import List
import z3
import sys
import os

def unroll_assertions(expression: z3.ExprRef) -> List[z3.ExprRef]:
    """
    If the input expression is And of multiple expressions,
    then this returns a list of the constituent expressions.
    This is done recursively untill the constituent expressions
    use a different z3 operation at the AST root.
    """
    ret = []
    if(z3.is_and(expression)):
        for constituent in expression.children():
            ret.extend(unroll_assertions(constituent))
    else:
        ret.append(expression)
    return ret


def custom_get_unsat_core(solver: z3.Solver):
    dummy = z3.Solver()
    dummy.set(unsat_core=True)

    assertions = []
    for assertion in solver.assertions():
        for expr in unroll_assertions(assertion):
            assertions.append(expr)

    non_track_assertions = assertions

    for assertion in non_track_assertions:
        dummy.add(assertion)

    track_assertions = []
    i = 0
    for assertion in track_assertions:
        i += 1
        dummy.assert_and_track(assertion, str(assertion) + f"  :{i}")

    import ipdb; ipdb.set_trace()

    assert(str(dummy.check()) == "unsat")
    unsat_core = dummy.unsat_core()
    import ipdb; ipdb.set_trace()
    return unsat_core


def get_unsat_core(solver: z3.Solver):
    dummy = z3.Solver()
    dummy.set(unsat_core=True)

    assertions = []
    for assertion in solver.assertions():
        for expr in unroll_assertions(assertion):
            assertions.append(expr)

    i = 0
    for assertion in assertions:
        i += 1
        dummy.assert_and_track(assertion, str(assertion) + f"  :{i}")

    assert(str(dummy.check()) == "unsat")
    unsat_core = dummy.unsat_core()
    return unsat_core



if __name__ == '__main__':
    assert len(sys.argv) == 2
    path = sys.argv[1]
    assert os.path.exists(path)

    s = z3.Solver()
    s.from_file(path)
    print(custom_get_unsat_core(s))


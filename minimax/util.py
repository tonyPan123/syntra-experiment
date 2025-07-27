from typing import Callable


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
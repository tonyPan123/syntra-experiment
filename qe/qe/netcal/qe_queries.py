import argparse
from dataclasses import dataclass
import multiprocessing
import os
import time
from typing import Dict, List

import z3  # type: ignore

from qe.netcal.transpile import (
    OUTPUT_DIR,
    QEQuery,
    get_function_name,
    get_output_filename,
    get_string_list,
    transpile_all,
    NetworkModel
)
from qe.util import flatten, qe_simplify


# TODO: test if everything works well when we have small enough trace lengths
# After that we can see longer traces.


def lhs_specific_constraints(
    c: NetworkModel.Config, v: NetworkModel.Variables, lhs: str
) -> List[z3.BoolRef]:
    ret = []
    T = c.T
    if lhs == f"Q_{T-1}":
        bq: z3.ExprRef = z3.Real(f"Q_{T-1}")
        ret.append(bq == v.bq[T - 1])

    elif lhs.startswith(f"A_{T-1}"):
        # Max ACK rate for CCA

        # The extra constraints encode the bad behavior. The QE query is then,
        # we want bounds on A[-1] such that for all unobserved, there is no
        # solution to "feasible \land bad".

        queue_tol_bdp_str = lhs.replace(f"A_{T-1}_", "")
        queue_tol_bdp = int(queue_tol_bdp_str)
        loss_rate_tol = z3.Real("loss_rate_tol")  # loss_rate = losses / time duration

        # TODO: update this to be able to compute max allowed rate for
        # different probing durations.
        duration = 1
        first = T - 1 - duration
        last = T - 1
        # Note, above the first A is selected at time index first+1, that is
        # why we have first+1 below.

        # This makes sense as our current action affects losses from first+1 to
        # last so we restrict those losses.

        good = []
        for t in range(first + 1, last + 1):
            good.append(v.L[t] - v.L[t - 1] <= loss_rate_tol)

        # If we keep queue_tol_bdp as Real, then non-linearity inflates solving
        # time, so substituting with a constant.
        for t in range(first + 1, last + 1):
            good.append(v.bq[t] <= v.C * (c.R * queue_tol_bdp))

        bad = z3.Not(z3.And(good))
        assert isinstance(bad, z3.BoolRef)
        ret.append(bad)

    return ret


# def get_qe_query(
#     c: NetworkModel.Config, lhs: str, feasible: z3.BoolRef, remove: List[z3.ExprRef]
# ):
#     T = c.T
#     if lhs == f"A_{T-1}":
#         return z3.ForAll(remove, z3.Not(feasible))
#     return z3.Exists(remove, feasible)


def write_expr_smt2_file(expr: z3.ExprRef, fname: str):
    with open(fname, "w") as f:
        dummy = z3.Solver()
        dummy.add(expr)
        f.write(dummy.to_smt2())


def write_expr_file(expr: z3.ExprRef, fname: str):
    with open(fname, "w") as f:
        f.write(str(expr))


def run_query_parallel(
    T: int,
    eliminate: List[str],
    lhs: str,
    ideal: bool,
    n_losses_observed: int,
    last_observed_s: int,
    sim: bool,
    newly_obs_s: int,
    newly_obs_l: int,
):
    assert n_losses_observed >= 0
    assert last_observed_s >= 0

    fname = get_output_filename(T, eliminate, lhs, ideal, -2 if newly_obs_l == -2 else n_losses_observed)
    fpath = os.path.join(OUTPUT_DIR, fname)
    _, fn_name = get_function_name(lhs, T, n_losses_observed, sim, ideal, newly_obs_l)
    print("For fn: ", fn_name)

    if os.path.exists(fpath):
        print("Skipping: ", T, eliminate, lhs)
        return

    print("Running: ", T, eliminate, lhs)
    # return

    start = time.time()

    c = NetworkModel.Config(T=T)
    v = NetworkModel.Variables("", c)

    cl = NetworkModel.Constraints().all_constraints(c, v)

    extra_model = []
    if ideal:
        for t in range(c.T):
            extra_model.append(v.S[t] == v.I[t])

    obs_constraints = []
    # Used for all queries
    first_unobserved_l = n_losses_observed
    if first_unobserved_l <= last_observed_s:
        obs_constraints.append(v.A[first_unobserved_l] - v.L[first_unobserved_l] > v.S[last_observed_s])
    # TODO: Rename to last_observed_l
    first_observed_l = first_unobserved_l - 1
    if first_observed_l >= 0 and first_observed_l <= last_observed_s:
        obs_constraints.append(v.A[first_observed_l] - v.L[first_observed_l] <= v.S[last_observed_s])

    # Prior observed losses are observed according to last_observed_s.
    # Where as newly observed are observed according to newly_obs_s.
    # This is why we differentiate old and newly obs losses.
    if newly_obs_s != -1 and newly_obs_l >= 0:
        # Used when computing future loss observations when already some loss
        # observations have been computed for the currently computed S.

        # assert newly_obs_l != -1
        assert newly_obs_s >= newly_obs_l
        obs_constraints.append(v.A[newly_obs_l] - v.L[newly_obs_l] <= v.S[newly_obs_s])
        # import ipdb; ipdb.set_trace()

    extra = lhs_specific_constraints(c, v, lhs)
    feasible = z3.And(cl + extra + extra_model + obs_constraints)
    assert isinstance(feasible, z3.BoolRef)

    g = z3.Goal()
    # remove = flatten([v.I, v.L[-4:], v.C, v.B])
    remove: List[z3.ExprRef] = [z3.Real(x) for x in eliminate]
    print("Eliminating: ", remove)
    g.add(z3.Exists(remove, feasible))

    # Write inputs (mostly for debugging)
    input_smt2 = os.path.join(OUTPUT_DIR, "input_" + fname)
    input_human = os.path.join(OUTPUT_DIR, "input_" + fname + ".z3")
    write_expr_smt2_file(z3.Exists(remove, feasible), input_smt2)
    write_expr_file(g, input_human)

    # # Split if possible
    # if v.C in remove and v.B in remove:
    #     print("Splitting QE into two parts for query: ", fname)
    #     remove.remove(v.C)
    #     remove.remove(v.B)
    #     g1 = z3.Goal()
    #     g1.add(z3.Exists(remove, feasible))
    #     ret = qe_simplify(g1)

    #     g = z3.Goal()
    #     g.add(z3.Exists([v.B, v.C], ret))

    # Main slow call
    ret = qe_simplify(g)

    print("Writing: ", fpath)
    write_expr_smt2_file(ret, fpath)

    end = time.time()
    print(f"Done in {end-start:.2}s: ", T, eliminate)


def run_all_queries(T: int, queries: List[QEQuery]):
    pool = multiprocessing.Pool(64)
    futures = []

    # For S and Q, we have the same variables eliminated but additional
    # constraints.

    # Since we check if output file already exists, if two queries produce same
    # output file, we'd skip executing the query anyway.

    # all_qe_queries: List[List[z3.ExprRef]] = []
    # for ll in queries.values():
    #     for l in ll:
    #         all_qe_queries.append(l)
    # assert len(all_qe_queries) == len(set(all_qe_queries))

    # for q in set(all_qe_queries):
    # for lhs, ll in queries.items():
    #     for q in ll:
    #         sq = get_string_list(q)
    #         f = pool.apply_async(func=run_query_parallel, args=(T, sq, lhs))
    #         futures.append(f)

    for q in queries:
        eliminate = get_string_list(q.eliminate)
        # run_query_parallel(T, eliminate, q.lhs, q.ideal, q.n_losses_observed, q.last_observed_s, q.sim, q.newly_obs_s, q.newly_obs_l)
        f = pool.apply_async(
            func=run_query_parallel,
            args=(
                T,
                eliminate,
                q.lhs,
                q.ideal,
                q.n_losses_observed,
                q.last_observed_s,
                q.sim,
                q.newly_obs_s,
                q.newly_obs_l,
            ),
        )
        futures.append(f)

    # Since the individual processes write to disk, we don't need to do
    # anything with the futures.
    pool.close()
    print("Sleeping 5 seconds")  # In case everything is finished but there is slight lag is function returning.
    time.sleep(5)
    start = time.time()
    while True:
        remaining = 0
        for f in futures:
            if not f.ready():
                # import ipdb; ipdb.set_trace()
                remaining += 1
            else:
                if not f.successful():
                    print("Process raised exception: ", f.get())

        if remaining == 0:
            break
        now = time.time()
        print("Remaining tasks: ", remaining, end=", ")
        print("Elapsed time: ", now - start)
        time.sleep(60 * 5)

    pool.join()


def get_args():
    parser = argparse.ArgumentParser(description='QE queries for minimax')
    parser.add_argument('-t', '--tsteps', action='store', type=int, default=5)
    parser.add_argument('--queue-tol-bdp', action='store', type=int, default=3)
    args = parser.parse_args()
    return args


if __name__ == "__main__":
    args = get_args()
    T = args.tsteps
    queue_tol_bdp = args.queue_tol_bdp
    c = NetworkModel.Config(T=T)
    v = NetworkModel.Variables("", c)
    # Each query is a list of variables to eliminate

    queries_old_format: Dict[str, List[List[z3.ExprRef]]] = {
        # Beliefs
        "C": [
            # compute C
            flatten([v.I, v.L[st:], v.B])
            for st in range(1, T + 1)  # T+1 as all losses could be observed
        ],
        "B": [
            # compute B
            flatten([v.I, v.L[st:], v.C])
            for st in range(1, T + 1)  # T+1 as all losses could be observed
        ],
        f"L_{T-1}": [
            # compute IF = A - L - S
            flatten([v.I, v.L[st:-1], v.C, v.B])
            for st in range(1, T)
            # st = T-1 causes none of the losses to be eliminated. This allows
            # computing L[-1] when all of the prior losses have been observed.
        ],
        f"Q_{T-1}": [
            # compute Q = A - L - I. We add constraint saying Q =
            # A[-1]-L[-1]-I[-1] and then eliminate both L and I. We don't
            # eliminate Q and so we get bounds on it.
            flatten([v.I, v.L[st:], v.C, v.B])
            for st in range(1, T + 1)  # T+1 as all losses could be observed
        ],
        # Actions for network
        f"S_{T-1}": [
            # compute S
            flatten([v.I, v.L[st:], v.C, v.B])
            for st in range(1, T + 1)
            # We may be able to observe last L depending on the trace and
            # actions choices. So explore the case where none of the losses are
            # eliminated.
            # The same as above can be used to compute L given a choice for S,
            # just pick one more L than what is already observed.
            # If a new L is observed, we repeat until no new L is observed.
            # We'd need to transpile accordingly to get ranges for each
            # observed L.
        ],
        # Actions for CCA
        f"A_{T-1}_{queue_tol_bdp}": [
            flatten([v.I, v.L[st:], v.C, v.B, v.S[-1]])
            for st in range(1, T)
            # st = T-1 eliminates last loss, which is definitely not observed
            # at the time of deciding rate at T-1.
            # We add loss_rate_tol and queue_tol_bdp as variables that can be
            # set at runtime, and corresponding constraints.
        ],
    }
    del queries_old_format

    queries: List[QEQuery] = []
    for st in range(T + 1):
        # st starts from 0, as no losses may have been observed
        queries.append(QEQuery(
            "C", flatten([v.I, v.L[st:], v.B]), st, T-1))

        queries.append(QEQuery(
            "B", flatten([v.I, v.L[st:]]), st, T-1))
        # queries.append(QEQuery(
        #     "B", flatten([v.I, v.L[st:], v.C]), st, T-1))


        queries.append(QEQuery(
            f"Q_{T-1}", flatten([v.I, v.L[st:]]), st, T-1))
        # queries.append(QEQuery(
        #     f"Q_{T-1}", flatten([v.I, v.L[st:], v.C, v.B]), st, T-1))


        if st < T:
            queries.append(QEQuery(
                f"S_{T-1}", flatten([v.I, v.L[st:]]), st, T-2))
            # queries.append(QEQuery(
            #     f"S_{T-1}", flatten([v.I, v.L[st:], v.C, v.B]), st, T-2))

            # No sim needed with discretized network path
            # queries.append(QEQuery(
            #     f"S_{T-1}", flatten([v.I, v.L[st:]]), st, T-2, True))

            # Ideal network sim?
            # queries.append(QEQuery(
            #     f"S_{T-1}", flatten([v.I, v.L[st:]]), st, True, True))

    for total_prior_obs_losses in range(T):
        # starts from 0, as no losses may have been observed
        for newly_obs_losses in range(0, total_prior_obs_losses+1):
            # All the observed losses may be new.
            total_loss_vars = total_prior_obs_losses + 1  # +1 for the lhs
            non_newly_obs_losses = total_prior_obs_losses - newly_obs_losses

            newly_obs_l_idx = total_loss_vars - 1 - 1  # -1 for lhs and -1 for 0-indexing
            # This is basically idx of loss before the loss being computed.
            # Since we are computing current loss, the previous one must have
            # been observed. Think of this as the last observed loss including
            # newly observed loss.

            newly_obs_s_idx = T-1

            queries.append(
                QEQuery(f"L_{total_loss_vars-1}", flatten([v.I, v.L[total_loss_vars:]]),
                        non_newly_obs_losses, T-2, False, False, newly_obs_s_idx,
                        newly_obs_l_idx,))
            # queries.append(
            #     QEQuery(f"L_{total_loss_vars-1}", flatten([v.I, v.L[total_loss_vars:], v.C, v.B]),
            #             non_newly_obs_losses, T-2, False, False, newly_obs_s_idx,
            #             newly_obs_l_idx,))

            # No sim needed with discretized network path
            # queries.append(
            #     QEQuery(f"L_{total_loss_vars-1}", flatten([v.I, v.L[total_loss_vars:]]),
            #             non_newly_obs_losses, T-2, True, False, newly_obs_s_idx,
            #             newly_obs_l_idx,))

    # Currently not supporting max sending rate calc with discretized
    # network path.
    # for st in range(1, T):
    #     # inflight defined as unacked and not inferred as lost should be known
    #     # to the CCA anyway.

    #     # This is for A - L - S (i.e., inflight).
    #     # queries.append(QEQuery(
    #     #     f"L_{T-1}", flatten([v.I, v.L[st:-1], v.C, v.B]), st))

    #     queries.append(QEQuery(
    #         f"A_{T-1}_{queue_tol_bdp}",
    #         flatten([v.I, v.L[st:], v.S[-1]]), st, T-2))
    #     # queries.append(QEQuery(
    #     #     f"A_{T-1}_{queue_tol_bdp}",
    #     #     flatten([v.I, v.L[st:], v.C, v.B, v.S[-1]]), st, T-2))

    # Debug
    # run_query_parallel(T, get_string_list(queries[0]))
    # sys.exit(1)

    print("Total queries: ", len(queries))

    os.makedirs(OUTPUT_DIR, exist_ok=True)
    run_all_queries(T, queries)
    # transpile_all(T, queries)

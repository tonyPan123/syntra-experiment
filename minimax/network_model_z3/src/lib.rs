use log::{debug, error, trace};
use num_traits::ToPrimitive;
use polars::series::Series;
use polars::{frame::DataFrame, prelude::NamedFrom};
use serde::Serialize;
use std::collections::{HashMap, VecDeque};
use std::fmt::{Display, Formatter};
use std::thread;
use z3::ast::Ast;

use cc_common::*;
use ds::*;

// type SetValueFn<'ctx> = Rc<Box<dyn Fn(&'ctx z3::Context, i64) -> z3::ast::Bool<'ctx>>> + 'ctx;
// trait SetValueFnTrait<'a>: for<'ctx> Fn(&'ctx z3::Context, i64) -> z3::ast::Bool<'ctx> + 'a {}
// type SetValueFn<'a> = Rc<dyn SetValueFnTrait<'a>>;

// type SetValueFn<'a, 'ctx> = &'a dyn Fn(&'ctx z3::Context, i64) -> z3::ast::Bool<'ctx>;
// type GetFeasibleValueFn<'a> = &'a dyn Fn(&z3::Solver) -> i64;

pub type SetRealValueFn<'a, 'ctx> =
    &'a dyn Fn(&'ctx z3::Context, RealNumRep) -> z3::ast::Bool<'ctx>;
pub type GetFeasibleRealValueFn<'a> = &'a dyn Fn(&z3::Solver) -> RealNumRep;

// type Predicate<'a> = Box<dyn Fn(i64) -> bool>;

// https://rust-lang.github.io/rfcs/3216-closure-lifetime-binder.html
// https://stackoverflow.com/questions/31403723/how-to-declare-a-higher-ranked-lifetime-for-a-closure-argument
// https://doc.rust-lang.org/book/ch19-05-advanced-functions-and-closures.html
fn binary_search_int<P>(
    lo_real: RealNumRep,
    hi_real: RealNumRep,
    minimize: bool,
    pred: P,
) -> Option<RealNumRep>
where
    P: for<'a> Fn(RealNumRep) -> bool,
{
    // https://www.topcoder.com/thrive/articles/Binary+Search
    // Find minimum (or maximum) value of var in range [lo, hi] for which
    // the predicate is true.

    assert_eq!(*lo_real.denom(), 1);
    assert_eq!(*hi_real.denom(), 1);

    let mut lo = *lo_real.numer();
    let mut hi = *hi_real.numer();

    if minimize {
        while hi > lo {
            let mid = lo + (hi - lo) / 2;
            if pred(mid.into()) {
                hi = mid;
            } else {
                lo = mid + 1;
            }
        }
    } else {
        while hi > lo {
            let mid = lo + (hi - lo + 1) / 2;
            if pred(mid.into()) {
                lo = mid;
            } else {
                hi = mid - 1;
            }
        }
    }

    if pred(lo.into()) {
        Some(lo.into())
    } else {
        None
    }
}

const SIMPLE_DEN: RealNumInt = 1 << 10;
fn simplify_down(x: RealNumRep) -> RealNumRep {
    let big = x * SIMPLE_DEN;
    let round = big.floor();
    round / SIMPLE_DEN
}

fn simplify_up(x: RealNumRep) -> RealNumRep {
    let big = x * SIMPLE_DEN;
    let round = big.ceil();
    round / SIMPLE_DEN
}

fn binary_search_real<P>(
    mut lo: RealNumRep,
    mut hi: RealNumRep,
    err: RealNumRep,
    minimize: bool,
    pred: P,
) -> Option<RealNumRep>
where
    P: for<'a> Fn(RealNumRep) -> bool,
{
    if minimize {
        if pred(lo) {
            return Some(lo);
        }

        while hi - lo > err {
            let mid = simplify_down((lo + hi) / 2);
            if pred(mid) {
                hi = mid;
            } else {
                lo = mid;
            }
        }

        if pred(hi) {
            Some(hi)
        } else {
            None
        }
    } else {
        if pred(hi) {
            return Some(hi);
        }

        while hi - lo > err {
            // Simplify up or down doesn't matter here. Just keeping up to keep
            // symmetry with the int case.
            let mid = simplify_up((lo + hi) / 2);
            if pred(mid) {
                lo = mid;
            } else {
                hi = mid;
            }
        }

        if pred(lo) {
            Some(lo)
        } else {
            None
        }
    }
}

fn vec_and<'a>(ctx: &'a z3::Context, args: Vec<z3::ast::Bool<'a>>) -> z3::ast::Bool<'a> {
    let arg_refs: Vec<&z3::ast::Bool<'_>> = args.iter().collect();
    z3::ast::Bool::and(ctx, arg_refs.as_slice())
}

fn convert_realval_to_z3(ctx: &z3::Context, value: RealNumRep) -> z3::ast::Real {
    #[allow(clippy::unnecessary_cast)]
    let num = *value.numer() as i32;
    #[allow(clippy::unnecessary_cast)]
    let den = *value.denom() as i32;
    z3::ast::Real::from_real(ctx, num, den)
}

fn fix_real<'a>(ctx: &'a z3::Context, value: RealNumRep, name: &String) -> z3::ast::Bool<'a> {
    let sort_const = z3::ast::Real::new_const(ctx, name.as_ref());
    let value_const = convert_realval_to_z3(ctx, value);
    return sort_const._eq(&value_const);
}

fn fix_ast_real<'a>(
    ctx: &'a z3::Context,
    value: RealNumRep,
    ast: &'a z3::ast::Dynamic,
) -> z3::ast::Bool<'a> {
    let value_const = convert_realval_to_z3(ctx, value);
    return ast._eq(&value_const.into());
}

fn fix_bool<'a>(ctx: &'a z3::Context, value: bool, name: &String) -> z3::ast::Bool<'a> {
    let sort_const = z3::ast::Bool::new_const(ctx, name.as_ref());
    let value_const = z3::ast::Bool::from_bool(ctx, value);
    return sort_const._eq(&value_const);
}

fn parse_qdel(ctx: &z3::Context, m: &z3::Model, n_obs: usize) -> RealNumRep {
    let names_vec: Vec<String> = (0..FEASIBLE_SIZE)
        .map(|idx| format!("qdel_{},{}", n_obs, idx))
        .collect();
    let var_vec: Vec<z3::ast::Dynamic> = names_vec
        .iter()
        .map(|x| z3::ast::Bool::new_const(ctx, x.clone()).into())
        .collect();
    let var_ref_vec: Vec<&z3::ast::Dynamic> = var_vec.iter().collect();
    let values = NetworkModelZ3::get_model_value_vec(m, var_ref_vec);
    let qdel_val = values.iter().position(|&x| x == 1.into());

    ((qdel_val.unwrap_or(FEASIBLE_SIZE)) as RealNumInt).into()
}

struct BinarySearchDetails<'a, 'ctx> {
    // https://stackoverflow.com/questions/27831944/how-do-i-store-a-closure-in-a-struct-in-rust
    name: &'a String,
    feasible: Option<RealNumRep>,
    lo: RealNumRep,
    hi: RealNumRep,
    set_value: SetRealValueFn<'a, 'ctx>,
    get_feasible_closure: GetFeasibleRealValueFn<'a>,
    use_int: bool,
}

impl BinarySearchDetails<'_, '_> {
    fn parse_feasible(&self, solver: &z3::Solver) -> RealNumRep {
        if self.feasible.is_some() {
            self.feasible.unwrap()
        } else {
            (*self.get_feasible_closure)(solver)
        }
    }
}

impl std::fmt::Debug for BinarySearchDetails<'_, '_> {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        f.debug_struct("BinarySearchDetails")
            .field("name", &self.name)
            .field("feasible", &self.feasible)
            .field("lo", &self.lo)
            .field("hi", &self.hi)
            .finish()
    }
}

// ------------------------------------------------------------------------------------------
// Board/History/State using observations (as proxy for belief representation)
#[derive(Copy, Clone, Debug, PartialEq, Eq, Hash, Serialize)]
pub struct ObservationZ3 {
    #[serde(with = "serde_real")]
    pub a: RealNumRep, // cum. bytes arrived
    #[serde(with = "serde_real")]
    pub s: RealNumRep, // cum. bytes serviced
    #[serde(with = "serde_real")]
    pub ld: RealNumRep, // cum. bytes detected as lost
    #[serde(with = "serde_real")]
    pub qdel: RealNumRep, // inst. queueing delay
}

impl Display for ObservationZ3 {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "a={:.2}, s={:.2}, ld={:.2}, qdel={:.2}",
            self.a.to_f64().unwrap(),
            self.s.to_f64().unwrap(),
            self.ld.to_f64().unwrap(),
            self.qdel
        )
    }
}

impl Observation for ObservationZ3 {
    fn get_s(&self) -> RealNumRep {
        self.s
    }

    fn get_qdel(&self) -> usize {
        self.qdel.to_usize().unwrap()
    }

    fn get_ld(&self) -> RealNumRep {
        self.ld
    }

    fn get_a(&self) -> RealNumRep {
        self.a
    }
}

#[derive(Clone, PartialEq, Debug, Eq, Hash, Copy, Serialize)]
pub struct NetworkActionZ3 {
    #[serde(with = "serde_real")]
    pub ld: RealNumRep,
    #[serde(with = "serde_real")]
    pub s: RealNumRep,
    #[serde(with = "serde_real")]
    pub qdel: RealNumRep,
}

impl NetworkAction for NetworkActionZ3 {}

impl Display for NetworkActionZ3 {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "s={:.2}, ld={:.2}, qdel={:.2}",
            self.s.to_f64().unwrap(),
            self.ld.to_f64().unwrap(),
            self.qdel
        )
    }
}

#[derive(Clone, Debug)]
pub struct NetworkModelZ3<'a> {
    ctx: &'a z3::Context,
    feasible: z3::ast::Bool<'a>,
    solver: Option<z3::Solver<'a>>,
    smt2: String,
    parallel_binary_search: bool,
}

impl<'nm> NetworkModelZ3<'nm> {
    pub fn new(ctx: &'nm z3::Context, parallel_binary_search: bool) -> Self {
        let smt2 = read_feasible_str();
        let feasible = read_feasible(ctx);
        NetworkModelZ3 {
            ctx,
            feasible,
            solver: None,
            smt2,
            parallel_binary_search,
        }
    }

    fn get_model_value(m: &z3::Model, var: &z3::ast::Dynamic) -> RealNumRep {
        let valuation = m.eval(var, false).unwrap();
        let ret = match valuation.sort_kind() {
            z3::SortKind::Real => {
                let nd = valuation.as_real().unwrap().as_real().unwrap();
                RealNumRep::new(nd.0 as RealNumInt, nd.1 as RealNumInt)
            }
            z3::SortKind::Int => {
                (valuation.as_int().unwrap().as_i64().unwrap() as RealNumInt).into()
            }
            z3::SortKind::Bool => {
                (valuation.as_bool().unwrap().as_bool().unwrap() as RealNumInt).into()
            }
            _ => panic!("Unexpected sort kind"),
        };
        // info!("Converted {:?} to {:?} for {:?}", valuation, ret, var);
        ret
    }

    fn get_model_value_vec(m: &z3::Model, var_vec: Vec<&z3::ast::Dynamic>) -> Vec<RealNumRep> {
        let mut ret = Vec::new();
        for v in var_vec.iter() {
            ret.push(NetworkModelZ3::get_model_value(m, v));
        }
        ret
    }

    fn _solver_model_to_df(&self, m: &z3::Model) -> String {
        // TODO: Reduce calls to this. Only parse what is needed.
        let vars = ["A", "Ld", "L", "S", "I"];
        let mut vec_series = Vec::new();
        vec_series.push(Series::new("t", 0..(FEASIBLE_SIZE as i64)));

        for v in vars.iter() {
            let names_vec: Vec<String> =
                (0..FEASIBLE_SIZE).map(|idx| format!("{v}_{idx}")).collect();
            let var_vec: Vec<z3::ast::Dynamic> = names_vec
                .iter()
                .map(|x| z3::ast::Real::new_const(self.ctx, x.clone()).into())
                .collect();
            let var_ref_vec: Vec<&z3::ast::Dynamic> = var_vec.iter().collect();
            let values = NetworkModelZ3::get_model_value_vec(m, var_ref_vec);
            let float_vals: Vec<f64> = values.iter().map(|x| x.to_f64().unwrap()).collect();
            vec_series.push(Series::new(v, float_vals));
            // let var = z3::ast::Real::new_const(self.ctx, v);
            // let val = get_model_value(m, var);
        }

        let mut qdel_values_vec = Vec::new();
        for t in 0..FEASIBLE_SIZE {
            let names_vec: Vec<String> = (0..FEASIBLE_SIZE)
                .map(|idx| format!("qdel_{},{}", t, idx))
                .collect();
            let var_vec: Vec<z3::ast::Dynamic> = names_vec
                .iter()
                .map(|x| z3::ast::Bool::new_const(self.ctx, x.clone()).into())
                .collect();
            let var_ref_vec: Vec<&z3::ast::Dynamic> = var_vec.iter().collect();
            let values = NetworkModelZ3::get_model_value_vec(m, var_ref_vec);
            let qdel_val = values.iter().position(|&x| x == 1.into());
            let qdel_float = match qdel_val {
                Some(v) => v as f64,
                None => f64::NAN,
            };
            qdel_values_vec.push(qdel_float);
        }
        vec_series.push(Series::new("qdel", qdel_values_vec));

        let df_res = DataFrame::new(vec_series);
        let df = df_res.unwrap();
        format!("{:?}", df)
    }

    fn get_fresh_solver(&self) -> z3::Solver<'nm> {
        // TODO: see if it makes sense to cache solver even across different histories.
        let solver = z3::Solver::new(self.ctx);
        solver.assert(&self.feasible);
        solver
    }

    fn get_cached_solver(&self) -> &z3::Solver<'_> {
        self.solver.as_ref().unwrap()
    }

    fn reset_cached_solver(&mut self) {
        let solver = self.get_fresh_solver();
        self.solver = Some(solver);
    }

    fn fix_history_constr<'a>(
        ctx: &'a z3::Context,
        history: &[ObservationZ3],
        move_cca: &Option<CCAAction>,
    ) -> z3::ast::Bool<'a> {
        let mut constrs: Vec<z3::ast::Bool<'_>> = Vec::new();
        let t_max = history.len();

        for (i, h) in history.iter().enumerate() {
            constrs.push(fix_real(ctx, h.a, &format!("A_{}", i)));
            constrs.push(fix_real(ctx, h.ld, &format!("Ld_{}", i)));
            constrs.push(fix_real(ctx, h.s, &format!("S_{}", i)));

            for dt in 0..FEASIBLE_SIZE {
                constrs.push(fix_bool(
                    ctx,
                    h.qdel == (dt as RealNumInt).into(),
                    &format!("qdel_{},{}", i, dt),
                ));
            }
        }
        if move_cca.is_some() {
            let a_last = history.last().unwrap().a + move_cca.as_ref().unwrap().rate;
            // debug!("Fixing A_{} to {}", t_max, a_last);
            if a_last < 0.into() {
                panic!("Some overflow? Ideally rust should panic on overflow.");
            }
            constrs.push(fix_real(ctx, a_last, &format!("A_{}", t_max)));
        }
        // The constrs vector will be dropped at the end of the function.
        // Will that also free the corresponding constrs in C land?
        // TODO: see if we need to explicitly keep around the constraints or just keeping the conjunction suffices.
        // Ideally we want the constraints to be freed once the conjunction is dropped. Will that happen?
        vec_and(ctx, constrs)
    }

    #[allow(clippy::too_many_arguments)]
    fn binary_search<'ctx>(
        ctx: &'ctx z3::Context,
        lo: RealNumRep,
        hi: RealNumRep,
        minimize: bool,
        sat: bool,
        set_value: SetRealValueFn<'_, 'ctx>,
        solver: &z3::Solver<'_>,
        use_int: bool,
        // additional_constr: Option<&z3::ast::Bool<'_>>,
    ) -> Option<RealNumRep> {
        let start: std::time::Instant = std::time::Instant::now();
        // let base: &z3::Solver<'ctx> = self.get_cached_solver();
        // base.assert(&additional_constr.unwrap_or(&z3::ast::Bool::from_bool(self.ctx, true)));
        // base.assert(self.feasible); // get_solver already asserts this.
        // trace!("Base solver {:?}", base);
        // trace!("Base assertions {:?}", base.get_assertions());
        // trace!("Additional constr: {:?}", additional_constr);
        debug!(
            "Binary search [lo: {}, hi: {}, minimize: {}]",
            lo, hi, minimize
        );

        let check_mid = |mid| {
            // let s: z3::Solver<'ctx> = base.clone();
            let s = solver;
            s.push();
            let set_constr = set_value(ctx, mid);
            trace!("Checking: {:?}", set_constr);
            s.assert(&set_constr);
            // trace!("Checking {}", mid);
            let now = std::time::Instant::now();
            let ret = s.check();
            trace!("Ret {:?} in {:.2?}", ret, now.elapsed());
            // if mid == (LARGEST_NUM / 2) as i64 && ret == z3::SatResult::Sat {
            //     let m = s.get_model();
            //     trace!("Model \n {}", self.solver_model_to_df(&m.unwrap()));
            // }
            s.pop(1);
            if sat {
                ret == z3::SatResult::Sat
            } else {
                ret == z3::SatResult::Unsat
            }
        };
        let pred = Box::new(check_mid);
        // debug!("Binary search setup time: {:.2?}", start.elapsed());
        // let now = std::time::Instant::now();

        let ret = if use_int {
            binary_search_int(lo, hi, minimize, pred)
        } else {
            binary_search_real(lo, hi, ERR, minimize, pred)
        };
        // debug!("Binary search exec time: {:.2?}", now.elapsed());
        debug!(
            "Binary search returned {:?} in {:.2?}",
            ret,
            start.elapsed()
        );
        ret
    }

    fn get_min_max_binary_search<'ctx>(
        ctx: &'ctx z3::Context,
        feasible: RealNumRep,
        lo: RealNumRep,
        hi: RealNumRep,
        set_value: SetRealValueFn<'_, 'ctx>,
        solver: &z3::Solver<'ctx>,
        use_int: bool,
        // additional_constr: Option<&z3::ast::Bool<'ctx>>,
    ) -> (Option<RealNumRep>, Option<RealNumRep>) {
        // The plus one and minus 1 as there could be rounding errors in
        // interpreting feasible.
        let min_val = NetworkModelZ3::binary_search(
            ctx, lo, feasible, true, true, set_value, solver, use_int,
            // additional_constr,
        );
        let max_val = NetworkModelZ3::binary_search(
            ctx, feasible, hi, false, true, set_value, solver, use_int,
            // additional_constr,
        );
        let ret = (min_val, max_val);
        debug!("Min max binary search returning: {:?}", ret);
        ret
    }

    fn one_by_one_multi_var_binary_search<'s, 'ctx>(
        &'ctx self,
        mut vars: VecDeque<&'ctx BinarySearchDetails<'_, 'ctx>>,
        fixed_values: HashMap<&'s String, RealNumRep>,
        solver: &z3::Solver<'ctx>,
        // fixed_constr: &z3::ast::Bool<'ctx>,
    ) -> Vec<HashMap<&'s String, RealNumRep>>
    where
        'ctx: 's,
    {
        if vars.is_empty() {
            return vec![fixed_values];
        }
        let bsd = vars.pop_front().unwrap();
        let feasible = bsd.parse_feasible(solver);
        let ctx = solver.get_context();
        let (min_v, max_v) = NetworkModelZ3::get_min_max_binary_search(
            ctx,
            feasible,
            bsd.lo,
            bsd.hi,
            bsd.set_value,
            solver,
            bsd.use_int,
            // Some(&fixed_constr),
        );

        // let fix_min_constr = z3::ast::Bool::and(
        //     self.ctx,
        //     &[
        //         fixed_constr,
        //         &(bsd.set_value)(self.ctx, min_v.unwrap()),
        //     ],
        // );
        if min_v.is_none() || max_v.is_none() {
            error!("BSD: {:?}", bsd);
            error!("Solver: {:?}", solver.get_assertions());
            // Since this function is not part of CCState anymore
            // error!("History: {:?}", self.get_relevant_history());
            panic!("Expect non-null values for min_v and max_v");
        }

        let fix_min_constr = &(bsd.set_value)(self.ctx, min_v.unwrap());
        let mut fix_min_values = fixed_values.clone();
        fix_min_values.insert(bsd.name, min_v.unwrap());
        solver.push();
        // debug!("Solver push: {:?}", fix_min_constr);
        solver.assert(fix_min_constr);
        let h_min = self.one_by_one_multi_var_binary_search(vars.clone(), fix_min_values, solver);
        // debug!("Solver pop: {:?}", fix_min_constr);
        solver.pop(1);

        if min_v.unwrap() == max_v.unwrap() {
            // Do not repeat the entire search tree if there is only one
            // feasible value for the variable.
            return h_min;
        }

        // let fix_max_constr = z3::ast::Bool::and(
        //     self.ctx,
        //     &[
        //         fixed_constr,
        //         &(bsd.set_value)(self.ctx, max_v.unwrap()),
        //     ],
        // );
        let fix_max_constr = &(bsd.set_value)(self.ctx, max_v.unwrap());
        let mut fix_max_values = fixed_values.clone();
        fix_max_values.insert(bsd.name, max_v.unwrap());
        solver.push();
        solver.assert(fix_max_constr);
        let h_max = self.one_by_one_multi_var_binary_search(vars.clone(), fix_max_values, solver);
        solver.pop(1);
        [h_min, h_max].concat()
    }

    // fn get_feasible_model(&self, fixed_constr: &z3::ast::Bool, solver: z3::Solver) -> z3::Model {
    //     let s = self.get_cached_solver();
    //     // s.assert(&self.feasible); // get_solver already does this.
    //     s.assert(fixed_constr);
    //     let ret = s.check();
    //     assert!(ret == z3::SatResult::Sat);
    //     return s.get_model().unwrap();
    // }

    fn fix_given_history_in_solver(
        history: &[ObservationZ3],
        move_cca: &Option<CCAAction>,
        s: &z3::Solver,
    ) -> usize {
        debug!("Fixing history: {:?}", history);
        let n_val = history.len();
        let ctx = s.get_context();
        let fixed_history = NetworkModelZ3::fix_history_constr(ctx, history, move_cca);
        s.assert(&fixed_history);
        n_val
    }

    fn _fix_history_and_get_model<'ctx>(
        &self,
        relevant_history: &[ObservationZ3],
        move_cca: &Option<CCAAction>,
        s: &z3::Solver<'ctx>,
    ) -> z3::Model<'ctx> {
        NetworkModelZ3::fix_given_history_in_solver(relevant_history, move_cca, s);
        s.check();
        let m = s.get_model();
        if let Some(inner_m) = m {
            inner_m
        } else {
            self._debug_infeasible_history(relevant_history, move_cca, s);
            panic!();
        }
    }

    fn _debug_infeasible_history(
        &self,
        relevant_history: &[ObservationZ3],
        move_cca: &Option<CCAAction>,
        s: &z3::Solver,
    ) {
        // error!("history: {:?}", self.history);
        // error!("history_stack: {:?}", self.history_stack);
        error!("relevant_history: {:?}", relevant_history);
        error!("move_cca: {:?}", move_cca);
        error!("Solver assertions:\n{:?}", s.get_assertions());
        error!("Solver smt:\n{}", s.to_smt2());
        panic!("Infeasible history");
    }

    fn debug_infeasible_history_cm(s: &z3::Solver) {
        error!("Solver assertions:\n{:?}", s.get_assertions());
        error!("Solver smt:\n{}", s.to_smt2());
        panic!("Infeasible history");
    }

    fn try_get_simple_feasible_real(s: &z3::Solver, v: &z3::ast::Dynamic) -> RealNumRep {
        let ctx = s.get_context();
        let sat = s.check();
        if sat == z3::SatResult::Unsat {
            NetworkModelZ3::debug_infeasible_history_cm(s);
            panic!();
        }
        let m = s.get_model().unwrap();
        let val = NetworkModelZ3::get_model_value(&m, v);

        let attempt = |try_val| -> bool {
            s.push();
            s.assert(&fix_real(ctx, try_val, &v.decl().name()));
            let sat = s.check();
            s.pop(1);
            sat == z3::SatResult::Sat
        };

        let v1 = simplify_down(val);
        let v2 = simplify_up(val);
        if attempt(v1) {
            v1
        } else if attempt(v2) {
            v2
        } else {
            val
        }
    }

    fn compute_belief_bounds_parallel(
        lh: ObservationZ3,
        smt2: &str,
        relevant_history: &[ObservationZ3],
        move_cca: &Option<CCAAction>,
    ) -> BeliefBounds {
        // fn compute_belief_bounds_parallel(&self) -> BeliefBounds {

        let smt2_c = smt2.to_string();
        let rh_c = relevant_history.to_vec();
        let mc_c = *move_cca;
        let future_c = thread::spawn(move || {
            let cfg = z3::Config::new();
            let ctx = z3::Context::new(&cfg);
            let s = z3::Solver::new(&ctx);
            s.from_string(smt2_c);

            NetworkModelZ3::fix_given_history_in_solver(&rh_c, &mc_c, &s);
            let c_ast: z3::ast::Dynamic = z3::ast::Real::new_const(&ctx, "C").into();
            let c_feasible = NetworkModelZ3::try_get_simple_feasible_real(&s, &c_ast);
            // let c_feasible = NetworkModel::get_model_value(&m, &c_ast);
            let set_c_closure = |ctx, v| fix_real(ctx, v, &"C".to_string());
            let (min_c, max_c) = NetworkModelZ3::get_min_max_binary_search(
                &ctx,
                c_feasible,
                0.into(),
                LARGEST_BW.into(),
                &set_c_closure,
                &s,
                false,
                // Some(&fixed_history),
            );
            (min_c, max_c)
        });

        let smt2_b = smt2.to_string();
        let rh_b = relevant_history.to_vec();
        let mc_b = *move_cca;
        let future_b = thread::spawn(move || {
            let cfg = z3::Config::new();
            let ctx = z3::Context::new(&cfg);
            let s = z3::Solver::new(&ctx);
            s.from_string(smt2_b);

            NetworkModelZ3::fix_given_history_in_solver(&rh_b, &mc_b, &s);
            let b_ast: z3::ast::Dynamic = z3::ast::Real::new_const(&ctx, "B").into();
            let b_feasible = NetworkModelZ3::try_get_simple_feasible_real(&s, &b_ast);
            let set_b_closure = |ctx, v| fix_real(ctx, v, &"B".to_string());
            let (min_b, max_b) = NetworkModelZ3::get_min_max_binary_search(
                &ctx,
                b_feasible,
                0.into(),
                LARGEST_BW.into(),
                &set_b_closure,
                &s,
                false,
                // Some(&fixed_history),
            );
            (min_b, max_b)
        });

        let smt2_l = smt2.to_string();
        let rh_l = relevant_history.to_vec();
        let mc_l = *move_cca;
        let future_l = thread::spawn(move || {
            let cfg = z3::Config::new();
            let ctx = z3::Context::new(&cfg);
            let s = z3::Solver::new(&ctx);
            s.from_string(smt2_l);

            let n_obs = NetworkModelZ3::fix_given_history_in_solver(&rh_l, &mc_l, &s);
            // if = A - L - S
            assert!(n_obs > 0);
            let last = n_obs - 1;
            let l_ast: z3::ast::Dynamic =
                z3::ast::Real::new_const(&ctx, format!("L_{last}")).into();
            let l_feasible = NetworkModelZ3::try_get_simple_feasible_real(&s, &l_ast);
            let set_l_closure = |ctx, v| fix_real(ctx, v, &format!("L_{last}"));
            let (min_l, max_l) = NetworkModelZ3::get_min_max_binary_search(
                &ctx,
                l_feasible,
                lh.ld,
                lh.a - lh.s,
                &set_l_closure,
                &s,
                false,
                // Some(&fixed_history),
            );
            (min_l, max_l)
        });

        let smt2_q = smt2.to_string();
        let rh_q = relevant_history.to_vec();
        let mc_q = *move_cca;
        let future_q = thread::spawn(move || {
            let cfg = z3::Config::new();
            let ctx = z3::Context::new(&cfg);
            let s = z3::Solver::new(&ctx);
            s.from_string(smt2_q);

            let n_obs = NetworkModelZ3::fix_given_history_in_solver(&rh_q, &mc_q, &s);
            // q = A - L - I
            assert!(n_obs > 0);
            let last = n_obs - 1;
            let l_real = z3::ast::Real::new_const(&ctx, format!("L_{last}"));
            let i_real = z3::ast::Real::new_const(&ctx, format!("I_{last}"));
            let a_const = convert_realval_to_z3(&ctx, lh.a);
            let q_ast = (a_const - l_real - i_real).into();
            let q_feasible = NetworkModelZ3::try_get_simple_feasible_real(&s, &q_ast);
            let set_q_closure = |ctx, v| fix_ast_real(ctx, v, &q_ast);
            let (min_q, max_q) = NetworkModelZ3::get_min_max_binary_search(
                &ctx,
                q_feasible,
                0.into(),
                LARGEST_BW.into(), // max_b.unwrap_or(LARGEST_BW.into()),
                &set_q_closure,
                &s,
                false,
                // Some(&fixed_history),
            );
            (min_q, max_q)
        });

        let (min_c, max_c) = future_c.join().unwrap();
        let (min_b, max_b) = future_b.join().unwrap();
        let (min_l, max_l) = future_l.join().unwrap();
        let (min_q, max_q) = future_q.join().unwrap();

        BeliefBounds {
            min_c: min_c.unwrap_or(0.into()),
            max_c: max_c.unwrap_or(LARGEST_BW.into()),
            min_b: min_b.unwrap_or(0.into()),
            max_b: max_b.unwrap_or(LARGEST_BW.into()),
            min_q: min_q.unwrap_or(0.into()),
            max_q: max_q.unwrap_or(LARGEST_BW.into()),
            min_if: lh.a - max_l.unwrap() - lh.s,
            max_if: lh.a - min_l.unwrap() - lh.s,
        }
    }
}

impl<'nm> NetworkModel for NetworkModelZ3<'nm> {
    type O = ObservationZ3;
    type NA = NetworkActionZ3;

    fn compute_feasible_network_moves(
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
    ) -> Vec<Self::NA> {
        let start = std::time::Instant::now();
        let mut ret = Vec::new();
        let s = self.get_fresh_solver();
        let n_obs = NetworkModelZ3::fix_given_history_in_solver(relevant_history, move_cca, &s);
        let fixed_values = HashMap::new();
        let o = relevant_history.last().unwrap();

        let s_name = format!("S_{}", n_obs).to_string();
        let s_bsd = BinarySearchDetails {
            name: &s_name,
            feasible: None,
            lo: o.s,
            hi: o.a + move_cca.unwrap().rate,
            set_value: &|ctx, v| fix_real(ctx, v, &s_name),
            get_feasible_closure: &|s| {
                // let ret = s.check();
                // if ret == z3::SatResult::Unsat {
                //     self.debug_infeasible_history(s);
                //     panic!();
                // }
                // let m = s.get_model().unwrap();
                let s_const = z3::ast::Real::new_const(self.ctx, format!("S_{}", n_obs)).into();
                // let ret = NetworkModel::get_model_value(&m, &s_const);
                NetworkModelZ3::try_get_simple_feasible_real(s, &s_const)

                // let val = m.eval(&s_const, false);
                // let df = self.solver_model_to_df(&m);
                // let ret = df["S"].get(n_obs).unwrap().try_extract().unwrap();
                // info!("Model says {:?}, inferred {:?} for {:?}", val, ret, s_const);
            },
            use_int: false,
        };

        let ld_name = format!("Ld_{}", n_obs).to_string();
        let ld_bsd = BinarySearchDetails {
            name: &ld_name,
            feasible: None,
            lo: o.ld,
            hi: o.a + move_cca.unwrap().rate,
            set_value: &|ctx, v| fix_real(ctx, v, &ld_name),
            get_feasible_closure: &|s| {
                // s.check();
                // let m = s.get_model().unwrap();
                let ld_const = z3::ast::Real::new_const(self.ctx, format!("Ld_{}", n_obs)).into();
                // let ret = NetworkModel::get_model_value(&m, &ld_const);
                NetworkModelZ3::try_get_simple_feasible_real(s, &ld_const)
            },
            use_int: false,
        };

        let qdel_bsd = BinarySearchDetails {
            name: &"qdel".to_string(),
            feasible: None,
            lo: 0.into(),
            hi: ((FEASIBLE_SIZE + 1) as RealNumInt).into(),
            set_value: &|ctx, v| {
                assert_eq!(*v.denom(), 1);
                let mut constr_vec = Vec::new();
                for dt in 0..FEASIBLE_SIZE {
                    let v_name = format!("qdel_{},{}", n_obs, dt);
                    if dt == *v.numer() as usize {
                        constr_vec.push(fix_bool(ctx, true, &v_name));
                    } else {
                        constr_vec.push(fix_bool(ctx, false, &v_name));
                    }
                }
                vec_and(ctx, constr_vec)
            },
            get_feasible_closure: &|s| {
                s.check();
                let m = s.get_model().unwrap();
                parse_qdel(self.ctx, &m, n_obs)
            },
            use_int: true,
        };

        // Search through multiple possible S values

        // TODO: decide if we want to fix an interpolation distance? or number
        // of points? The number of points affects speed, and the distance
        // affects quality.

        let feasible = s_bsd.parse_feasible(&s);
        let ctx = s.get_context();
        let (min_v, max_v) = NetworkModelZ3::get_min_max_binary_search(
            ctx,
            feasible,
            s_bsd.lo,
            s_bsd.hi,
            s_bsd.set_value,
            &s,
            s_bsd.use_int,
            // Some(&fixed_constr),
        );
        assert!(min_v.is_some() && max_v.is_some());

        let mut this_n_interp: RealNumRep = (N_INTERP as RealNumInt).into();
        if min_v.unwrap() == max_v.unwrap() {
            this_n_interp = 1.into();
        }
        let interp_distance: RealNumRep = (max_v.unwrap() - min_v.unwrap()) / this_n_interp;

        let mut bs_ret = vec![];
        let vars = VecDeque::from(vec![&ld_bsd, &qdel_bsd]);
        for i in 0..N_INTERP {
            let s_val: RealNumRep = min_v.unwrap() + (interp_distance * (i as i32));
            let mut this_fixed_values = fixed_values.clone();
            this_fixed_values.insert(s_bsd.name, s_val);
            let fix_val_constr = &(s_bsd.set_value)(self.ctx, s_val);
            s.push();
            s.assert(fix_val_constr);
            let h = self.one_by_one_multi_var_binary_search(vars.clone(), this_fixed_values, &s);
            s.pop(1);
            bs_ret.extend(h);
        }

        // Before interpolating S.
        // let vars = VecDeque::from(vec![&s_bsd, &ld_bsd, &qdel_bsd]);
        // let bs_ret = self.one_by_one_multi_var_binary_search(vars, fixed_values, &s);
        // for item in bs_ret.iter() {
        //     ret.push(CCMove::Network(NetworkAction {
        //         s: item[&s_bsd.name],
        //         ld: item[&ld_bsd.name],
        //         qdel: item[&qdel_bsd.name],
        //     }));
        // }

        for item in bs_ret.iter() {
            ret.push(NetworkActionZ3 {
                s: item[&s_bsd.name],
                ld: item[&ld_bsd.name],
                qdel: item[&qdel_bsd.name],
            });
        }

        debug!(
            "Network choices:\n{:?}\n in {:.2?} time.",
            ret,
            start.elapsed()
        );
        ret
    }

    fn compute_belief_bounds(
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
    ) -> BeliefBounds {
        if self.parallel_binary_search {
            let lh = *relevant_history.last().unwrap();
            let smt2 = &self.smt2;
            return NetworkModelZ3::compute_belief_bounds_parallel(
                lh,
                smt2,
                relevant_history,
                move_cca,
            );
        }

        // If we want f64 to Real, we can infer num and den as follows:
        // https://users.rust-lang.org/t/split-f64-into-numerator-denominator/66825
        // TODO: Write function to get value from string.
        let s = self.get_fresh_solver();
        let ctx = s.get_context();
        // self.fix_history_and_get_model(&s); // TODO: see if we should invoke check or not.
        let n_obs = NetworkModelZ3::fix_given_history_in_solver(relevant_history, move_cca, &s);
        let lh = *relevant_history.last().unwrap();

        // let start: std::time::Instant = std::time::Instant::now();
        // let (min_c, max_c) = if rh.len() == NC_HISTORY_SIZE {
        //     let c_intervals = compute_c_beliefs(relevant_history);
        //     let min_c = c_intervals.min();
        //     let max_c = c_intervals.max();
        //     info!("Using NC, took {:.2?}", start.elapsed());
        //     (min_c, max_c)
        // } else {
        //     let c_ast: z3::ast::Dynamic = z3::ast::Real::new_const(self.ctx, "C").into();
        //     let c_feasible = NetworkModel::try_get_simple_feasible_real(&s, &c_ast);
        //     // let c_feasible = NetworkModel::get_model_value(&m, &c_ast);
        //     let set_c_closure = |ctx, v| fix_real(ctx, v, &"C".to_string());
        //     let (min_c, max_c) = NetworkModel::get_min_max_binary_search(
        //         ctx,
        //         c_feasible,
        //         0.into(),
        //         LARGEST_BW.into(),
        //         &set_c_closure,
        //         &s,
        //         false,
        //         // Some(&fixed_history),
        //     );
        //     info!("Using BS, took {:.2?}", start.elapsed());
        //     (min_c, max_c)
        // };

        let c_ast: z3::ast::Dynamic = z3::ast::Real::new_const(self.ctx, "C").into();
        let c_feasible = NetworkModelZ3::try_get_simple_feasible_real(&s, &c_ast);
        // let c_feasible = NetworkModel::get_model_value(&m, &c_ast);
        let set_c_closure = |ctx, v| fix_real(ctx, v, &"C".to_string());
        let (min_c, max_c) = NetworkModelZ3::get_min_max_binary_search(
            ctx,
            c_feasible,
            0.into(),
            LARGEST_BW.into(),
            &set_c_closure,
            &s,
            false,
            // Some(&fixed_history),
        );

        // I think all of Arc, Box, etc. require inner type T to implement Send
        // and Sync. Since ctx is !Send, we cannot share it without unsafe
        // blocks.

        // let readonly_s = Arc::new(Mutex::new(&s));
        // let handle = thread::spawn(move || {
        //     let ctx = z3::Context::new(&z3::Config::default());
        //     let s: z3::Solver = (|| {
        //         let readonly_s_locked = readonly_s.lock().unwrap();
        //         readonly_s_locked.translate(&ctx)
        //     })();
        // });

        let b_ast: z3::ast::Dynamic = z3::ast::Real::new_const(self.ctx, "B").into();
        let b_feasible = NetworkModelZ3::try_get_simple_feasible_real(&s, &b_ast);
        // let b_feasible = NetworkModel::get_model_value(&m, &b_ast);
        let set_b_closure = |ctx, v| fix_real(ctx, v, &"B".to_string());
        let (min_b, max_b) = NetworkModelZ3::get_min_max_binary_search(
            ctx,
            b_feasible,
            0.into(),
            LARGEST_BW.into(),
            &set_b_closure,
            &s,
            false,
            // Some(&fixed_history),
        );

        // if = A - L - S
        assert!(n_obs > 0);
        let last = n_obs - 1;
        let l_ast: z3::ast::Dynamic =
            z3::ast::Real::new_const(self.ctx, format!("L_{last}")).into();
        let l_feasible = NetworkModelZ3::try_get_simple_feasible_real(&s, &l_ast);
        let set_l_closure = |ctx, v| fix_real(ctx, v, &format!("L_{last}"));
        let (min_l, max_l) = NetworkModelZ3::get_min_max_binary_search(
            ctx,
            l_feasible,
            lh.ld,
            lh.a - lh.s,
            &set_l_closure,
            &s,
            false,
            // Some(&fixed_history),
        );

        // q = A - L - I
        assert!(n_obs > 0);
        let last = n_obs - 1;
        let l_real = z3::ast::Real::new_const(self.ctx, format!("L_{last}"));
        let i_real = z3::ast::Real::new_const(self.ctx, format!("I_{last}"));
        let a_const = convert_realval_to_z3(self.ctx, lh.a);
        let q_ast = (a_const - l_real - i_real).into();
        let q_feasible = NetworkModelZ3::try_get_simple_feasible_real(&s, &q_ast);
        let set_q_closure = |ctx, v| fix_ast_real(ctx, v, &q_ast);
        let (min_q, max_q) = NetworkModelZ3::get_min_max_binary_search(
            ctx,
            q_feasible,
            0.into(),
            max_b.unwrap_or(LARGEST_BW.into()),
            &set_q_closure,
            &s,
            false,
            // Some(&fixed_history),
        );

        // The infimum is defined but not the minimum. E.g., B > 0. So just
        // pass 0 when min is None. Likewise, supremum might be infinity, so we
        // just replace with some fixed high value.
        BeliefBounds {
            min_c: min_c.unwrap_or(0.into()),
            max_c: max_c.unwrap_or(LARGEST_BW.into()),
            min_b: min_b.unwrap_or(0.into()),
            max_b: max_b.unwrap_or(LARGEST_BW.into()),
            min_q: min_q.unwrap_or(0.into()),
            max_q: max_q.unwrap_or(LARGEST_BW.into()),
            min_if: lh.a - max_l.unwrap() - lh.s,
            max_if: lh.a - min_l.unwrap() - lh.s,
        }
    }

    fn compute_max_allowed_rate(
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
        loss_tolerance_abs: RealNumRep,
        delay_tolerance_frac: RealNumRep,
        measurement_interval: u32,
    ) -> Option<RealNumRep> {
        // Get max rate that the CCA can send at under an allowed loss
        // tolerance.

        // We can also query for a rate that lasts for more than one Rm
        // duration. For this, we will need to cache the moves. Don't cache
        // moves, just compute rates for different horizons and hopefully, the
        // search will pick a good combination of rates.

        let s = self.get_fresh_solver();
        let ctx = self.ctx;
        let n_obs = relevant_history.len();

        // Truncate history, to measure over longer intervals.
        // n_obs + measurement_interval can be at most FEASIBLE_SIZE
        assert!(measurement_interval <= FEASIBLE_SIZE as u32);
        let keep = std::cmp::min(FEASIBLE_SIZE as u32 - measurement_interval, n_obs as u32);
        let history: Vec<ObservationZ3> = relevant_history
            .iter()
            .skip(n_obs - keep as usize)
            .copied()
            .collect();
        // let history = relevant_history.as_slice()[n_obs - keep as usize..n_obs].to_vec();

        let first = history.len() as i32 - 1;
        let last = history.len() as i32 + measurement_interval as i32 - 1;
        NetworkModelZ3::fix_given_history_in_solver(&history, move_cca, &s);
        // let n_obs = self.fix_history_in_solver(&s);

        assert!(first >= 0);
        assert!(last > 0 && last > first);

        // Loss
        let lt = z3::ast::Real::new_const(ctx, format!("L_{last}").as_ref());
        let lt1 = z3::ast::Real::new_const(ctx, format!("L_{first}").as_ref());
        let loss_const =
            convert_realval_to_z3(ctx, loss_tolerance_abs * measurement_interval as i32);
        let high_loss = &(lt - lt1).gt(&loss_const);

        // Queue
        let queue_frac = convert_realval_to_z3(ctx, delay_tolerance_frac);
        let c = z3::ast::Real::new_const(ctx, "C");
        let queue_const = z3::ast::Real::mul(ctx, &[c, queue_frac]);
        let mut constr_list = Vec::new();
        for i in first + 1..last + 1 {
            let at = z3::ast::Real::new_const(ctx, format!("A_{i}").as_ref());
            let lt = z3::ast::Real::new_const(ctx, format!("L_{i}").as_ref());
            let st = z3::ast::Real::new_const(ctx, format!("S_{i}").as_ref());
            constr_list.push((at - lt - st).gt(&queue_const));
        }
        let high_queue = &z3::ast::Bool::or(ctx, &constr_list);

        let not_desired_list = &[high_loss, high_queue];
        let not_desired = z3::ast::Bool::or(ctx, not_desired_list);
        s.assert(&not_desired);

        let set_rate_closure = |ctx, v| {
            let value_const = convert_realval_to_z3(ctx, v);
            let mut constr_list = Vec::new();
            for i in first + 1..last + 1 {
                let at1 = z3::ast::Real::new_const(ctx, format!("A_{}", i - 1).as_ref());
                let at = z3::ast::Real::new_const(ctx, format!("A_{i}").as_ref());
                constr_list.push((at - at1)._eq(&value_const));
            }
            z3::ast::Bool::and(ctx, &constr_list)
        };

        // The solver if sat, will output a trace where the chosen rate causes
        // high loss or delay. We want to find largest rate for which the
        // solver is unsat.
        NetworkModelZ3::binary_search(
            ctx,
            0.into(),
            LARGEST_BW.into(),
            false,
            false,
            &set_rate_closure,
            &s,
            false,
        )
    }

    fn setup_network_move_sim(&mut self, sim_ideal: bool, sim_c: RealNumRep, sim_b: RealNumRep) {
        self.reset_cached_solver();
        let s = self.get_cached_solver();
        s.assert(&fix_real(self.ctx, sim_c, &"C".to_string()));
        s.assert(&fix_real(self.ctx, sim_b, &"B".to_string()));
        if sim_ideal {
            for t in 0..FEASIBLE_SIZE {
                let s_const = z3::ast::Real::new_const(self.ctx, format!("S_{}", t));
                let i_const = z3::ast::Real::new_const(self.ctx, format!("I_{}", t));
                s.assert(&s_const._eq(&i_const));
            }
        }
    }

    fn get_network_move_sim(
        &self,
        relevant_history: &[Self::O],
        move_cca: &Option<CCAAction>,
        sim_ideal: bool,
    ) -> Option<Self::NA> {
        let s = self.get_cached_solver();
        let ctx = s.get_context();
        let n_obs = relevant_history.len();
        let last = relevant_history.last().unwrap();
        s.push();
        NetworkModelZ3::fix_given_history_in_solver(relevant_history, move_cca, s);

        // Ideal link
        let ret = if sim_ideal {
            let s_const = z3::ast::Real::new_const(self.ctx, format!("S_{n_obs}"));
            let i_const = z3::ast::Real::new_const(self.ctx, format!("I_{n_obs}"));
            s.assert(&(s_const._eq(&i_const)));
            s.check();
            let m = s.get_model().unwrap();
            let s_val = NetworkModelZ3::get_model_value(&m, &s_const.into());
            let ld_const = z3::ast::Real::new_const(self.ctx, format!("Ld_{n_obs}")).into();
            let ld = NetworkModelZ3::get_model_value(&m, &ld_const);
            let qdel = parse_qdel(self.ctx, &m, n_obs);
            Some(NetworkActionZ3 { s: s_val, ld, qdel })
        } else {
            // CBR link. Smallest S.
            let set_value =
                |ctx, v| -> z3::ast::Bool<'_> { fix_real(ctx, v, &format!("S_{n_obs}")) };
            let s_const = z3::ast::Real::new_const(self.ctx, format!("S_{n_obs}")).into();
            let s_val = NetworkModelZ3::try_get_simple_feasible_real(s, &s_const);
            let min_v =
                NetworkModelZ3::binary_search(ctx, last.s, s_val, true, true, &set_value, s, false);
            s.assert(&set_value(self.ctx, min_v.unwrap()));
            let ld_const = z3::ast::Real::new_const(self.ctx, format!("Ld_{n_obs}")).into();
            let ld = NetworkModelZ3::try_get_simple_feasible_real(s, &ld_const);
            s.assert(&fix_real(self.ctx, ld, &format!("Ld_{n_obs}")));
            s.check();
            let m = s.get_model().unwrap();
            let qdel = parse_qdel(self.ctx, &m, n_obs);
            Some(NetworkActionZ3 {
                s: min_v.unwrap(),
                ld,
                qdel,
            })
        };
        s.pop(1);
        ret
    }

    fn init(&mut self) {
        // self.reset_cached_solver();
    }

    fn get_initial_history(&self) -> Vec<Self::O> {
        vec![ObservationZ3 {
            a: 0.into(),
            s: 0.into(),
            ld: 0.into(),
            qdel: 0.into(),
        }]
    }

    fn compute_observation(&self, last: &Self::O, na: &Self::NA, move_cca: &Option<CCAAction>) -> Self::O {
        ObservationZ3 {
            a: last.a + move_cca.as_ref().unwrap().rate,
            s: na.s,
            ld: na.ld,
            qdel: na.qdel,
        }
    }
}

fn read_feasible_str() -> String {
    let fpath = format!("network_model_z3/feasible-{}.smt2", FEASIBLE_SIZE);
    std::fs::read_to_string(fpath).unwrap()
}

fn read_feasible(ctx: &z3::Context) -> z3::ast::Bool {
    let smt2 = read_feasible_str();
    let solver = z3::Solver::new(ctx);
    solver.from_string(smt2);
    let assertions = solver.get_assertions();
    let assertion_refs: Vec<&z3::ast::Bool> = assertions.iter().collect();
    return z3::ast::Bool::and(ctx, assertion_refs.as_slice());
}

#[cfg(test)]
mod tests {
    // TODO: add assertions at the end of tests so that we can use as automated
    // tests instead of manually verifying outputs.

    use env_logger::Env;

    use super::*;

    macro_rules! setup_test {
        ($network_model:ident) => {
            let ctx = z3::Context::new(&z3::Config::new());
            let mut $network_model = NetworkModelZ3::new(&ctx, false);
            $network_model.init();
        };
    }

    fn get_dummy_history() -> Vec<ObservationZ3> {
        let mut ret = Vec::new();
        for t in 0..(FEASIBLE_SIZE - 1) {
            ret.push(ObservationZ3 {
                a: (((t + 1) * 10) as i32).into(),
                s: ((t * 10) as i32).into(),
                ld: 0.into(),
                qdel: 1.into(),
            });
        }
        ret
    }

    #[test]
    fn test_binary_search() {
        env_logger::Builder::from_env(Env::default().default_filter_or("cc=trace")).init();
        setup_test!(network_model);
        let relevant_history = get_dummy_history();
        let move_cca = Some(CCAAction { rate: 10.into() });

        trace!("Relevant history: {:?}", relevant_history);
        let n_obs = relevant_history.len();
        let s = network_model.get_fresh_solver();
        let m = network_model._fix_history_and_get_model(&relevant_history, &move_cca, &s);
        let s_const = z3::ast::Real::new_const(network_model.ctx, format!("S_{}", n_obs)).into();
        let s_feasible = NetworkModelZ3::get_model_value(&m, &s_const);

        let s_name = format!("S_{}", n_obs).to_string();
        let s_bsd = BinarySearchDetails {
            name: &"S".to_string(),
            feasible: Some(s_feasible),
            lo: 0.into(),
            hi: LARGEST_BW.into(),
            set_value: &|ctx, v| fix_real(ctx, v, &s_name),
            get_feasible_closure: &|_s| panic!("NotImplemented"),
            use_int: false,
        };

        let ret = NetworkModelZ3::get_min_max_binary_search(
            s.get_context(),
            s_bsd.parse_feasible(&s),
            s_bsd.lo,
            s_bsd.hi,
            s_bsd.set_value,
            &s,
            false,
            // Some(&fixed_history),
        );
        println!("{:?}", ret);
    }

    #[test]
    fn test_binary_search_qdel() {
        env_logger::Builder::from_env(Env::default().default_filter_or("cc=trace")).init();
        setup_test!(network_model);

        let move_cca = Some(CCAAction { rate: 10.into() });
        let relevant_history = get_dummy_history();
        let n_obs = relevant_history.len();
        let s = network_model.get_fresh_solver();
        let m = network_model._fix_history_and_get_model(&relevant_history, &move_cca, &s);
        let qdel_val = parse_qdel(network_model.ctx, &m, n_obs);
        let qdel_bsd = BinarySearchDetails {
            name: &"qdel".to_string(),
            feasible: Some(qdel_val),
            lo: 0.into(),
            hi: ((FEASIBLE_SIZE + 1) as RealNumInt).into(),
            set_value: &|ctx, v| {
                assert_eq!(*v.denom(), 1);
                let mut constr_vec = Vec::new();
                for dt in 0..FEASIBLE_SIZE {
                    let v_name = format!("qdel_{},{}", n_obs, dt);
                    if dt == *v.numer() as usize {
                        constr_vec.push(fix_bool(ctx, true, &v_name));
                    } else {
                        constr_vec.push(fix_bool(ctx, false, &v_name));
                    }
                }
                vec_and(ctx, constr_vec)
            },
            get_feasible_closure: &|_s| panic!("NotImplemented"),
            use_int: true,
        };

        let ret = NetworkModelZ3::get_min_max_binary_search(
            s.get_context(),
            qdel_bsd.parse_feasible(&s),
            qdel_bsd.lo,
            qdel_bsd.hi,
            qdel_bsd.set_value,
            &s,
            qdel_bsd.use_int,
            // Some(&fixed_history),
        );
        println!("{:?}", ret);
    }
}

// TODO: figure out how to take ownership of the parsed network model and context.
// fn fill_network_model(&mut self) {
//     self.network_model = &NetworkModel::new();
// }

// fn init(&mut self) {
//     let cfg = z3::Config::new();
//     CTX = Some(z3::Context::new(&cfg));
//     let s = z3::Solver::new(&ctx);
//     let smt2 = std::fs::read_to_string("feasible.smt2").unwrap();
//     s.from_string(smt2);
//     let constrs = z3::Solver::get_assertions(&s);
//     let constr_refs: Vec<&z3::ast::Bool<'_>> = constrs.iter().map(|c|c).collect();
//     self.feasible = z3::ast::Bool::and(&ctx, constr_refs.as_slice());
//     CTX = Some(ctx);
// }

// fn get_assertions<'ctx>() -> (z3::Context, Vec<z3::ast::Bool<'ctx>>) {
//     let cfg = z3::Config::new();
//     let ctx = z3::Context::new(&cfg);
//     let s = z3::Solver::new(&ctx);
//     let smt2 = std::fs::read_to_string("feasible.smt2").unwrap();
//     s.from_string(smt2);
//     (ctx, s.get_assertions())
// }

// static mut CFG: z3::Config = z3::Config::new();
// static mut FEASIBLE: Option<Vec<z3::ast::Bool>> = None;

// fn get_solver<'ctx>() -> z3::Solver<'ctx> {
//     let cfg = z3::Config::new();
//     let ctx = z3::Context::new(&cfg);
//     let s = z3::Solver::new(&ctx);
//     match unsafe { FEASIBLE } {
//         Some(feasible) => {
//             for a in unsafe { &feasible} {
//                 s.assert(a);
//             }
//         }
//         None => {
//             let smt2 = std::fs::read_to_string("feasible.smt2").unwrap();
//             s.from_string(smt2);
//             unsafe { FEASIBLE = Some(s.get_assertions()) };
//         }
//     }
//     s
// }

// struct NetworkModel<'ctx> {
//     ctx: &'ctx z3::Context,
//     feasible: &'ctx z3::ast::Bool<'ctx>,
// }

// impl NetworkModel<'_> {
//     // pub fn new() -> Self {
//     //     let cfg = z3::Config::new();
//     //     let ctx = z3::Context::new(&cfg);
//     //     let s = z3::Solver::new(&ctx);
//     //     let smt2 = std::fs::read_to_string("feasible.smt2").unwrap();
//     //     s.from_string(smt2);
//     //     let constrs = z3::Solver::get_assertions(&s);
//     //     let constr_refs: Vec<&z3::ast::Bool<'_>> = constrs.iter().map(|c|c).collect();
//     //     let feasible = z3::ast::Bool::and(&ctx, constr_refs.as_slice());
//     //     NetworkModel {
//     //         ctx, feasible, s
//     //     }
//     // }

//     fn fill(&self) {
//         let smt2 = std::fs::read_to_string("feasible.smt2").unwrap();
//     }

//     fn get_solver(&self) -> z3::Solver {
//         let s = z3::Solver::new(&self.ctx);
//         s.assert(&self.feasible);
//         s
//     }
// }

// thread_local! (static cfg: RefCell<z3::Config> = RefCell::new(z3::Config::new()));
// thread_local! (static ctx: z3::Context = cfg.with(|x| z3::Context::new(&*x.borrow())));

// thread_local! (static CFG: z3::Config = z3::Config::new());
// thread_local! (static CTX: z3::Context = CFG.with(|x| z3::Context::new(x)));

// thread_local! (static NETORK_MODEL: NetworkModel<'static> = NetworkModel::new());

// fn main() {
//     // let ctx, feasible = get_assertions();
//     // FEASIBLE = Some(feasible);

//     let cfg = z3::Config::new();
//     let ctx = z3::Context::new(&cfg);
//     let smt2 = std::fs::read_to_string("feasible.smt2").unwrap();
//     let s = z3::Solver::new(&ctx);
//     s.from_string(smt2);
//     let constrs = z3::Solver::get_assertions(&s);
//     let constr_refs: Vec<&z3::ast::Bool<'_>> = constrs.iter().map(|c|c).collect();
//     let feasible = z3::ast::Bool::and(&ctx, constr_refs.as_slice());

//     // drop(constrs);
//     // drop(s);

//     let network_model = NetworkModel {
//         ctx: &ctx, feasible: &feasible
//     };
// }
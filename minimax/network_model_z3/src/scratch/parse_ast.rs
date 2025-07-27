// use z3::ast::Ast;

// struct MyStruct<'ctx> {
//     config: z3::Config,
//     ctx: z3::Context,
//     feasible: Vec<z3::ast::Bool<'ctx>>
// }

// fn myfun<'s>() {
//     let config = z3::Config::new();
//     let ctx: z3::Context = z3::Context::new(&config);
//     let constrs = Vec::new();
//     let mut my_struct = MyStruct {
//         config,
//         ctx,
//         feasible: constrs
//     };

//     let smt2 = std::fs::read_to_string("feasible.smt2").unwrap();
//     let dummy_ctx = z3::Context::new(&my_struct.config);
//     let solver: z3::Solver<'s> = z3::Solver::new(&dummy_ctx);
//     solver.from_string(smt2);
//     let mut this_constrs: Vec<z3::ast::Bool<'s>> = z3::Solver::get_assertions(&solver);
//     let mut tr_constrs: Vec<z3::ast::Bool<'_>> = this_constrs.iter().map(|c| c.translate(&my_struct.ctx)).collect();
//     my_struct.feasible.append(&mut tr_constrs);
// }

// fn myfun<'a>(ctx: &'a z3::Context) -> Vec<z3::ast::Bool<'a>>{
//     let s = z3::Solver::new(&ctx);
//     let assertions = s.get_assertions();
//     assertions
// }

// fn main() {
//     let config = z3::Config::new();
//     let ctx = z3::Context::new(&config);
//     let ret = myfun(&ctx);
// }

// fn myfun<'a>(ctx: &'a z3::Context) -> Vec<z3::ast::Bool<'a>>{
//     let s = z3::Solver::new(&ctx);
//     let smt2 = std::fs::read_to_string("my_constr.smt2").unwrap();
//     s.from_string(smt2);
//     let assertions = s.get_assertions();
//     assertions
// }

// fn main() {
//     let config = z3::Config::new();
//     let ctx = z3::Context::new(&config);
//     let ret = myfun(&ctx);
// }


// #[derive(Debug, PartialEq, Clone)]
// struct MyStruct<'a> {
//     ctx: &'a z3::Context,
//     feasible: &'a z3::ast::Bool<'a>,
// }

// impl MyStruct<'_> {
//     fn get_solver(&self) -> z3::Solver {
//         let solver = z3::Solver::new(&self.ctx);
//         solver.assert(&self.feasible);
//         solver
//     }
// }

// fn main () {
//     let config = z3::Config::new();
//     let ctx = z3::Context::new(&config);

//     let solver = z3::Solver::new(&ctx);
//     let smt2 = std::fs::read_to_string("feasible.smt2").unwrap();
//     solver.from_string(smt2);
//     let assertions = solver.get_assertions();
//     let assertion_refs: Vec<&z3::ast::Bool<'_>> = assertions.iter().map(|c| c).collect();
//     let feasible = z3::ast::Bool::and(&ctx, assertion_refs.as_slice());

//     let mut ms = MyStruct {
//         ctx: &ctx,
//         feasible: &feasible,
//     };

//     let new_feasible = z3::ast::Bool::new_const(&ctx, "hello");
//     ms.feasible = &new_feasible;

//     let s = ms.get_solver();
// }


// struct MyStruct<'a> {
//     ctx: z3::Context,
//     solver: z3::Solver<'a>,
// }

// fn main () {
//     let ctx = z3::Context::new(&z3::Config::new());
//     let dummy_ctx = z3::Context::new(&z3::Config::new());
//     let mut ms = MyStruct {
//         ctx: ctx,
//         solver: z3::Solver::new(&dummy_ctx),
//     };

//     ms.solver = z3::Solver::new(&ms.ctx);
// }

// struct B {

// }

// struct C<'a> {
//     b: &'a B
// }

// struct A<'a> {
//     b: B,
//     c: C<'a>
// }

// fn main () {
//     let dummy_b = B {};
//     let b = B {};
//     let c = C { b: &dummy_b };
//     let mut a = A { b, c };
//     a.c = C { b: &a.b };
// }
use core::fmt::Debug;
use core::hash::Hash;
use std::collections::HashMap;
use std::sync::{
    atomic::{AtomicBool, Ordering},
    mpsc, Arc,
};
use std::thread;
use std::time::Duration;

use cc_common::SPECULATION_SIZE;

pub trait Value: PartialOrd + PartialEq + Clone + Copy + Debug + Send {
    fn inf() -> Self;
    fn neg_inf() -> Self;
    /// Whether or not we are certain of the valuation (i.e. we are sure of the
    /// outcome)
    fn fully_known(&self) -> bool;
}

pub trait Move: Clone + PartialEq + Debug + Send {}

/// Only the components of the state that should be stored in the transposition table
pub trait TTState: Clone + Hash + Eq + PartialEq + Debug + Send {}

pub trait State: Debug + Sized {
    type M: Move;
    type V: Value;
    type T: TTState;

    /// Is it the maximizer's move next turn. Has to alternate with successive
    /// moves
    fn maximizer(&self) -> bool;
    /// Whether or not the game is over. If so, return the value
    fn game_over(&self) -> Option<Self::V>;
    /// What is the tentative valuation of this state (must be computed quickly)
    fn value(&self) -> Self::V;
    /// The best guess for the next move to be played given the transposition
    /// table. When called repeatedly, it must return `None` after finitely
    /// many calls. The finiteness must hold even across `make_move` and `pop_move`
    fn best_move_guess(&mut self, tt: &TranspositionTable<Self>) -> Option<Self::M>;
    fn best_move_sort(&mut self, tt: &TranspositionTable<Self>, tt_state: Self::T) ;

    fn make_move(&mut self, m: &Self::M);
    fn make_move_depth(&mut self, m: &Self::M, depth: u16);

    fn pop_move(&mut self);
    /// After this is called, the state should forget about whatever
    /// `best_move_guess` returned previously and return a fresh set of moves
    fn reset_moves(&mut self);
    /// Return the state that is suitable for storage in a transition table
    fn tt_state(&self) -> Self::T;
    fn chosen_move(&self, m: &Option<Self::M>, v: &Self::V);
}

pub trait Game {
    type S: State;
    fn cur_state(&self) -> &Self::S;
}

pub struct TranspositionTable<S: State> {
    /// Format: State -> ((best move, value of the state), depth at which it
    /// was evaluated). Best move may be `None` because it is either the last
    /// position or we haven't quite determined the move yet
    table: HashMap<S::T, (Option<S::M>, S::V, u16)>,
}

impl<S: State> TranspositionTable<S> {
    fn new() -> Self {
        Self {
            table: HashMap::new(),
        }
    }

    fn insert(&mut self, state: S::T, data: (Option<S::M>, S::V), depth: u16) {
        if self.table.contains_key(&state) {
            if self.table[&state].2 > depth {
                return;
            } else if self.table[&state].2 == depth {
                unreachable!("Two conflicting values found for the same state ({state:?}) at the same depth ({depth:?}): {data:?} and {:?}", self.table[&state])
            }
        }
        self.table.insert(state.clone(), (data.0, data.1, depth));
    }

    pub fn get(&self, state: &S::T) -> Option<&(Option<S::M>, S::V, u16)> {
        self.table.get(state)
    }
}

/// Search best moves for the maximizing player
pub struct Search<S: State> {
    tt: TranspositionTable<S>,
}

impl<S: State> Search<S> {
    pub fn new() -> Self {
        Self {
            tt: TranspositionTable::new(),
        }
    }

    /// Deepen the tree to the given depth. Used for iterative
    /// deepening. `alpha` (and `beta`) are the maximizer and minimizer's best
    /// score in our subtree. Only returns `None` if we ran out of time because `stop_flag` was triggered.
    fn deepen_tree(
        &mut self,
        state: &mut S,
        depth: u16,
        mut alpha: S::V,
        mut beta: S::V,
        stop_flag: Arc<AtomicBool>,
        enable_tt: bool,
    ) -> Option<S::V> {
        let maximize = state.maximizer();
        let tt_state = state.tt_state();

        // println!("Exploring state {state:?} at depth {depth}");

        // Termination conditions
        if stop_flag.load(Ordering::Relaxed) {
            return None;
        }
        if let Some((_, v, d)) = self.tt.get(&tt_state) {
            if *d >= depth || v.fully_known() {
                return Some(*v);
            }
        }
        if let Some(v) = state.game_over() {
            if enable_tt {
                self.tt.insert(tt_state, (None, v), depth);
            }
            return Some(v);
        }
        if depth == 0 {
            let v = state.value();
            if enable_tt {
                self.tt.insert(tt_state, (None, v), depth);
            }
            return Some(v);
        }

        let mut value = if maximize {
            S::V::neg_inf()
        } else {
            S::V::inf()
        };
        let mut best_move = None;
        state.best_move_sort(&self.tt, tt_state.clone());
        while let Some(next_move) = state.best_move_guess(&self.tt) {
            // if best_move.is_none() {
            //     best_move = Some(next_move.clone());
            // }
            // Recurse
            //state.make_move(&next_move);
            state.make_move_depth(&next_move, depth);
            let new_value = self.deepen_tree(state, depth - 1, alpha, beta, stop_flag.clone(), enable_tt);
            state.pop_move();

            // We ran out of time. Bail
            let new_value = if let Some(new_value) = new_value {
                new_value
            } else {
                return None;
            };

            if maximize {
                if new_value > value {
                    value = new_value;
                    best_move = Some(next_move);
                }

                // Prune
                if value >= beta {
                    break;
                }
                if value > alpha {
                    alpha = value;
                }
            } else {
                if new_value < value {
                    value = new_value;
                    best_move = Some(next_move);
                }

                // Prune
                if value <= alpha {
                    break;
                }
                if value < beta {
                    beta = value;
                }
            }
        }

        state.chosen_move(&best_move, &value);
        if enable_tt || depth == SPECULATION_SIZE as u16 {
            self.tt.insert(
                tt_state,
                (
                    Some(
                        best_move
                            .expect("Error because state.best_move_guess() did not return any moves."),
                    ),
                    value,
                ),
                depth,
            );
        }
        return Some(value);
    }

    pub fn best_move(
        &mut self,
        state: &mut S,
        depth: Option<u16>,
        time: Option<Duration>,
    ) -> (Option<S::M>, S::V, u16) {
        let depth = depth.unwrap_or(u16::MAX - 1);

        // Setup a sleeper thread that will set stop_flag if we are out of time
        // Sleeper thread will signal us to stop if time has elapsed
        let stop_flag = Arc::new(AtomicBool::new(false));
        // We will signal the sleeper thread in case we are done
        let (done_flag_tx, done_flag_rx) = mpsc::channel();
        let sleeper_thread = if let Some(time) = time {
            let thread_stop_flag = stop_flag.clone();
            Some(thread::spawn(move || {
                //std::thread::sleep(time);
                let _ = done_flag_rx.recv_timeout(time);
                thread_stop_flag.store(true, Ordering::Relaxed);
            }))
        } else {
            None
        };

        // Do the actual computation. This is the main loop
        for d in depth..depth + 1
        {
            if d % 2 == 1 {
                continue;
            }
            //let d = depth;
            state.reset_moves();
            if d == depth {
                self.deepen_tree(state, d, S::V::neg_inf(), S::V::inf(), stop_flag.clone(), false);
                //self.deepen_tree(state, d, S::V::neg_inf(), S::V::inf(), stop_flag.clone(), true);
            } else {
                self.deepen_tree(state, d, S::V::neg_inf(), S::V::inf(), stop_flag.clone(), true);
            }

            if let Some((m, v, d)) = self.tt.get(&state.tt_state()) {
                if v.fully_known() {
                    break;
                }

                println!("Depth {d} move {m:?} value{v:?}");
                println!("Depth {d} move {m:?}");
            }

            if stop_flag.load(Ordering::Relaxed) {
                break;
            }
        }
        let (m, v, d) = self.tt.get(&state.tt_state()).unwrap();
        assert!(*d >= depth || v.fully_known() || stop_flag.load(Ordering::Relaxed));

        // Ask the sleeper thread to finish and wait for it
        if let Some(sleeper_thread) = sleeper_thread {
            let _ = done_flag_tx.send(());
            sleeper_thread.join().unwrap();
        }

        (m.clone(), *v, *d)
    }
}

// pub fn best_move<G: Game>(game: G) -> <G::S as State>::M {
//     let mut tt = TranspositionTable::<G::S>::new();
//     game.cur_state().best_move(&tt)
// }

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        assert!(vec![1,2,3] == vec![1,2,]);
    }
}

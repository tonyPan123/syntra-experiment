use minimax::{Move, Search, State, TranspositionTable, Value};
use std::hash::Hash;

#[derive(PartialOrd, Ord, PartialEq, Eq, Clone, Copy, Debug)]
struct TTTValue(i8);

impl Value for TTTValue {
    fn inf() -> Self {
        Self(2)
    }

    fn neg_inf() -> Self {
        Self(-2)
    }

    fn fully_known(&self) -> bool {
        self.0 == -1 || self.0 == 1
    }
}

#[derive(PartialEq, Eq, Clone, Copy, Debug)]
struct TTTMove(usize, Square);

impl Move for TTTMove {}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
enum Square {
    Knot,
    Cross,
    Empty,
}

#[derive(Clone, Eq, PartialEq, Debug)]
struct TTTState {
    move_num: u8,
    board: [Square; 9],
    prev_moves: Vec<(TTTMove, usize)>,
    /// Next move for best_move_guess to try
    moves_tried: usize,
}

impl TTTState {
    pub fn new() -> Self {
        Self {
            move_num: 0,
            board: [Square::Empty; 9],
            prev_moves: Vec::new(),
            moves_tried: 0,
        }
    }
}

impl State for TTTState {
    type M = TTTMove;
    type V = TTTValue;
    type T = TTTttState;

    fn maximizer(&self) -> bool {
        self.move_num % 2 == 1
    }

    fn game_over(&self) -> Option<Self::V> {
        let triples = [
            (0, 1, 2),
            (3, 4, 5),
            (6, 7, 8),
            (0, 3, 6),
            (1, 4, 7),
            (2, 5, 8),
            (0, 4, 8),
            (2, 4, 6),
        ];
        for t in triples {
            if self.board[t.0] == self.board[t.1] && self.board[t.1] == self.board[t.2] {
                match self.board[t.0] {
                    Square::Knot => return Some(TTTValue(1)),
                    Square::Cross => return Some(TTTValue(-1)),
                    Square::Empty => continue,
                }
            }
        }
        if self.move_num >= 9 {
            return Some(TTTValue(0));
        }
        None
    }

    fn value(&self) -> Self::V {
        if let Some(v) = self.game_over() {
            v
        } else {
            TTTValue(0)
        }
    }

    fn best_move_guess(&mut self, _tt: &TranspositionTable<Self>) -> Option<Self::M> {
        if self.game_over().is_some() {
            return None;
        }

        let turn = if self.maximizer() {
            Square::Knot
        } else {
            Square::Cross
        };

        for m in self.moves_tried..9 {
            if self.board[m] == Square::Empty {
                self.moves_tried = m + 1;
                return Some(TTTMove(m, turn));
            }
        }
        None
    }

    fn make_move(&mut self, m: &Self::M) {
        assert_eq!(self.board[m.0], Square::Empty);
        self.board[m.0] = m.1;
        self.move_num += 1;
        self.prev_moves.push((*m, self.moves_tried));
        self.moves_tried = 0;
    }

    fn pop_move(&mut self) {
        let m;
        (m, self.moves_tried) = self.prev_moves.pop().unwrap();
        assert_ne!(self.board[m.0], Square::Empty);
        self.board[m.0] = Square::Empty;
        self.move_num -= 1;
    }

    fn reset_moves(&mut self) {
        self.moves_tried = 0;
    }

    fn tt_state(&self) -> Self::T {
        TTTttState {
            board: self.board.clone(),
        }
    }
}

#[derive(Clone, Hash, Eq, PartialEq, Debug)]
struct TTTttState {
    board: [Square; 9],
}

impl minimax::TTState for TTTttState {}

impl std::fmt::Display for Square {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Square::Knot => write!(f, "O"),
            Square::Cross => write!(f, "×"),
            Square::Empty => write!(f, "-"),
        }
    }
}

impl std::fmt::Display for TTTState {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        for i in 0..9 {
            if i > 0 && i % 3 == 0 {
                write!(f, "|\n")?;
            }
            write!(f, "{}", self.board[i])?;
        }
        write!(f, "|\n")?;
        Ok(())
    }
}

fn main() {
    let mut search = Search::new();
    let mut buffer = String::new();
    let stdin = std::io::stdin();
    let mut state = TTTState::new();
    loop {
        stdin.read_line(&mut buffer).unwrap();
        buffer.pop();
        let m = buffer.parse::<usize>().unwrap();
        buffer.clear();
        state.make_move(&TTTMove(m, Square::Cross));

        if let Some(v) = state.game_over() {
            println!("{state}");
            println!("Game over : {v:?}");
            break;
        }

        let (bm, v, d) = search.best_move(&mut state, Some(10), None);
        println!("{} {bm:?} {d}", v.0);
        state.make_move(&bm.unwrap());

        if let Some(v) = state.game_over() {
            println!("{state}");
            println!("Game over: {v:?}");
            break;
        }

        println!("{state}");
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_game_over() {
        let mut state = TTTState::new();
        assert!(state.game_over().is_none());
        state.make_move(&TTTMove(8, Square::Cross));
        assert!(state.game_over().is_none());
        state.make_move(&TTTMove(0, Square::Knot));
        assert!(state.game_over().is_none());
        state.make_move(&TTTMove(6, Square::Cross));
        assert!(state.game_over().is_none());
        state.make_move(&TTTMove(2, Square::Knot));
        assert!(state.game_over().is_none());
        state.make_move(&TTTMove(7, Square::Cross));
        assert_eq!(state.game_over(), Some(TTTValue(-1)));
    }
}

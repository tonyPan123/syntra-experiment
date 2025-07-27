use minimax;
use minimax::State as TraitState;
use minimax::Value as TraitValue;
use shakmaty;
use shakmaty::{Chess, Color, Move, Piece, Position, Role, Square};
use std::hash::Hash;

#[derive(PartialOrd, Ord, PartialEq, Eq, Clone, Copy, Debug)]
pub struct Value(i16);

impl minimax::Value for Value {
    fn inf() -> Self {
        Self(i16::MAX)
    }

    fn neg_inf() -> Self {
        Self(i16::MIN)
    }

    fn fully_known(&self) -> bool {
        self.0 < i16::MIN + 500 || self.0 > i16::MAX - 500
    }
}

#[rustfmt::skip]
fn piece_value(piece: Piece, pos: Square) -> i16 {
    let coord = match piece.color {
	Color::Black => pos.rank() as i8 * 8 + pos.file() as i8,
	Color::White => (7 - pos.rank() as i8) * 8 + pos.file() as i8,
    } as usize;

    match piece.role {
	Role::Pawn => 100 +
	    [  0,   0,   0,   0,   0,   0,   0,   0,
              78,  83,  86,  73, 102,  82,  85,  90,
               7,  29,  21,  44,  40,  31,  44,   7,
             -17,  16,  -2,  15,  14,   0,  15, -13,
             -26,   3,  10,   9,   6,   1,   0, -23,
             -22,   9,   5, -11, -10,  -2,   3, -19,
             -31,   8,  -7, -37, -36, -14,   3, -31,
               0,   0,   0,   0,   0,   0,   0,   0,][coord],
	Role::Knight => 280 +
	    [ -66, -53, -75, -75, -10, -55, -58, -70,
              -3,  -6, 100, -36,   4,  62,  -4, -14,
              10,  67,   1,  74,  73,  27,  62,  -2,
              24,  24,  45,  37,  33,  41,  25,  17,
              -1,   5,  31,  21,  22,  35,   2,   0,
             -18,  10,  13,  22,  18,  15,  11, -14,
             -23, -15,   2,   0,   2,   0, -23, -20,
	     -74, -23, -26, -24, -19, -35, -22, -69,][coord],
	Role::Bishop => 320 +
	    [-59, -78, -82, -76, -23,-107, -37, -50,
             -11,  20,  35, -42, -39,  31,   2, -22,
              -9,  39, -32,  41,  52, -10,  28, -14,
              25,  17,  20,  34,  26,  25,  15,  10,
              13,  10,  17,  23,  17,  16,   0,   7,
              14,  25,  24,  15,   8,  25,  20,  15,
              19,  20,  11,   6,   7,   6,  20,  16,
             -7,   2, -15, -12, -14, -15, -10, -10,][coord],
	Role::Rook => 479 +
	    [  35,  29,  33,   4,  37,  33,  56,  50,
              55,  29,  56,  67,  55,  62,  34,  60,
              19,  35,  28,  33,  45,  27,  25,  15,
               0,   5,  16,  13,  18,  -4,  -9,  -6,
             -28, -35, -16, -21, -13, -29, -46, -30,
             -42, -28, -42, -25, -25, -35, -26, -46,
             -53, -38, -31, -26, -29, -43, -44, -53,
               -30, -24, -18,   5,  -2, -18, -31, -32][coord],
	Role::Queen => 929 +
	    [ 6,   1,  -8,-104,  69,  24,  88,  26,
              14,  32,  60, -10,  20,  76,  57,  24,
              -2,  43,  32,  60,  72,  63,  43,   2,
               1, -16,  22,  17,  25,  20, -13,  -6,
             -14, -15,  -2,  -5,  -1, -10, -20, -22,
             -30,  -6, -13, -11, -16, -11, -16, -27,
             -36, -18,   0, -19, -15, -15, -21, -38,
              -39, -30, -31, -13, -31, -36, -34, -42][coord],
	Role::King => 0 +
	    [ 4,  54,  47, -99, -99,  60,  83, -62,
             -32,  10,  55,  56,  56,  55,  10,   3,
             -62,  12, -57,  44, -67,  28,  37, -31,
             -55,  50,  11,  -4, -19,  13,   0, -49,
             -55, -43, -52, -28, -51, -47,  -8, -50,
             -47, -42, -43, -79, -64, -32, -29, -32,
              -4,   3, -14, -50, -57, -18,  13,   4,
              17,  30,  -3, -14,   6,  -1,  40,  18][coord],
    }
}

#[derive(PartialEq, Eq, Clone, Debug)]
pub struct ChessMove(pub Move);

impl minimax::Move for ChessMove {}

#[derive(Clone, Eq, PartialEq, Debug)]
pub struct State {
    pos: Chess,
    /// The color the computer is playing
    player: Color,
    /// Moves that the player can play from here. Useful for `best_move_guess`
    moves: Option<Vec<Move>>,
    /// Move id that `best_move_guess` has returned thus far
    move_id: usize,
    /// History of previous positions that we pushed, so we can pop them again
    move_stack: Vec<(Chess, Option<Vec<Move>>, usize)>,
}

impl State {
    pub fn new(pos: Chess, player: Color) -> Self {
        Self {
            pos,
            player,
            moves: None,
            move_id: 0,
            move_stack: Vec::new(),
        }
    }

    pub fn get_pos(&self) -> &Chess {
        &self.pos
    }

    pub fn print(&self) {
        for rank in 0..8 {
            let rank = shakmaty::Rank::new(7 - rank);
            for file in 0..8 {
                let pos = Square::from_coords(shakmaty::File::new(file), rank);
                if let Some(p) = self.pos.board().piece_at(pos) {
                    print!("{}", p.char());
                } else {
                    print!(".");
                }
            }
            println!("");
        }
    }
}

impl minimax::State for State {
    type M = ChessMove;
    type V = Value;
    type T = TTState;

    fn maximizer(&self) -> bool {
        self.pos.turn() == self.player
    }

    fn game_over(&self) -> Option<Self::V> {
        if let Some(outcome) = self.pos.outcome() {
            Some(match outcome {
                shakmaty::Outcome::Decisive { winner } => {
                    if winner == self.player {
                        Value(i16::MAX - 1)
                    } else {
                        Value(i16::MIN + 1)
                    }
                }
                shakmaty::Outcome::Draw => Value(0),
            })
        } else {
            None
        }
    }

    fn value(&self) -> Self::V {
        let board = self.pos.board();
        let mut val = 0;
        for role in Role::ALL {
            for color in Color::ALL {
                let piece = Piece { role, color };
                let mut piece_board = board.by_piece(piece);
                while let Some(sq) = piece_board.pop_front() {
                    if color == self.player {
                        val += piece_value(piece, sq);
                    } else {
                        val -= piece_value(piece, sq);
                    }
                }
            }
        }
        Value(val)
    }

    fn best_move_guess(&mut self, tt: &minimax::TranspositionTable<Self>) -> Option<Self::M> {
        if self.moves.is_none() {
            let mut moves = self.pos.legal_moves().as_slice().to_vec();
            moves.sort_by(|a, b| {
                let apos = self.pos.clone().play(a).unwrap();
                let bpos = self.pos.clone().play(b).unwrap();
                if apos.is_check() && !bpos.is_check() {
                    std::cmp::Ordering::Less
                } else if !apos.is_check() && bpos.is_check() {
                    std::cmp::Ordering::Greater
                } else if a.is_capture() && !b.is_capture() {
                    std::cmp::Ordering::Less
                } else if !a.is_capture() && b.is_capture() {
                    std::cmp::Ordering::Greater
                } else {
                    let ascore = tt
                        .get(&TTState { pos: apos })
                        .map(|x| x.1)
                        .unwrap_or(Value::inf());
                    let bscore = tt
                        .get(&TTState { pos: bpos })
                        .map(|x| x.1)
                        .unwrap_or(Value::neg_inf());
                    ascore.cmp(&bscore)
                }
            });
            self.moves = Some(moves);
        }

        if self.move_id >= self.moves.as_ref().unwrap().len() {
            None
        } else {
            let res = self.moves.as_ref().unwrap()[self.move_id].clone();
            self.move_id += 1;
            Some(ChessMove(res))
        }
    }

    fn make_move(&mut self, m: &Self::M) {
        self.move_stack
            .push((self.pos.clone(), self.moves.clone(), self.move_id));
        self.pos = self.pos.clone().play(&m.0).unwrap();
        self.moves = None;
        self.move_id = 0;
    }

    fn pop_move(&mut self) {
        (self.pos, self.moves, self.move_id) = self.move_stack.pop().unwrap();
    }

    fn reset_moves(&mut self) {
        self.move_id = 0;
    }

    fn tt_state(&self) -> TTState {
        TTState {
            pos: self.pos.clone(),
        }
    }
}

#[derive(Clone, Hash, Eq, PartialEq, Debug)]
pub struct TTState {
    pos: Chess,
}

impl minimax::TTState for TTState {}

#[allow(dead_code)]
fn main() {
    let mut search = minimax::Search::new();
    let mut buffer = String::new();
    let stdin = std::io::stdin();
    let mut state = State::new(Chess::new(), Color::Black);
    loop {
        // Get the move from stdin
        loop {
            buffer.clear();
            stdin.read_line(&mut buffer).unwrap();
            buffer.pop();
            let m = shakmaty::uci::Uci::from_ascii(buffer.as_ref());
            let m = if let Ok(m) = m {
                if let Ok(m) = m.to_move(state.get_pos()) {
                    m
                } else {
                    println!("Invalid move for current position '{buffer}'. Try again");
                    continue;
                }
            } else {
                println!("Invalid UCI format '{buffer}'. Try again");
                continue;
            };
            state.make_move(&ChessMove(m));
            break;
        }

        if let Some(v) = state.game_over() {
            println!("Game over: {v:?}");
            break;
        }

        let (bm, v, d) = search.best_move(
            &mut state,
            Some(6),
            Some(std::time::Duration::from_secs(10)),
        );
        println!("depth: {d}, value: {}, move: {bm:?}", v.0);
        state.make_move(&bm.unwrap());

        if let Some(v) = state.game_over() {
            println!("Game over: {v:?}");
            break;
        }

        state.print();
    }
}

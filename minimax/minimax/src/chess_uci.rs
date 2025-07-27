mod chess;
use chess::{ChessMove, State};
use minimax::State as TraitState;
use shakmaty::{Chess, Color, Position};

fn main() {
    let mut search = minimax::Search::new();
    let mut buffer = String::new();
    let stdin = std::io::stdin();
    let mut state = State::new(Chess::new(), Color::White);

    loop {
        buffer.clear();
        stdin.read_line(&mut buffer).unwrap();
        buffer.pop();
        println!("UCI Command: {buffer}");
        if buffer == "isready" {
            println!("readyok");
            continue;
        } else if buffer.len() >= 17 && &buffer[..17] == "position startpos" {
            state = State::new(Chess::new(), Color::White);
            if buffer.len() > 24 && &buffer[17..24] == " moves " {
                for mov in buffer[24..].split(' ') {
                    let m = shakmaty::uci::Uci::from_ascii(mov.as_ref());
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
                }
            }
            continue;
        } else if buffer.len() > 13 && &buffer[..13] == "position fen " {
            let fen = shakmaty::fen::Fen::from_ascii(buffer[13..].as_ref()).unwrap();
            let pos: Chess = fen.into_position(shakmaty::CastlingMode::Standard).unwrap();
            let turn = pos.turn();
            state = State::new(pos, turn);
            continue;
        } else if buffer.len() > 3 && &buffer[..3] == "go " {
            let mut words = buffer[3..].split(' ');
            let mut depth = None;
            let mut movetime = None;
            while let Some(cmd) = words.next() {
                if cmd == "depth" {
                    depth = Some(words.next().unwrap().parse::<u16>().unwrap());
                } else if cmd == "movetime" {
                    movetime = Some(std::time::Duration::from_millis(
                        words.next().unwrap().parse::<u64>().unwrap(),
                    ));
                }
            }

            let (bm, _, _) = search.best_move(&mut state, depth, movetime);
            println!(
                "bestmove {}",
                bm.unwrap().0.to_uci(shakmaty::CastlingMode::Standard)
            );
            continue;
        } else if buffer == "quit" {
            break;
        } else if buffer == "uci" {
            println!("uciok");
            continue;
        } else {
            println!("Unrecognized command '{buffer}'.");
        }
    }
}

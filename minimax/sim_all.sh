#!/bin/bash

set -xe

obj="sc ld qdel s sb c b"
obj="smcmul smcadd sc ld qdel s sb c b"
obj="sc scladd sclmul ld qdel c s sb b"
obj="ttsc ld qdel c s sb b"

out_dir=$1
echo "out_dir: $out_dir"

cargo build --release

mkdir -p $out_dir

run() {
    fname=$1
    sim_ideal=$2
    sim_b=$3
    cmd="./target/release/cc --csv --sim --sim-c 20 --sim-b $sim_b $sim_ideal --out $out_dir --obj-perm $obj"
    tmux send-keys "$cmd" Enter
}

tmux rename-window sim

tmux split-window -h
tmux split-window -v
tmux select-pane -t 1
tmux split-window -v

tmux select-layout tiled

tmux select-pane -t 1
run "ideal_shallow" "--sim-ideal" 10

tmux select-pane -t 2
run "ideal_deep" "--sim-ideal" 100

tmux select-pane -t 3
run "cbrd_shallow" "" 10

tmux select-pane -t 4
run "cbrd_deep" "" 100

set +xe
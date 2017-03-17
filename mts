#!/bin/sh

cd /home/prajmus/mts

tmux start-server
tmux new-session -d -s 'mts'
tmux rename-window 'code'
tmux new-window -n 'code2' -c '/home/prajmus/mts/server'
tmux new-window -n 'git' -c '/home/prajmus/mts/server'
tmux new-window -n 'server' -c '/home/prajmus/mts/server'
tmux new-window -n 'htop'

tmux send-keys -t 'code' 'cd /home/prajmus/mts/server; clear' C-m
tmux send-keys -t 'htop' 'htop' C-m

tmux select-window -t 'code'

tmux -2 attach-session -d -t 'mts'

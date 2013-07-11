#!/bin/sh
tmux new-session -d -s 0
tmux new-window -t 0:1 -n 'IAD-admin' 'ssh admin01.iad.sessionm.com'
tmux new-window -t 0:2 -n 'IAD-root' 'ssh admin01.iad.sessionm.com'
tmux new-window -t 0:3 -n 'EWR-admin'
tmux new-window -t 0:4 -n 'EWR-root'
tmux new-window -t 0:5 -n 'sysadmin'
tmux new-window -t 0:6 -n 'local'
tmux new-window -t 0:7 -n 'irssi' 'irssi'
tmux select-window -t 0:1
tmux -2 attach-session -t 0

#!/usr/bin/env sh
tmux -2 new-session -d -s ranger /usr/bin/ranger 2>/dev/null
tmux -2 new-session -As 0

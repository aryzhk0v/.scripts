#/bin/sh
session=$(tmux list-sessions | rofi -dmenu | awk '{print $1}' | tr -d :)
if [ -z $session ]; then
    exit 1
fi
#$MYTERM --class toggleable -o background_opacity=0.6 -e tmux attach-session
alacritty --class toggleable -o window.opacity=0.9 -e tmux -2 attach-session

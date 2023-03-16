#!/bin/sh

FILE="/tmp/i3_work_mode_on"
if [ -f "$FILE" ]; then
    #notify-send "DUNST_COMMAND_RESUME" && i3-msg "bar mode dock"
    dunstctl set-paused false && i3-msg "bar mode dock"
    rm $FILE
else
    #notify-send "DUNST_COMMAND_PAUSE" && i3-msg "bar mode invisible"
    dunstctl set-paused true && i3-msg "bar mode invisible"
    touch $FILE
fi

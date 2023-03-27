#!/usr/bin/env bash

DEVICE=$(bluetoothctl devices | rofi -dmenu -i)
DEVICE=$(echo "$DEVICE" | cut -f 2 -d ' ')
if [ -z "$DEVICE" ]; then
    exit 1
fi
if bluetoothctl info "$DEVICE" | grep 'Connected: yes' -q; then
  bluetoothctl disconnect "$DEVICE"
else
  bluetoothctl connect "$DEVICE"
fi

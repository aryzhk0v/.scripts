#!//usr/bin/env bash

SLEEP=2

wpc() {
    warp-cli connect > /dev/null 2>&1
    sleep $SLEEP
    yandex-disk stop > /dev/null 2>&1  && yandex-disk start > /dev/null 2>&1
}

wpd() {
    warp-cli disconnect > /dev/null 2>&1
    sleep $SLEEP
    yandex-disk stop > /dev/null 2>&1 && yandex-disk start > /dev/null 2>&1
}

STATUS="$(warp-cli status | grep 'Status update' | awk '{print $3}' | tr -d '.')"
case $STATUS in
    "Disconnected") wpc ;;
    "Connected") wpd ;;
    *) notify-send "Error toggling warp-cli in ~/.scripts/cf-toggle.sh";;
esac

#!//usr/bin/env bash

STATUS="$(openvpn3 sessions-list | grep 'Client connected' | wc -l)"
case $STATUS in
    "0") openvpn3 session-start --config ~/profile-8.ovpn > /dev/null 2>&1 ;;
    "1") openvpn3 session-manage --disconnect --config ~/profile-8.ovpn > /dev/null 2>&1 ;;
    *) notify-send "Error toggling VPN in ~/.scripts/vpn-toggle.sh";;
esac

#!/bin/sh
CAPS=$(xset q | grep Caps | awk '{print $4}')
case "$(xset -q | grep -A 0 'LED' | cut -c 63)" in
  "0") layout="us" ;;
  "1") layout="ru" ;;
  *) layout="unknown" ;;
esac
[[ "$CAPS" == "on" ]] && echo "${layout^^}" || echo "${layout}"

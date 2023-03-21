#!/usr/bin/env bash

STATE="$1"
case $STATE in
    'ON'|'on')
    sed -i '/#pracuj, kurwa!/,+1  s/^#0/0/' /etc/hosts
    ;;
    'OFF'|'off')
    sed -i '/#pracuj, kurwa!/,+1  s/^0/#0/' /etc/hosts
    ;;
    *)
    echo 'idi domoy'
esac

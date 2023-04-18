#!/usr/bin/env bash

STATE="$1"
case $STATE in
    'ON'|'on')
    sed '/#pracuj, kurwa!/,+1  s/^#0/0/' /etc/hosts | sponge /etc/hosts
    ;;
    'OFF'|'off')
    sed '/#pracuj, kurwa!/,+1  s/^0/#0/' /etc/hosts | sponge /etc/hosts
    ;;
    *)
    echo 'idi domoy'
esac

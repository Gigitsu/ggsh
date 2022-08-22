#!/usr/bin/env bash

_uptime() {
    case $(uname -s) in
      *Darwin*|*FreeBSD*)
        boot=$(sysctl -q -n kern.boottime | awk -F'[ ,:]+' '{ print $4 }')
        now=$(date +%s)
        ;;
      *Linux*|*CYGWIN*|*MSYS*|*MINGW*)
        boot=0
        now=$(cut -d' ' -f1 < /proc/uptime)
        ;;
      *OpenBSD*)
        boot=$(sysctl -n kern.boottime)
        now=$(date +%s)
    esac

    duration=""
    uptime=$(($now-$boot))

    d=$(($uptime/60/60/24))
    h=$(($uptime/60/60%24))
    m=$(($uptime/60%60))

    (( $d > 0 )) && printf "%dd" $d
    (( $h > 0 )) && printf "%dh" $h
    printf "%dm" $m
}

_uptime "$@"
#!/usr/bin/env bash

if [ "$1" = "linux" ]; then 
    logfile_rsvg="res/rsvglog_linux.txt"
    which rsvg-convert > "$logfile_rsvg"
    logfile="res/qclog_linux.txt"
elif [ "$1" = "win" ]; then 
    logfile="res/qclog_windows.txt"
else
    echo "Usage: $0 [linux|win]"
    exit 1
fi
quarto check all --log "$logfile"

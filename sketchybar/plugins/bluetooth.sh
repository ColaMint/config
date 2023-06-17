#!/bin/sh

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_topbar"

STATE=$(blueutil -p)
if [ $STATE = 0 ]; then
  COLOR=0xfff7768e
else
  COLOR=0xff7aa2f7
fi

$SKETCHBAR_BIN --set $NAME icon.color=$COLOR

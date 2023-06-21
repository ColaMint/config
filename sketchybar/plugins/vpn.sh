#!/bin/sh

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_topbar"

if scutil --nc list | grep "^\*" | grep Connected >> /dev/null; then
  LABEL=on
else
  LABEL=off
fi

$SKETCHBAR_BIN --set $NAME label=$LABEL

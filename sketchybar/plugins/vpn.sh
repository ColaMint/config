#!/bin/sh

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_topbar"

if scutil --nc list | grep "^\*" | grep Connected >> /dev/null; then
  LABEL=
else
  LABEL=
fi

$SKETCHBAR_BIN --set $NAME label=$LABEL

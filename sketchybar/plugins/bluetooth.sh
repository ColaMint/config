#!/bin/sh

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_topbar"

STATE=$(blueutil -p)
if [ $STATE = 0 ]; then
  LABEL=
else
  LABEL=
fi

# CONNECTED=$(/opt/homebrew/bin/blueutil --connected | wc -l | sed -e 's/^[[:space:]]*//')

$SKETCHBAR_BIN --set $NAME label="$LABEL"

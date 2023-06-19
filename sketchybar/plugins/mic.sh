#!/usr/bin/env bash

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_bottombar"

VOLUME=$(osascript -e "input volume of (get volume settings)")

if [[ $VOLUME -eq 0 ]]; then
  ICON=""
elif [[ $VOLUME -gt 0 ]]; then
  ICON=""
fi

$SKETCHBAR_BIN -m \
--set $NAME icon=$ICON \
--set $NAME label="$VOLUME"

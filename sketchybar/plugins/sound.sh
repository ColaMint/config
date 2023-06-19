#!/usr/bin/env bash

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_bottombar"

RESULT=$(osascript -e 'set {volume, muted} to {output volume, output muted} of (get volume settings)' -e 'return volume as string & " " & muted as string')
read -r VOLUME MUTED <<< "$RESULT"

if [[ $MUTED != "false" ]]; then
ICON=""
else
case ${VOLUME} in
  100) ICON="";;
  9[0-9]) ICON="";;
  8[0-9]) ICON="";;
  7[0-9]) ICON="";;
  6[0-9]) ICON="";;
  5[0-9]) ICON="";;
  4[0-9]) ICON="";;
  3[0-9]) ICON="";;
  2[0-9]) ICON="";;
  1[0-9]) ICON="";;
  [0-9]) ICON="";;
  *) ICON=""
esac
fi

$SKETCHBAR_BIN -m \
--set $NAME icon=$ICON \
--set $NAME label="$VOLUME"

#!/bin/sh

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_topbar"

WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.title')

if [[ $WINDOW_TITLE = "" ]]; then
  WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.app')
fi

if [[ ${#WINDOW_TITLE} -gt 50 ]]; then
  WINDOW_TITLE="$(echo "$WINDOW_TITLE" | cut -c 1-50 | iconv -c)..."
fi

$SKETCHBAR_BIN --set $NAME label="$WINDOW_TITLE"

#!/usr/bin/env sh

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_bottombar"

if $SKETCHBAR_BIN --query default_menu_items | grep "$NAME" >> /dev/null; then
  $SKETCHBAR_BIN --set "$NAME" alias.scale=1 label=""
else
  $SKETCHBAR_BIN --set "$NAME" alias.scale=0 label="网易云音乐"
fi

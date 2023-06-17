#!/usr/bin/env bash

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_topbar"

$SKETCHBAR_BIN  --set $NAME label="$(date '+%Y-%m-%d %H:%M')"

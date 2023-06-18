#!/usr/bin/env sh

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_topbar"

a=$(df -h "/" | awk 'NR==2{print $4}' | cut -c 1-4)
FINAL=$(printf '%s\n' "${a%?} ${a#"${a%?}"}")
$SKETCHBAR_BIN --set $NAME label="$FINAL"B

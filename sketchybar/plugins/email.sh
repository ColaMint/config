#!/bin/sh

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_topbar"

UNREAD=$(osascript -e 'tell application "Mail" to return the unread count of inbox')

$SKETCHBAR_BIN --set $NAME label=$UNREAD

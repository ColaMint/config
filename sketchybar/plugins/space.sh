#!/usr/bin/env sh

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_bottombar"

WIN=$(yabai -m query --spaces --space $SID | jq '.windows[0]')
HAS_WINDOWS_OR_IS_SELECTED="true"
if [ "$WIN" = "null" ] && [ "$SELECTED" = "false" ];then
  HAS_WINDOWS_OR_IS_SELECTED="false"
fi

if [ "$HAS_WINDOWS_OR_IS_SELECTED" = "true" ]; then
   iconcolor=0xff7aa1f7
else
   iconcolor=0xff583794
fi


$SKETCHBAR_BIN --set $NAME icon.highlight=$SELECTED icon.color=$iconcolor 

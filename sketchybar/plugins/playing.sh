#!/usr/bin/env bash

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_bottombar"

# TODO
# $INFO的内容不规范，title里面可能包含没有转义的双引号导致无法正常解析JSON

if [[ $INFO != "" ]]; then
  STATE=$(echo "$INFO" | jq -r .state)
  TITLE=$(echo "$INFO" | jq -r .title)
  APP=$(echo "$INFO" | jq -r .app)
  if [[ $APP == "网易云音乐" && $STATE == "playing" ]]; then
    if [[ ${#TITLE} -gt 25 ]]; then
      TITLE="$(echo "$TITLE" | cut -c 1-25 | iconv -c)..."
    fi
    $SKETCHBAR_BIN --set playing label="$TITLE"
  else 
    $SKETCHBAR_BIN --set playing label="..."
  fi
fi


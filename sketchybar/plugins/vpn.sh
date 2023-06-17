#!/bin/sh

SKETCHBAR_BIN="/opt/homebrew/bin/sketchy_topbar"


COLOR=0xfff7768e
VPN_INFO=$(scutil --nc list | grep "^\*" | head -n 1)
VPN_NAME=
if [[ $VPN_INFO != "" ]]; then
  if echo $VPN_INFO | grep Connected >> /dev/null; then
    COLOR=0xff9ece6a
  fi  
  VPN_NAME=$(echo $VPN_INFO | sed -E 's/.*"(.*)".*/\1/')
fi

$SKETCHBAR_BIN --set $NAME icon.color=$COLOR label=$VPN_NAME

#!/bin/sh

VPN_INFO=$(scutil --nc list | grep "^\*" | head -n 1)
VPN_NAME=
if [[ $VPN_INFO != "" ]]; then
  VPN_NAME=$(echo $VPN_INFO | sed -E 's/.*"(.*)".*/\1/')
  osascript <<EOF
  tell application "System Events"
    tell current location of network preferences
        if current configuration of service "$VPN_NAME" is not connected then
            connect service "$VPN_NAME"
        else
            disconnect service "$VPN_NAME"
        end if
    end tell
  end tell
EOF
fi

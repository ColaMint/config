#!/bin/sh

VPN_NAME="um"


INTERFACE_NAME=$(nmcli c show $VPN_NAME | grep GENERAL.STATE | awk '{print $2}')
if [ "$INTERFACE_NAME" = "activated" ]; then
    VPN_STATUS="on"  
else
    VPN_STATUS="off"
fi

case $1 in 
  status) 
    if [ "$VPN_STATUS" = "on" ]; then
        echo "󰌷" 
    else 
        echo "󰌸" 
    fi
    ;;
  toggle) 
    if [ "$VPN_STATUS" = "on" ]; then
        dunstify vpn "$(nmcli c down $VPN_NAME)"
    else 
        dunstify vpn "$(nmcli c up $VPN_NAME)"
    fi
    ;;
esac

#!/bin/sh

PLAYER="ElectronNCM"
DESKTOP="/usr/share/applications/electron-netease-cloud-music.desktop"

is_running() {
    if playerctl --list-all | grep $PLAYER > /dev/null; then
        return 0
    else
        return 1
    fi
}

is_playing() {
    if playerctl status | grep Playing > /dev/null; then
        return 0
    else
        return 1
    fi
}

cmd_launch() {
    $(grep '^Exec' $DESKTOP | tail -1 | sed 's/^Exec=//' | sed 's/%.//' | sed 's/^"//g' | sed 's/" *$//g') &
}

case $1 in 
  is-running)
    is_running
    ;;
  is-playing)
    is_playing
    ;;
  previous)
    is_running && playerctl previous 
    ;;
  next)
    is_running && playerctl next
    ;;
  play-pause)
    is_running && playerctl play-pause 
    ;;
  title)
    if is_running; then
        playerctl metadata --format '{{ artist }}:{{ title }}'
    else
        exit 1
    fi
    ;;
  launch)
    is_running || cmd_launch
    ;;
esac

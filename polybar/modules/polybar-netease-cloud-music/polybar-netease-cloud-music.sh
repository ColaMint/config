#!/bin/sh


DEST="org.mpris.MediaPlayer2.netease-cloud-music"
OBJECT_PATH="/org/mpris/MediaPlayer2"
DESKTOP_PATH="/usr/share/applications/netease-cloud-music.desktop"

is_running() {
    if dbus-send --print-reply --dest=$DEST $OBJECT_PATH org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' > /dev/null 2>&1; then
        return 0
    else
        return 1
    fi
}


is_playing() {
    if dbus-send --print-reply --dest=$DEST $OBJECT_PATH org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'PlaybackStatus' 2>&1 | grep Playing > /dev/null; then
        return 0
    else
        return 1
    fi
}

get_artist() {
    dbus-send --print-reply --dest=$DEST $OBJECT_PATH org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | grep 'xesam:artist' -A 2 | tail -n1 | sed -e 's/^[ \t]*string *\"//' -e 's/"$//'
}

get_title() {
    dbus-send --print-reply --dest=$DEST $OBJECT_PATH org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | grep 'xesam:title' -A 1 | tail -n1 | sed -e 's/^[ \t]*variant *string *\"//' -e 's/"$//'
}

cmd_previous() {
    dbus-send --print-reply --dest=$DEST $OBJECT_PATH org.mpris.MediaPlayer2.Player.Previous 
}

cmd_next() {
    dbus-send --print-reply --dest=$DEST $OBJECT_PATH org.mpris.MediaPlayer2.Player.Next
}

cmd_play_pause() {
    dbus-send --print-reply --dest=$DEST $OBJECT_PATH org.mpris.MediaPlayer2.Player.PlayPause
}

cmd_launch() {
    $(grep '^Exec' $DESKTOP_PATH | tail -1 | sed 's/^Exec=//' | sed 's/%.//' | sed 's/^"//g' | sed 's/" *$//g') &
}

case $1 in 
  is-running)
    is_running
    ;;
  is-playing)
    is_playing
    ;;
  previous)
    is_running && cmd_previous
    ;;
  next)
    is_running && cmd_next
    ;;
  play-pause)
    is_running && cmd_play_pause
    ;;
  title)
    if is_running; then
        echo $(get_artist):$(get_title)
    else
        exit 1
    fi
    ;;
  launch)
    is_running || cmd_launch
    ;;
esac

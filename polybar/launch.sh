#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar top    2>&1 | tee -a /tmp/polybar-top.log    & disown
polybar bottom 2>&1 | tee -a /tmp/polybar-bottom.log & disown

echo "Polybar launched..."

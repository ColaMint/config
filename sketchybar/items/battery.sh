BATTERY_CLICK_SCRIPT="open 'x-apple.systempreferences:com.apple.preference.battery'"

$SKETCHBAR_BIN --add item battery right                                       \
               --set battery update_freq=1                                    \
                       icon.font="Font Awesome 6 Free:Solid:15.4"             \
                       icon.padding_left=16                                   \
                       icon.padding_right=4                                   \
                       icon.color=0xff9ac868                                  \
                       icon.y_offset=-1                                       \
                       label.font="$FONT:Medium:14.0"                         \
                       label.color=$LABEL_COLOR                               \
                       label.padding_right=16                                 \
                       background.color=$BACKGROUND_COLOR                     \
                       background.height=$BACKGROUND_HEIGHT                   \
                       background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                       background.padding_right=3                             \
                       script="$PLUGIN_DIR/battery.sh"                        \
                       click_script="$BATTERY_CLICK_SCRIPT"                   \

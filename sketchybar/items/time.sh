$SKETCHBAR_BIN --add item clock right                                         \
               --set clock update_freq=1                                      \
                       icon=                                                 \
                       icon.font.size=18                                      \
                       icon.padding_left=16                                   \
                       icon.padding_right=4                                   \
                       icon.color=0xff6d8896                                  \
                       label.padding_right=16                                 \
                       background.color=$BACKGROUND_COLOR                     \
                       background.height=$BACKGROUND_HEIGHT                   \
                       background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                       background.padding_right=8                             \
                       script="$PLUGIN_DIR/clock.sh"                          \

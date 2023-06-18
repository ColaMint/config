$SKETCHBAR_BIN --add item window_title center                                    \
               --set window_title update_freq=1                                  \
                          label.font="$FONT:Medium:14.0"                         \
                          label.color=$LABEL_COLOR                               \
                          background.color=$BACKGROUND_COLOR                     \
                          background.height=$BACKGROUND_HEIGHT                   \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                          script="$PLUGIN_DIR/window_title.sh"                   \

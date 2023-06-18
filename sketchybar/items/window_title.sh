$SKETCHBAR_BIN --add item window_title center                                    \
               --set window_title update_freq=1                                  \
                          icon.padding_left=0                                    \
                          icon.padding_right=0                                   \
                          label.font="$FONT:Medium:14.0"                         \
                          label.color=$LABEL_COLOR                               \
                          label.padding_left=16                                  \
                          label.padding_right=16                                 \
                          background.color=$BACKGROUND_COLOR                     \
                          background.height=$BACKGROUND_HEIGHT                   \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                          background.padding_left=0                              \
                          background.padding_right=0                             \
                          script="$PLUGIN_DIR/window_title.sh"                   \

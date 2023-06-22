$SKETCHBAR_BIN --add item cava left                                              \
               --set cava update_freq=0                                          \
                          icon.padding_left=0                                    \
                          icon.padding_right=0                                   \
                          label.color=0xfff6768e                                 \
                          label.padding_left=16                                  \
                          label.padding_right=16                                 \
                          background.color=$BACKGROUND_COLOR                     \
                          background.height=$BACKGROUND_HEIGHT                   \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                          background.padding_right=3                             \
                          script="$PLUGIN_DIR/cava.sh"                           \

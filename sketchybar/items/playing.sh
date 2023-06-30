$SKETCHBAR_BIN --add item playing right                                          \
               --set playing update_freq=0                                       \
                          icon.padding_left=0                                    \
                          icon.padding_right=0                                   \
                          label="..."                                            \
                          label.padding_left=16                                  \
                          label.padding_right=16                                 \
                          label.color=0xfff6768e                                 \
                          background.color=$BACKGROUND_COLOR                     \
                          background.height=$BACKGROUND_HEIGHT                   \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                          background.padding_left=0                              \
                          background.padding_right=3                             \
                          script="$PLUGIN_DIR/playing.sh"                        \
               --subscribe playing media_change                                  \

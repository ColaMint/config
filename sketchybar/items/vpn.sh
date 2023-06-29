$SKETCHBAR_BIN --add item vpn right                                              \
               --set vpn  update_freq=3                                          \
                          icon=󰒃                                                 \
                          icon.padding_left=16                                   \
                          icon.padding_right=4                                   \
                          icon.color=0xfff7768e                                  \
                          icon.y_offset=0                                        \
                          label.padding_right=16                                 \
                          label.font.family="$ICON_FONT_FAMILY"                  \
                          label.font.style=$ICON_FONT_STYLE                      \
                          label.font.size=$ICON_FONT_SIZE                        \
                          label.color=0xfff7768e                                 \
                          background.color=$BACKGROUND_COLOR                     \
                          background.height=$BACKGROUND_HEIGHT                   \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                          background.padding_right=3                             \
                          script="$PLUGIN_DIR/vpn.sh"                            \
                          click_script="$PLUGIN_DIR/toggle_vpn.sh"               \

VPN_CLICK_SCRIPT="open 'x-apple.systempreferences:com.apple.preference.network?VPN'"

$SKETCHBAR_BIN --add item vpn right                                              \
               --set vpn  update_freq=3                                          \
                          icon=󰒃                                                 \
                          icon.padding_left=16                                   \
                          icon.padding_right=4                                   \
                          icon.color=0xfff7768e                                  \
                          icon.y_offset=-1                                       \
                          label.padding_right=16                                 \
                          background.color=$BACKGROUND_COLOR                     \
                          background.height=$BACKGROUND_HEIGHT                   \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                          background.padding_right=3                             \
                          script="$PLUGIN_DIR/vpn.sh"                            \
                          click_script="$VPN_CLICK_SCRIPT"                       \

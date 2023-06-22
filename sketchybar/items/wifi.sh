WIFI_CLICK_SCRIPT="open 'x-apple.systempreferences:com.apple.preference.network?Wi-Fi'"

$SKETCHBAR_BIN --add item wifi right                                             \
               --set wifi update_freq=1                                          \
                          icon=                                                 \
                          icon.padding_left=16                                   \
                          icon.padding_right=4                                   \
                          icon.color=0xff9ece6a                                  \
                          label.padding_right=16                                 \
                          background.color=$BACKGROUND_COLOR                     \
                          background.height=$BACKGROUND_HEIGHT                   \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                          background.padding_right=3                             \
                          script="$PLUGIN_DIR/wifi.sh"                           \
                          click_script="$WIFI_CLICK_SCRIPT"                      \

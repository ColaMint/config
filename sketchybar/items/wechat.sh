$SKETCHBAR_BIN --add item 微信 right                                             \
               --set 微信 update_freq=10                                         \
                          icon=󰘑                                                 \
                          icon.color=0xff2fb608                                  \
                          icon.padding_left=16                                   \
                          icon.padding_right=4                                   \
                          label.padding_right=8                                  \
                          label.padding_right=16                                 \
                          background.color=$BACKGROUND_COLOR                     \
                          background.height=$BACKGROUND_HEIGHT                   \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                          background.padding_right=3                             \
                          script="$PLUGIN_DIR/app_status_label.sh"               \
                          click_script="open -a Wechat"                          \

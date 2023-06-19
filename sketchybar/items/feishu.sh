$SKETCHBAR_BIN --add item 飞书 right                                             \
               --set 飞书 update_freq=10                                         \
                          icon="󱗆"                                               \
                          icon.font="Font Awesome 6 Free:Solid:18"               \
                          icon.color=0xff3f72e8                                  \
                          icon.padding_left=16                                   \
                          icon.padding_right=4                                   \
                          label.color=$LABEL_COLOR                               \
                          label.font="$FONT:Medium:14.0"                         \
                          label.padding_right=8                                  \
                          label.padding_right=16                                 \
                          background.color=$BACKGROUND_COLOR                     \
                          background.height=$BACKGROUND_HEIGHT                   \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                          background.padding_right=3                             \
                          script="$PLUGIN_DIR/app_status_label.sh"               \
                          click_script="$EMAIL_CLICK_SCRIPT"                     \
                          click_script="open /Applications/Lark.app"             \

EMAIL_CLICK_SCRIPT="open -a 'Mail'"

$SKETCHBAR_BIN --add item email right                                            \
               --set email update_freq=10                                        \
                          icon=󰇮                                                 \
                          icon.color=0xff7aa2f7                                  \
                          icon.padding_left=16                                   \
                          icon.padding_right=8                                   \
                          label.padding_right=8                                  \
                          label.padding_right=16                                 \
                          background.color=$BACKGROUND_COLOR                     \
                          background.height=$BACKGROUND_HEIGHT                   \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                          background.padding_right=3                             \
                          script="$PLUGIN_DIR/email.sh"                          \
                          click_script="$EMAIL_CLICK_SCRIPT"                     \

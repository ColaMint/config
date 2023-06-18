EMAIL_CLICK_SCRIPT="open -a 'Mail'"

$SKETCHBAR_BIN --add item email left                                             \
               --set email update_freq=60                                        \
                          icon="󰇮"                                               \
                          icon.font="Font Awesome 6 Free:Solid:15.4"             \
                          icon.color=0xff7aa2f7                                  \
                          icon.padding_left=16                                   \
                          icon.padding_right=8                                   \
                          label.color=$LABEL_COLOR                               \
                          label.font="$FONT:Medium:14.0"                         \
                          label.padding_right=8                                  \
                          label.padding_right=16                                 \
                          background.color=$BACKGROUND_COLOR                     \
                          background.height=$BACKGROUND_HEIGHT                   \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                          background.padding_right=3                             \
                          script="$PLUGIN_DIR/email.sh"                          \
                          click_script="$EMAIL_CLICK_SCRIPT"                     \

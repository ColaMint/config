EMAIL_CLICK_SCRIPT="open -a 'Mail'"

$SKETCHBAR_BIN --add item email left                                             \
               --set email update_freq=60                                        \
                          icon="󰇮"                                               \
                          icon.font="Font Awesome 6 Free:Solid:15.4"             \
                          icon.padding_left=16                                   \
                          icon.padding_right=8                                   \
                          icon.color=0xff7aa2f7                                  \
                          label.font="$FONT:Medium:14.0"                         \
                          label.padding_right=8                                  \
                          label.padding_right=16                                 \
                          background.color=0xff252731                            \
                          background.height=33                                   \
                          background.corner_radius=20                            \
                          background.padding_right=3                             \
                          script="$PLUGIN_DIR/email.sh"                          \
                          click_script="$EMAIL_CLICK_SCRIPT"                     \

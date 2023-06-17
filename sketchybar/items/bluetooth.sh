BLUETOOTH_CLICK_SCRIPT="open /System/Library/PreferencePanes/Bluetooth.prefPane"

$SKETCHBAR_BIN --add item bluetooth right                                        \
               --set bluetooth update_freq=1                                     \
                          icon="󰂯"                                               \
                          icon.font="Font Awesome 6 Free:Solid:15.4"             \
                          icon.padding_left=16                                   \
                          icon.padding_right=8                                   \
                          icon.color=0xff7aa2f7                                  \
                          background.color=0xff252731                            \
                          background.height=33                                   \
                          background.corner_radius=20                            \
                          background.padding_right=3                             \
                          script="$PLUGIN_DIR/bluetooth.sh"                      \
                          click_script="$BLUETOOTH_CLICK_SCRIPT"                 \

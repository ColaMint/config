VPN_CLICK_SCRIPT="open /System/Library/PreferencePanes/Network.prefPane/"

$SKETCHBAR_BIN --add item vpn right                                             \
               --set vpn  update_freq=1                                          \
                          icon="󰖂"                                               \
                          icon.font="Font Awesome 6 Free:Solid:15.4"             \
                          icon.padding_right=4                                   \
                          icon.color=0xff9ece6a                                  \
                          icon.y_offset=-1                                           \
                          label.font="$FONT:Medium:14.0"                         \
                          label.color=0xffdfe1ea                                 \
                          label.padding_right=8                                  \
                          background.color=0xff252731                            \
                          background.height=33                                   \
                          background.corner_radius=20                            \
                          background.padding_right=8                             \
                          script="$PLUGIN_DIR/vpn.sh"                            \
                          click_script="$VPN_CLICK_SCRIPT"                       \
                          icon.padding_left=16 label.padding_right=16            \

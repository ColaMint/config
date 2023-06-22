MIC_CLICK_SCRIPT="open /System/Library/PreferencePanes/Sound.prefPane"

$SKETCHBAR_BIN --add item mic left                                               \
           --set mic update_freq=5                                               \
                       icon.padding_left=16                                      \
                       icon.padding_right=4                                      \
                       icon.color=0xff6c77bb                                     \
                       icon.y_offset=0                                           \
                       label.padding_right=16                                    \
                       background.color=$BACKGROUND_COLOR                        \
                       background.height=$BACKGROUND_HEIGHT                      \
                       background.corner_radius=$BACKGROUND_CORNER_RADIUS        \
                       background.padding_left=8                                 \
                       background.padding_right=3                                \
                       script="$PLUGIN_DIR/mic.sh"                               \
                       click_script="$MIC_CLICK_SCRIPT"                          \

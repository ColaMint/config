SOUND_CLICK_SCRIPT="open /System/Library/PreferencePanes/Sound.prefPane"

$SKETCHBAR_BIN --add item sound left                                             \
           --set sound update_freq=0                                             \
                       icon.padding_left=16                                      \
                       icon.padding_right=4                                      \
                       icon.color=0xff6c77bb                                     \
                       icon.y_offset=0                                           \
                       label.padding_right=16                                    \
                       background.color=$BACKGROUND_COLOR                        \
                       background.height=$BACKGROUND_HEIGHT                      \
                       background.corner_radius=$BACKGROUND_CORNER_RADIUS        \
                       background.padding_right=3                                \
                       script="$PLUGIN_DIR/sound.sh"                             \
                       click_script="$SOUND_CLICK_SCRIPT"                        \
           --subscribe sound volume_change                                       \

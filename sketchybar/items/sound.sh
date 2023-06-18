$SKETCHBAR_BIN --add item sound left                                                 \
           --set sound update_freq=1                                             \
                       icon.font="Font Awesome 6 Free:Solid:15.4"                \
                       icon.padding_right=4                                      \
                       icon.color=0xff6c77bb                                     \
                       icon.y_offset=0                                           \
                       label.font="$FONT:Medium:14.0"                            \
                       label.color=$LABEL_COLOR                                  \
                       label.padding_right=16                                    \
                       background.color=$BACKGROUND_COLOR                        \
                       background.height=$BACKGROUND_HEIGHT                      \
                       background.corner_radius=$BACKGROUND_CORNER_RADIUS        \
                       background.padding_left=8                                 \
                       background.padding_right=3                                \
                       script="$PLUGIN_DIR/sound.sh"                             \
                       icon.padding_left=16 label.padding_right=16               \

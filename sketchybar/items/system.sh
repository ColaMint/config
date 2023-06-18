### cpu Widget ###
$SKETCHBAR_BIN --add item cpu left                                                   \
               --set cpu  update_freq=10                                             \
                          icon=""                                                   \
                          icon.font="Font Awesome 6 Free:Solid:15.4"                 \
                          icon.padding_left=16                                       \
                          icon.padding_right=4                                       \
                          icon.color=0xfff6768e                                      \
                          icon.y_offset=-1                                           \
                          label="??%"                                                \
                          label.font="$FONT:Medium:14.0"                             \
                          label.color=$LABEL_COLOR                                   \
                          label.padding_right=16                                     \
                          background.color=$BACKGROUND_COLOR                         \
                          background.height=$BACKGROUND_HEIGHT                       \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS         \
                          background.padding_right=3                                 \
                          script="$PLUGIN_DIR/cpu.sh"                                \

### mem Widget ###
$SKETCHBAR_BIN --add item mem left                                                   \
               --set mem  update_freq=10                                             \
                          icon=""                                                   \
                          icon.font="Font Awesome 6 Free:Solid:15.4"                 \
                          icon.padding_left=16                                       \
                          icon.padding_right=4                                       \
                          icon.color=0xff4ed2e3                                      \
                          icon.y_offset=0                                            \
                          label="??%"                                                \
                          label.font="$FONT:Medium:14.0"                             \
                          label.color=$LABEL_COLOR                                   \
                          label.padding_right=16                                     \
                          background.color=$BACKGROUND_COLOR                         \
                          background.height=$BACKGROUND_HEIGHT                       \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS         \
                          background.padding_right=3                                 \
                          script="$PLUGIN_DIR/mem.sh"                                \

### disk Widget ###
$SKETCHBAR_BIN --add item disk left                                                  \
               --set disk update_freq=10                                             \
                          icon=""                                                   \
                          icon.font="Font Awesome 6 Free:Solid:13.4"                 \
                          icon.padding_left=16                                       \
                          icon.padding_right=4                                       \
                          icon.color=0xfffbc02d                                      \
                          icon.y_offset=1                                            \
                          label.font="$FONT:Medium:14.0"                             \
                          label.color=$LABEL_COLOR                                   \
                          label.padding_right=16                                     \
                          background.color=$BACKGROUND_COLOR                         \
                          background.height=$BACKGROUND_HEIGHT                       \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS         \
                          background.padding_right=3                                 \
                          script="$PLUGIN_DIR/disk.sh"                               \

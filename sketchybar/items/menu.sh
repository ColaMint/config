$SKETCHBAR_BIN --add item arch left                                                             \
               --set arch icon="󰀵"                                                              \
                          icon.font.size=20                                                     \
                          icon.color=0xff7aa1f7                                                 \
                          icon.y_offset=1                                                       \
                          background.drawing=on                                                 \
                          background.padding_left=13                                            \
                          click_script="open -a Launchpad"                                      \

$SKETCHBAR_BIN --add item      seperator left                                                   \
               --set seperator background.image="~/.config/sketchybar/assets/seperator.png"     \
                               background.image.scale=0.09                                      \
                               background.drawing=on                                            \
                               background.padding_left=1                                        \
                               background.padding_right=3                                       \

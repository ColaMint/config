$SKETCHBAR_BIN --add item cpu left                                                   \
               --set cpu  update_freq=10                                             \
                          icon=                                                     \
                          icon.padding_left=16                                       \
                          icon.padding_right=4                                       \
                          icon.color=0xfff6768e                                      \
                          icon.y_offset=-1                                           \
                          label="??%"                                                \
                          label.padding_right=16                                     \
                          background.color=$BACKGROUND_COLOR                         \
                          background.height=$BACKGROUND_HEIGHT                       \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS         \
                          background.padding_right=3                                 \
                          script="$PLUGIN_DIR/cpu.sh"                                \
                          click_script="open -a \"Activity Monitor\"; osascript -e 'tell application \"Activity Monitor\" to activate' -e 'tell application \"System Events\" to tell process \"Activity Monitor\" to click radio button 1 of radio group 1 of UI element 3'"

$SKETCHBAR_BIN --add item mem left                                                   \
               --set mem  update_freq=10                                             \
                          icon=󰍛                                                     \
                          icon.font.size=20                                          \
                          icon.padding_left=16                                       \
                          icon.padding_right=4                                       \
                          icon.color=0xff4ed2e3                                      \
                          icon.y_offset=-1                                           \
                          label="??%"                                                \
                          label.padding_right=16                                     \
                          background.color=$BACKGROUND_COLOR                         \
                          background.height=$BACKGROUND_HEIGHT                       \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS         \
                          background.padding_right=3                                 \
                          script="$PLUGIN_DIR/mem.sh"                                \
                          click_script="open -a \"Activity Monitor\"; osascript -e 'tell application \"Activity Monitor\" to activate' -e 'tell application \"System Events\" to tell process \"Activity Monitor\" to click radio button 2 of radio group 1 of UI element 3'"

$SKETCHBAR_BIN --add item disk left                                                  \
               --set disk update_freq=10                                             \
                          icon=                                                     \
                          icon.padding_left=16                                       \
                          icon.padding_right=4                                       \
                          icon.color=0xfffbc02d                                      \
                          icon.y_offset=-1                                           \
                          label.padding_right=16                                     \
                          background.color=$BACKGROUND_COLOR                         \
                          background.height=$BACKGROUND_HEIGHT                       \
                          background.corner_radius=$BACKGROUND_CORNER_RADIUS         \
                          background.padding_right=3                                 \
                          script="$PLUGIN_DIR/disk.sh"                               \
                          click_script="open -a \"System Preferences\"; osascript -e 'tell application \"System Preferences\" to activate' -e 'tell application \"System Preferences\" to reveal pane id \"com.apple.settings.Storage\"'"

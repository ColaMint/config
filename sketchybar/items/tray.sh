PADDING_LEFT=-15
UPDATE_FREG=3

$SKETCHBAR_BIN --add alias 'TextInputMenuAgent' right                 \
               --set 'TextInputMenuAgent'                             \
                     alias.color=0xffffffff                           \
                     icon.padding_left=0                              \
                     icon.padding_right=0                             \
                     background.padding_right=0                       \
                     background.padding_left=5            \
                     update_freq=$UPDATE_FREG                         \
                     script="$PLUGIN_DIR/tray.sh"                     \

#$SKETCHBAR_BIN --add alias 'Lark Helper' right                        \
#               --set 'Lark Helper'                                    \
#                     alias.color=0xff3f72e8                           \
#                     icon.padding_left=0                              \
#                     icon.padding_right=0                             \
#                     background.padding_right=0                       \
#                     background.padding_left=$PADDING_LEFT            \
#                     click_script="open /Applications/Lark.app"       \
#                     update_freq=$UPDATE_FREG                         \
#                     script="$PLUGIN_DIR/tray.sh"                     \

#$SKETCHBAR_BIN --add alias '微信' right                               \
#               --set '微信'                                           \
#                     alias.color=0xff2fb608                           \
#                     icon.padding_left=0                              \
#                     icon.padding_right=0                             \
#                     background.padding_right=0                       \
#                     background.padding_left=$PADDING_LEFT            \
#                     click_script="open -a Wechat"                    \
#                     update_freq=$UPDATE_FREG                         \
#                     script="$PLUGIN_DIR/tray.sh"                     \

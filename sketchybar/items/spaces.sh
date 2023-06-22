#!/usr/bin/env sh

export SPACE_CLICK_SCRIPT="yabai -m space --focus \$SID 2>/dev/null"

$SKETCHBAR_BIN --add   space          space_template center                                  \
               --set   space_template icon.color=0xff583794                                  \
                                      icon.highlight_color=0xffe0af68                        \
                                      label.drawing=off                                      \
                                      drawing=on                                             \
                                      updates=on                                             \
                                      associated_display=1                                   \
                                      icon.padding_left=0                                    \
                                      icon.padding_right=64                                  \
                                      icon.font.size=18                                      \
                                      background.color=0xff252630                            \
                                      background.height=$BACKGROUND_HEIGHT                   \
                                      background.corner_radius=$BACKGROUND_CORNER_RADIUS     \
                                      background.padding_right=-24                           \
                                      background.padding_left=-24                            \
                                      click_script="$SPACE_CLICK_SCRIPT"                     \
                                      ignore_association=on                                  \
                                                                                             \
               --clone spaces.1       space_template                                         \
               --set   spaces.1       associated_space=1                                     \
                                      icon=󰕷                                                 \
                                      script="$PLUGIN_DIR/space.sh"                          \
                                      icon.padding_left=20                                   \
                                                                                             \
               --clone spaces.2       space_template                                         \
               --set   spaces.2       associated_space=2                                     \
                                      icon=󰊯                                                 \
                                      script="$PLUGIN_DIR/space.sh"                          \
                                                                                             \
               --clone spaces.3       space_template                                         \
               --set   spaces.3       associated_space=3                                     \
                                      icon=󰘑                                                 \
                                      drawing=on                                             \
                                      script="$PLUGIN_DIR/space.sh"                          \
                                                                                             \
               --clone spaces.4       space_template                                         \
               --set   spaces.4       associated_space=4                                     \
                                      icon=󱗆                                                 \
                                      script="$PLUGIN_DIR/space.sh"                          \
                                                                                             \
               --clone spaces.5       space_template                                         \
               --set   spaces.5       associated_space=5                                     \
                                      icon=󰇮                                                 \
                                      script="$PLUGIN_DIR/space.sh"                          \
                                                                                             \
               --clone spaces.6       space_template                                         \
               --set   spaces.6       associated_space=6                                     \
                                      icon=󰎆                                                 \
                                      script="$PLUGIN_DIR/space.sh"                          \
                                                                                             \
               --clone spaces.7       space_template                                         \
               --set   spaces.7       associated_space=7                                     \
                                      icon=                                                 \
                                      script="$PLUGIN_DIR/space.sh"                          \
                                                                                             \
               --clone spaces.8       space_template                                         \
               --set   spaces.8       associated_space=8                                     \
                                      icon=                                                 \
                                      script="$PLUGIN_DIR/space.sh"                          \
                                                                                             \
               --clone spaces.9       space_template                                         \
               --set   spaces.9       associated_space=9                                     \
                                      icon=󰆼                                                 \
                                      script="$PLUGIN_DIR/space.sh"                          \
                                                                                             \
               --clone spaces.10      space_template                                         \
               --set   spaces.10      associated_space=10                                    \
                                      icon=󰈙                                                 \
                                      script="$PLUGIN_DIR/space.sh"                          \
                                      icon.padding_right=0                                   \
                                                                                             \
               --add   bracket        spaces                                                 \
                                      spaces.1                                               \
                                      spaces.2                                               \
                                      spaces.3                                               \
                                      spaces.4                                               \
                                      spaces.5                                               \
                                      spaces.6                                               \
                                      spaces.7                                               \
                                      spaces.8                                               \
                                      spaces.9                                               \
                                      spaces.10                                              \

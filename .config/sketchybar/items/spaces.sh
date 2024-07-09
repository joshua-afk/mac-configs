#!/bin/bash

SPACE_ICONS=("一" "二" "三" "四" "五" "六" "七" "八" "九" "十")
SPACES=()

for i in "${!SPACE_ICONS[@]}";
do
  sid=$(($i + 1))
  SPACES+=(space.$sid)

  sketchybar --add space space.$sid left  \
             --set space.$sid space=$sid  \
                              icon=${SPACE_ICONS[i]}                        \
                              label.y_offset=-1                             \
                              label.padding_right=20                        \
                              label.font="sketchybar-app-font:Regular:16.0" \
                              background.drawing=on                         \
                              script="$PLUGIN_DIR/space.sh"
done

sketchybar --add item space_separator left                             \
           --set space_separator icon="􀆊"                              \
                                 icon.color="$TEXT"                    \
                                 icon.padding_left=4                   \
                                 label.drawing=off                     \
                                 background.drawing=off                \
                                 script="$PLUGIN_DIR/space_windows.sh" \
           --subscribe space_separator space_windows_change

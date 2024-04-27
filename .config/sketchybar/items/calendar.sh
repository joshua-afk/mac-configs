#!/bin/bash

sketchybar --add item calendar right \
           --set calendar icon=􀉉  icon.color=$RED\
           --set calendar update_freq=10 \
                          script="$PLUGIN_DIR/calendar.sh"

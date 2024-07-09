#!/bin/bash

sketchybar --add item calendar right \
           --set calendar icon=􀉉 icon.font="SF Pro:Bold:15.0"\
           --set calendar update_freq=10 \
                          script="$PLUGIN_DIR/calendar.sh"

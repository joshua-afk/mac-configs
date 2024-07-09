#!/bin/bash

# sketchybar --set $NAME label="$(date +'%a %d %b 一 %I:%M %p')"
sketchybar --set $NAME icon="$(date '+%a %d. %b')" label="$(date '+%I:%M %p')"

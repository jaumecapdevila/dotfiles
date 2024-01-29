#!/bin/bash

time=(
  icon="$ICON_CLOCK"
  script="$PLUGIN_DIR/time.sh"
  update_freq=60
)

sketchybar --add time time right \
  --set time "${time[@]}" \
  --subscribe calendar system_woke

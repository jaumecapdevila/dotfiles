#!/bin/bash

calendar=(
  icon.color="$COLOR_WHITE"
  icon="$ICON_CALENDAR"
  label.color="$COLOR_WHITE"
  script="$PLUGIN_DIR/calendar.sh"
  update_freq=30
)

sketchybar --add item calendar right       \
  --set calendar "${calendar[@]}" \
  --subscribe calendar system_woke

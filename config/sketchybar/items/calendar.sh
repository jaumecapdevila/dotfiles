#!/bin/bash

calendar=(
  icon="$ICON_CALENDAR"
  script="$PLUGIN_DIR/calendar.sh"
  update_freq=30
)

sketchybar --add item calendar right \
  --set calendar "${calendar[@]}" \
  --subscribe calendar system_woke

#!/bin/bash

slack=(
  icon="$ICON_CHAT"
  update_freq=30
  label.font="$FONT_FACE:Medium:$FONT_SIZE"
  script="$PLUGIN_DIR/slack.sh"
)

sketchybar --add item slack left \
  --set slack "${slack[@]}" \
  --subscribe slack system_woke

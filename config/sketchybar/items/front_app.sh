#!/bin/bash

front_app=(
  click_script="open -a 'Mission Control'"
  icon.color="$COLOR_BLUE"
  label.color="$COLOR_BLUE"
  script="$PLUGIN_DIR/front_app.sh"
)

sketchybar --add item front_app left \
  --set front_app "${front_app[@]}" \
  --subscribe front_app front_app_switched

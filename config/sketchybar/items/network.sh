#!/bin/bash

network=(
  update_freq=30
  script="$PLUGIN_DIR/network.sh"
)

sketchybar --add item network right \
  --set network "${network[@]}" \
  --subscribe wifi wifi_change

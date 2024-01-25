#!/bin/bash

volume=(
  icon.color="$COLOR_WHITE"
  label.color="$COLOR_WHITE"
  script="$PLUGIN_DIR/volume.sh"
)

sketchybar --add item volume right \
  --set volume "${volume[@]}" \
  --subscribe volume volume_change

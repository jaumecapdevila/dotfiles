#!/bin/bash

keyboard=(
  # icon.drawing=off
  icon="⌨️ "
  label.font="$FONT_FACE:Medium:$FONT_SIZE"
  script="$PLUGIN_DIR/keyboard.sh"
)

sketchybar --add item keyboard right \
  --set keyboard "${keyboard[@]}" \
  --add event keyboard_change "AppleSelectedInputSourcesChangedNotification" \
  --subscribe keyboard keyboard_change

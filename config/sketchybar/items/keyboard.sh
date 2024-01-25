#!/bin/bash

keyboard=(
  icon.color="$COLOR_WHITE"
  icon="$ICON_KEYBOARD"
  label.color="$COLOR_WHITE"
  label.font="$FONT_FACE:Medium:$FONT_SIZE"
  script="$PLUGIN_DIR/keyboard.sh"
)

sketchybar --add item keyboard right \
  --set keyboard "${keyboard[@]}" \
  --add event keyboard_change "AppleSelectedInputSourcesChangedNotification" \
  --subscribe keyboard keyboard_change

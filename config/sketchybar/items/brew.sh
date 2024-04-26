#!/bin/bash

# Trigger the brew_udpate event when brew update or upgrade is run from cmdline
# e.g. via function in .zshrc

brew=(
  icon="$ICON_PACKAGE"
  icon.color="$COLOR_YELLOW"
  label=0
  label.color="$COLOR_YELLOW"
  script="$PLUGIN_DIR/brew.sh"
)

sketchybar --add event brew_update \
  --add item brew left \
  --set brew "${brew[@]}" \
  --subscribe brew brew_update

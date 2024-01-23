#!/bin/bash

if [ "$SENDER" = "front_app_switched" ]; then
  # Set the app name and app icon
  sketchybar --set $NAME icon.background.image="app.$INFO" icon.background.image.scale=0.5
  # sketchybar --set $NAME label="$INFO" icon.background.image="app.$INFO" icon.background.image.scale=0.5
fi

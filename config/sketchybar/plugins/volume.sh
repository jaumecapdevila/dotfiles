#!/bin/sh

# The volume_change event supplies a $INFO variable in which the current volume
# percentage is passed to the script.

if [ "$SENDER" = "volume_change" ]; then
  sketchybar --set $NAME icon="🎧" label="$INFO%"
fi

#!/usr/bin/env sh

source "$CONFIG_DIR/theme/colors.sh"

# example output: "StatusLabel"={ "label"="2" }
SLACK_STATUS=$(lsappinfo info -only StatusLabel "Slack")
STATUS_LABEL=$(echo "$SLACK_STATUS" | grep -o '"label"=".*"' | cut -d'"' -f4)

# change color depending on status and number of notifications
case "$STATUS_LABEL" in
"•")
  COLOR="$COLOR_RED"
  ;;
[0-9])
  COLOR="$COLOR_YELLOW"
  ;;
*)
  STATUS_LABEL="0"
  COLOR="$COLOR_MAGENTA"
  ;;
esac

sketchybar --set "$NAME" icon.color="$COLOR" label.color="$COLOR" label="$STATUS_LABEL"

#!/bin/bash

source "$CONFIG_DIR/theme/icons.sh"

if [ "$SENDER" != "front_app_switched" ]; then
  exit 0
fi

FRONT_APP="$INFO"

# map app name to icon
case "$FRONT_APP" in
"Finder")
  ICON="$ICON_FILE"
  ;;
"iTerm2")
  ICON="$ICON_TERM"
  ;;
"Visual Studio Code")
  ICON="$ICON_DEV"
  ;;
"Code")
  ICON="$ICON_DEV"
  ;;
"Arc")
  ICON="$ICON_WEB"
  ;;
"Safari")
  ICON="$ICON_WEB"
  ;;
"Firefox")
  ICON="$ICON_WEB"
  ;;
"Mail")
  ICON="$ICON_MAIL"
  ;;
"Microsoft Outlook")
  ICON="$ICON_MAIL"
  ;;
"Calendar")
  ICON="$ICON_CALENDAR"
  ;;
"Music")
  ICON="$ICON_MUSIC"
  ;;
"Spotify")
  ICON="$ICON_MUSIC"
  ;;
"Slack")
  ICON="$ICON_CHAT"
  ;;
"Messages")
  ICON="$ICON_CHAT"
  ;;
"Microsoft Teams")
  ICON="$ICON_CHAT"
  ;;
"Discord")
  ICON="$ICON_CHAT"
  ;;
"Reminders")
  ICON="$ICON_LIST"
  ;;
"Notes")
  ICON="$ICON_NOTE"
  ;;
"Obsidian")
  ICON="$ICON_NOTE"
  ;;
"Preview")
  ICON="$ICON_PREVIEW"
  ;;
"TextEdit")
  ICON="$ICON_NOTE"
  ;;
"Calculator")
  ICON="$ICON_CALC"
  ;;
*)
  ICON="$ICON_APP"
  ;;
esac

sketchybar --set $NAME label="$FRONT_APP" icon="$ICON"

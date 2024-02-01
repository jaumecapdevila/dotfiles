#!/bin/sh

source "$CONFIG_DIR/theme/colors.sh"
source "$CONFIG_DIR/theme/icons.sh"

NETWORK_INFO=$(scutil --nwi)
IP_ADDRESS=$(echo "$NETWORK_INFO" | grep address | sed 's/.*://' | tr -d ' ' | head -1)
IS_VPN=$(echo "$NETWORK_INFO" | grep -m1 'utun' | awk '{ print $1 }')

if [[ $IS_VPN != "" ]]; then
  COLOR="$COLOR_RED"
  ICON="$ICON_VPN"
  LABEL="VPN"
elif [[ $IP_ADDRESS != "" ]]; then
  COLOR="$COLOR_BLUE"
  ICON="$ICON_WIFI"
  LABEL="$IP_ADDRESS"
else
  COLOR="$COLOR_FOREGROUND"
  ICON="$ICON_WIFI_OFF"
  LABEL="Not Connected"
fi

sketchybar --set $NAME icon="$ICON" label="$LABEL"

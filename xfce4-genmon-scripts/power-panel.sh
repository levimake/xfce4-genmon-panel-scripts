#!/usr/bin/env bash

#genmon-script for opening the logout.. menu ;-)

POWER_ICON=$(echo "\uf011")

# Panel
INFO="<txt>"
INFO+="${POWER_ICON}"
INFO+="</txt>"
INFO+="<txtclick>xfce4-session-logout</txtclick>"

# Tooltip
MORE_INFO="<tool>"
MORE_INFO+="${NULL_VALUE}"  #to hide the tooltip
MORE_INFO+="</tool>"

# Panel Print
echo -e "${INFO}"

# Tooltip Print
echo -e "${MORE_INFO}"

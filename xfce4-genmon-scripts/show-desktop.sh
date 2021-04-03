#!/usr/bin/env bash

#genmon script for showing desktop
showDesktopIcon=$(echo "\uf6c3")

INFO="<txt>"
INFO+="<span weight='Regular' fgcolor='White'>" 
INFO+="${showDesktopIcon} "
INFO+="</span>"
INFO+="</txt>"
INFO+="<txtclick>xdotool key ctrl+alt+d</txtclick>"
echo -e "${INFO}"

MORE_INFO="<tool>"
MORE_INFO+="${NULL_VALUE}" #to hide the tooltip
MORE_INFO+="</tool>"

echo -e "${MORE_INFO}"
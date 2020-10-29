#!/usr/bin/env bash

#genmon script for minimizing the active window

WINDOW_TITLE=$(xdotool getactivewindow getwindowname)
NUMBER_OF_OPENED_WINDOWS=$(wmctrl -l | wc -l)

INFO="<txt>"
INFO+="<span weight='Regular' fgcolor='White'>" 
if [ "${NUMBER_OF_OPENED_WINDOWS}" -gt 3 ] && [ "${WINDOW_TITLE}" != "Desktop" ]; then # hide the minimize button when the active window becomes Desktop
    INFO+="絛"
else
    INFO+=""
fi
INFO+="</span>"
INFO+="</txt>"
if [ "${NUMBER_OF_OPENED_WINDOWS}" -gt 3 ] && [ "${WINDOW_TITLE}" != "Desktop" ]; then # we dont want to hide the desktop; it'll crash everything
 INFO+="<txtclick>xdotool windowminimize $(xdotool getactivewindow)</txtclick>"
fi
echo -e "${INFO}"

MORE_INFO="<tool>"
MORE_INFO+="${NULL_VALUE}" #to hide the tooltip
MORE_INFO+="</tool>"

echo -e "${MORE_INFO}"
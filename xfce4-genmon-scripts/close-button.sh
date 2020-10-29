#!/usr/bin/env bash

#genmon script for closing the active window

WINDOW_TITLE=$(xdotool getactivewindow getwindowname)
NUMBER_OF_OPENED_WINDOWS=$(wmctrl -l | wc -l)

INFO="<txt>"
INFO+="<span weight='Regular' fgcolor='White'>" 
if [ "${NUMBER_OF_OPENED_WINDOWS}" -gt 3 ] && [ "${WINDOW_TITLE}" != "Desktop" ]; then # hide the close button when the active window becomes Desktop
    INFO+=""
else
    INFO+=""
fi
INFO+="</span>"
INFO+="</txt>"
if [ "${NUMBER_OF_OPENED_WINDOWS}" -gt 3 ] && [ "${WINDOW_TITLE}" != "Desktop" ]; then # we dont want to close the desktop; it'll crash everything
 INFO+="<txtclick>xdotool windowkill `xdotool getactivewindow`</txtclick>"
fi
echo -e "${INFO}"

MORE_INFO="<tool>"
MORE_INFO+="${NULL_VALUE}" #just to hide the tooltip
MORE_INFO+="</tool>"

echo -e "${MORE_INFO}"
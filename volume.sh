#!/usr/bin/env bash

#genmon script for displaying the volume
#clicking the button opens "PulseAudio Volume Control (pavucontrol)"

# pulsemixer --get-volume | awk {'print $1'}

readonly VOLUME_VALUE=`pulsemixer --get-volume | awk {'print $1'}`

if [ "${VOLUME_VALUE}" -lt 25 ]; then
  VOLUME_ICON=""
elif [ "${VOLUME_VALUE}" -ge 25 ] && [ "${VOLUME_VALUE}" -le 60 ]; then
  VOLUME_ICON=""
else
  VOLUME_ICON=""
fi

MUTE_STATUS=`pactl list sinks | awk '/Mute:/{print $2;exit}'`

if [[ $MUTE_STATUS == "yes" ]]; then
  VOLUME_ICON="🔇"
fi

VOLUME="${VOLUME_ICON} "
VOLUME+="${VOLUME_VALUE}"
# Panel
INFO="<txt>"
INFO+="${VOLUME}"
INFO+="</txt>"

if command -v pavucontrol >/dev/null 2>&1; then
  INFO+="<txtclick>pavucontrol</txtclick>"     # clicking on the icon opens XFCE power manager
fi

# CSS Styling
CSS="<css>"
CSS+=".genmon_valuebutton {
      background-color: #e47841; 
      color:#ffffff; 
      padding-left:10px; 
      padding-right:10px; 
      font-weight:bold;
    } 
    .genmon_valuebutton:hover {
      border: 0px solid #fff;
    }
    "
CSS+="</css>"

# Panel Print
echo -e "${INFO}"

# Add Styling
echo -e "${CSS}"


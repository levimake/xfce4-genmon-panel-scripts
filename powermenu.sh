!/usr/bin/env bash

#genmon script for displaying the time
#displays date and time on the tooltip

# set Label = Hello

# xfce4-session-logout

# Panel
INFO="<txt>"
INFO+="⏻"
INFO+="</txt>"
INFO+="<txtclick>xfce4-session-logout</txtclick>"

# CSS Styling
CSS="<css>"
CSS+=".genmon_valuebutton {
      background-color: #e06c75; 
      color:#ffffff; 
      padding-left:10px; 
      padding-right:10px; 
    } 
    .genmon_label {color:green}"
CSS+="</css>"


# Panel Print
echo -e "${INFO}"
#
# Add Styling
echo -e "${CSS}"

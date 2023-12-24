!/usr/bin/env bash

#genmon script for displaying the time
#displays date and time on the tooltip

# set Label = Hello

TIME=$(echo "\ue383 ")
DATE=$(echo "\uf073 ")
DATE+=`date '+ %d %B %A %H:%M'`
TIME+=`date '+%H:%M'`

# Panel
INFO="<txt>"
INFO+="${TIME}"
INFO+="</txt>"

# Tooltip
MORE_INFO="<tool>"
MORE_INFO+="${DATE}"
MORE_INFO+="</tool>"

# CSS Styling
CSS="<css>"
CSS+=".genmon_value {
      background-color: #5c97a7; 
      color:#ffffff; 
      padding-left:10px; 
      padding-right:10px; 
    } 
    .genmon_label {color:green}"
CSS+="</css>"


# Panel Print
echo -e "${INFO}"

# Tooltip Print
echo -e "${MORE_INFO}"

# Add Styling
echo -e "${CSS}"

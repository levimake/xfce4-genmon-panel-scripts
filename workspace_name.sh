#! /bin/bash

#ws_count=$(xfconf-query -c xfwm4 -p /general/workspace_count)

#get the array of workspace names
ws_names=($(xfconf-query -c xfwm4 -p /general/workspace_names | tail -n+3))

#get the current workspace number
CURRENT_WORKSPACE=$(($(wmctrl -d | grep \* | cut -d' ' -f1)))

# Panel
INFO="<txt>"
INFO+="${ws_names[CURRENT_WORKSPACE]}"
INFO+="</txt>"

# CSS Styling
CSS="<css>"
CSS+="/* ADD YOUR CSS HERE */ }" 
CSS+="</css>"


# Panel Print
echo -e "${INFO}"

# Add Styling
echo -e "${CSS}"


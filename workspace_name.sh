#! /bin/bash

# Pull column 10 (first word in worskpace name) till end of line from the line with an * (signifying current workspace) in the output of `wmctrl -d`
CURRENT_WORKSPACE=$(wmctrl -d | awk '/\*/ {for (i=10; i<=NF; i++) printf "%s ", $i}')

# Panel
INFO="<txt>"
INFO+="$CURRENT_WORKSPACE"
INFO+="</txt>"

# CSS Styling
CSS="<css>"
CSS+="/* ADD YOUR CSS HERE */ }" 
CSS+="</css>"

# Panel Print
echo -e "${INFO}"

# Add Styling
echo -e "${CSS}"

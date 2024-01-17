#! /bin/bash

# Pull column 10 (first word in worskpace name) till end of line from the line with an * (signifying current workspace) in the output of `wmctrl -d`
CURRENT_WORKSPACE=$(wmctrl -d | awk '/\*/ {for (i=10; i<=NF; i++) printf "%s ", $i}')

# CSS Styling
CSS="<css>"
CSS+="/* ADD YOUR CSS HERE */ }" 
CSS+="</css>"

# Print the name of the current workspace encapsulated by `txt` tags for Genmon
printf '<txt>%s</txt>' "$CURRENT_WORKSPACE"

# Add Styling
echo -e "${CSS}"

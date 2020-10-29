#sidebar menu with search icon

MENU_ICON=$(echo "\uf002")

# Panel
INFO="<txt>"
INFO+="${MENU_ICON}"
INFO+="</txt>"
INFO+="<txtclick>rofi -combi-modi drun -theme sidetab  -show drun -display-drun "Apps" -icon-theme "Papirus" -show-icons</txtclick>"

# Tooltip
MORE_INFO="<tool>"
MORE_INFO+="${NULL_VALUE}" #to hide the tooltip
MORE_INFO+="</tool>"

# Panel Print
echo -e "${INFO}"

# Tooltip Print
echo -e "${MORE_INFO}"

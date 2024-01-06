# xfce4-genmon-panel-scripts

With XFCE4, you can do rice your panels like they do in Polybar, i3wm etc. GenMon is a plugin from XFCE which helps you run bash scripts as a widget on the panel. By utilizing this widget, ricing the panel becomes real fun.

# Panel Preview

![](https://github.com/levimake/xfce4-genmon-panel-scripts/blob/main/screenshots/happyxmas.png)

![](https://github.com/levimake/xfce4-genmon-panel-scripts/blob/main/screenshots/genmon.png)

### Genmon Scripts

- Memory usage
    - Shows the total RAM usage on the panel
    - Detailed description as tooltip when hovered
- Date and Time
    - Shows HH:MM on the panel
    - Display Date and Time on tooltip when hovered
- Volume
    - Display different icons based on the volume levels and when muted.
    - Opens pavucontrol when clicked.
- Battery 
    - Different styles based on plugged in / discharging and the battery levels.
    - Opens XFCE Power Manager when clicked.
- Power button
    - Opens xfce4 logout menu when clicked.

### Required add-ons

- Font which supports emojis (eg: noto-fonts-emoji)
- I used FiraCode Bold for the genmon plugins
- xdotool (For the window title)
- wmctrl (For the workspace name script)

### Additional Information
When using the volume genmon script and removing xfce pulseaudio plugin, the keyboard shortcuts for raising and lowering the volume levels will stop to work. Therefore, please add these shortcut keys to control the volume levels:
- Audio Mute:
```
/usr/bin/pactl set-sink-mute 0 toggle
```
- Raise volume by 5%
```
/usr/bin/pactl set-sink-volume 0 +5%
```
- Lower volume by 5%
```
/usr/bin/pactl set-sink-volume 0 -5%
```

### Using Genmon Scripts

 - Download the Genmon scripts directory from this repo.
 - Add an XFCE Genmon plugin
  - Hide the labels
  - Set the update period for the plugin accordingly
  - You are done setting up the plugins
  
![](https://github.com/levimake/xfce4-genmon-panel-scripts/blob/main/screenshots/addPlugin.png)

 #### References
 See [xfce4-genmon-scripts](https://github.com/xtonousou/xfce4-genmon-scripts) by [xtonousou](https://github.com/xtonousou)
 - [xfce4-genmon css styling](https://github.com/xfce-mirror/xfce4-genmon-plugin/blob/master/CSS%20Styling.txt)
 - [xfce4 genmon plugin usage - xfce4 docs](https://docs.xfce.org/panel-plugins/xfce4-genmon-plugin/start#usage)

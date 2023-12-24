# xfce4-genmon-panel-scripts

With XFCE4, you can do rice your panels like they do in Polybar, i3wm etc. GenMon is a plugin from XFCE which helps you run bash scripts as a widget on the panel. By utilizing this widget, ricing the panel becomes real fun.

# Panel Preview

![](https://github.com/levimake/xfce4-genmon-panel-scripts/blob/main/screenshots/happyxmas.png)

![](https://github.com/levimake/xfce4-genmon-panel-scripts/blob/main/screenshots/genmon.png)

### Genmon Scripts

- Memory usage
- Date and Time
- Volume
- Battery 
- Power button

### Required add-ons

- Font which supports emojis (eg: noto-fonts-emoji)
- I used FiraCode Bold for the genmon plugins

### Using Genmon Scripts

 - Download the Genmon scripts directory from this repo.
 - Add an XFCE Genmon plugin
 - Give the command as
 ```sh
 bash \path\to\our\script\script.sh
 ```
  - Hide the labels
  - Set the update period for the plugin accordingly
  - You are done setting up the plugins
  
 #### References
 See [xfce4-genmon-scripts](https://github.com/xtonousou/xfce4-genmon-scripts) by [xtonousou](https://github.com/xtonousou)
 - [xfce4-genmon css styling](https://git.xfce.org/panel-plugins/xfce4-genmon-plugin/tree/CSS%20Styling.txt)
 - [xfce4 genmon plugin usage - xfce4 docs](https://docs.xfce.org/panel-plugins/xfce4-genmon-plugin/start#usage)

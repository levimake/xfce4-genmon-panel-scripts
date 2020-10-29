# xfce4-genmon-panel-scripts

With XFCE4, you can do rice your panels like they do in Polybar, i3wm etc. GenMon is a plugin from XFCE which helps you run bash scripts as a widget on the panel. By utilizing this widget, ricing the panel becomes real fun.

# Panel Preview

![XFCE4-Panel-Genmon](https://github.com/levimake/xfce4-genmon-panel-rices/blob/main/screenshots/panel.png)

### Genmon Scripts

- App search (rofi)
- Window Title (Clicking on it opens rofi (onedark) window switcher)
- Minimize button
- Close button
- Clock
- Battery 
- Power button
- (A Todo-list with rofi is on the works)
- (Genmon showing cpu, memory usage will be built soon)

### Required add-ons

- xdotool (for the window title, minimize and close button's function to work)
- nerd-fonts

### Additional Tweaks

- Custom CSS in gtk.css to add the background and rounded corners in the genmon plugins and workspace switcher from XFCE
- Using font icons as Workspace switcher names to add to the look

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
  
 #### Custom Font Icons
 See [Nerd Fonts](https://www.nerdfonts.com/cheat-sheet)
 
 #### References
 See [xfce4-genmon-scripts](https://github.com/xtonousou/xfce4-genmon-scripts) by [xtonousou](https://github.com/xtonousou)

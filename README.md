# xfce4-genmon-panel-scripts

With XFCE4, you can do rice your panels like they do in Polybar, i3wm etc. GenMon is a plugin from XFCE which helps you run bash scripts as a widget on the panel. By utilizing this widget, ricing the panel becomes real fun.

# Panel Preview

## Style 1

![](https://github.com/levimake/xfce4-genmon-panel-scripts/blob/main/screenshots/style1/panel1-a.png)

![](https://github.com/levimake/xfce4-genmon-panel-scripts/blob/main/screenshots/style1/panel1-b.png)

## Style 2

![](https://github.com/levimake/xfce4-genmon-panel-scripts/blob/main/screenshots/style2/panel2.jpg)

![](https://github.com/levimake/xfce4-genmon-panel-scripts/blob/main/screenshots/style2/panel2-1.png)

### Genmon Scripts

- App search (rofi)
- Window Title (Clicking on it opens rofi (onedark) window switcher)
- Minimize button
- Close button
- Clock
- Battery 
- Power button
- Show desktop button
- Memory usage
- (A Todo-list with rofi is on the works)

### Required add-ons

- xdotool (for the window title, minimize and close button's function to work)
- nerd-fonts

### Additional Tweaks

- Custom CSS in gtk.css to add the background and rounded corners in the genmon plugins and workspace switcher from XFCE
- Copy the the required style (gtk_tx.css) and append to ~/.config/gtk-3.0/gtk.css
- Find the appropriate genmon widget ids using the GTK inspector
```
GTK_DEBUG = interactive xfce4-panel
```
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
 [xfce4-genmon css styling](https://git.xfce.org/panel-plugins/xfce4-genmon-plugin/tree/CSS%20Styling.txt)
 [xfce4 genmon plugin usage - xfce4 docs](https://docs.xfce.org/panel-plugins/xfce4-genmon-plugin/start#usage)

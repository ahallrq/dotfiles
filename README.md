# dotfiles
These are a bunch of my currently used configs. Do whatever you want with them, just remember to change the homedir in them unless your name is Andrew in which case you could probably just leave them as is.

-----

### i3 config

My i3 config is pretty stock except for a few things:

* I'm using [rofi](https://github.com/DaveDavenport/rofi) instead of dmenu
* I'm using [i3blocks](https://github.com/vivien/i3blocks) instead of i3status
* The modifier button + middle mouse switches the window between floating/tiled mode
* The modifier button + right mouse kills the window

You may also need the [Awesome font](https://github.com/FortAwesome/Font-Awesome) for i3blocks to show certain icons properly.

### i3blocks config

My i3blocks config consists currently of five blocks.

* Disk space
* CPU usage as provided by `mpstat` which is provided by the `sysstat` package on Arch Linux
* Mem usage
* My music ticker script as provided [here](https://github.com/iownall555/scripts#musictickerpy).

### termcolours

This is just a bunch of .Xresources files I found online. Nothing too special. 

The naming scheme is used by the `.xinitrc` file to choose the terminal colour scheme on login.

### .zshrc

Again, nothing special. Just my .zshrc file with a couple of added functions. One adds a flag to `mkdir` to switch to the directory after creation, the other is a function that runs `ls` straight after `cd`.

### .xinitrc

This file has two args you can use with startx.

The first is the DE/WM which is chosen from a list. If it isn't in the list, it'll attempt to simply execute the param as a program. Technically I probably don't really even need the list since it'll just execute w/e you give it regardless if it's in the list or not.

The second is the terminal colour scheme to use. It checks if the chosen scheme exists in the `termcolours` directory and merges the .Xresources file if it finds it.

An example of execution would be: `startx ~/.xinitrc i3 solarised` which would start i3 with the solarised terminal colour scheme.

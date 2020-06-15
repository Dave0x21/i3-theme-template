# i3 Theme & Template
#### Single Screen Configuration
This is my personal configuration of i3, some stuff can don't work with your system, if so, tell me what and I'll help you!

My installation is on Arch Linux but it can work on all distro!


# Screenshot
![Screenshot](https://raw.githubusercontent.com/Dave0x21/i3-theme-template/single_screen/screenshot.png)


# Installation
##### Manual
* Install dependecies
* Copy all directories from config directory to *$HOME/.config*
* Copy all the files from script directory to */usr/local/bin*
##### From script
* Install dependecies
* Launch install.sh without sudo


# Optional Dependecies
* **flameshot** - Take screenshot ([Flameshot Repository](https://github.com/lupoDharkael/flameshot))
* **feh** - Set desktop wallpaper and image viewer ([Feh Web Site](https://feh.finalrewind.org/))
* **xautolock** - Set lockscreen after a specified time ([XAutolock Repository](https://github.com/l0b0/xautolock))
* **udisks2** - Needed for automount ([Udisks Web Site](https://www.freedesktop.org/wiki/Software/udisks/))
* **twmn** - Notification server ([Twmn Repository](https://github.com/sboli/twmn))


# FAQ
* ##### Backlight doesn't show on polybar
  If the backlight information doesn't display on polybar you have to modify polybar configuration file at line 105 and modify `intel_backlight` with your screen card name.

  You can retrive your screen card name with `ls /sys/class/backlight`

* #### I can't modify backlight value
  The recommended way is to add the user to the `video` group and give that group write-privileges for the `brightness` file.

  See the ArchWiki for more information: https://wiki.archlinux.org/index.php/Backlight#ACPI


# Tips & Tricks
* To display the preview of images from ranger you need to install **w3m**

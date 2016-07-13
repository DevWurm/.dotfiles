# .dotfiles

This repo contains all my configuration files for my system. It's an Arch Linux based system for developement purposes, using the i3 window manager.<br>
The configuration can be installed with **GNU Stow** and **make**

## Packages
The repository is split up in different packages, which can be installed individually. Each package contains it's own configuration files and dependencies (listed in $package_name.deps).

### basics
Contains basic configurations, which are not suitable in any other package
* termite - termite terminal emulator
* .Xresources - Font rendering configuration (especially for high dpi screen)

### i3
Contains configuration for my i3 WM setup
* i3 - configuration for i3 itself
* i3blocks - i3blocks status bar
* scripts - custom scripts which are used by my i3 setup or in the i3blocks bar

### x
Systemwide configuration for my X server
* monitor configuration - setting the screen size for my monitor, so the dpi is calculated correctly

## Installation


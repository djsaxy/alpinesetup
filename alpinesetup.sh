#!/bin/sh

# Files will need to be either cloned from git or moved onto the machine some other way (USB, scp, ...)
# https://github.com/djsaxy/alpinesetup.git

# enable repositories
# /etc/apk/repositories
# uncomment community

doas apk add vim ranger fastfetch librewolf bspwm sxhkd mpv rofi ufw
echo "fastfetch" >> ~/.bashrc

# enable ufw (openrc commands)
# doas ufw allow sshlibrew

# setup windowmanager, terminal, lock screen
# install graphics drivers
doas apk add mesa-dri-gallium mesa-va-gallium
# setup device manager
setup-devd udev
# d-bus
doas apk add dbus dbus-x11
rc-update add dbus
rc-service dbus start
# xorg
setup-xorg-base
# suckless packages needed
doas apk add git make gcc g++ libx11-dev libxft-dev libxinerama-dev ncurses
# move dot files into .config and enable 
# mv ~/alpinesetup/bspwm ~/.config/
# chmod +x ~/.config/bspwm/bspwmrc
# mv ~/alpinesetup/sxhkd ~/.config/
# mv ~/alpinesetup/suckless ~/.config/
# cd ~/.config/suckless/st
# doas make clean install   ?????????????????????????? base-devel?
# cd ~/.config/suckless/slock
# doas make clean install

# xinitrc needs exec dbus-launch --exit-with-session bspwm

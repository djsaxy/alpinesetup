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
# move dot files into .config and enable 
# mv ~/alpinesetup/bspwm ~/.config/
# chmod +x ~/.config/bspwm/bspwmrc
# mv ~/alpinesetup/sxhkd ~/.config/
# mv ~/alpinesetup/suckless ~/.config/
# cd ~/.config/suckless/st
# doas make clean install   ?????????????????????????? base-devel?
# cd ~/.config/suckless/slock
# doas make clean install

#!/bin/bash

sudo add-apt-repository ppa:regolith-linux/release
sudo apt-get install regolith-desktop-standard -y
#ln -nsfr ~/.dotfiles/apps/regolith ~/.config/
ln -sr i3/ ~/.config/regolith/
ln -sr i3status/ ~/.config/regolith/
ln -sr i3xrock/ ~/.config/regolith/

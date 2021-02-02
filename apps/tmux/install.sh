#!/bin/bash

sudo apt install tmux -y
[ ! -d ./backups ] && mkdir ./backups
[ -f ~/.tmux.conf ] && echo "Found .tmux.conf, moving to backups." && mv ~/.tmux.conf ./backups/.tmux.conf_$DATE.bak
ln -s ~/.dotfiles/apps/tmux/.tmux.conf ~/

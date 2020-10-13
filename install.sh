#!/bin/bash

DATE=$(date +"%Y_%m_%d-%H:%M:%S")

[ ! -d ./backups ] && mkdir ./backups

[ -f ~/.bashrc ] && echo "Found .bashrc, moving to backups." && mv ~/.bashrc ./backups/.bashrc_$DATE.bak
ln -sr ./.bashrc ~/

[ -f ~/.tmux.conf ] && echo "Found .tmux.conf, moving to backups." && mv ~/.tmux.conf ./backups/.tmux.conf_$DATE.bak
ln -sr ./.tmux.conf ~/

[ -f ~/.vimrc ] && echo "Found .vimrc, moving to backups." && mv ~/.vimrc ./backups/.vimrc_$DATE.bak
ln -sr ./.vimrc ~/

# [ -f ~/.zshrc ] && echo "Found .zshrc, moving to backups." && mv ~/.zshrc ./backups/.zshrc_$DATE.bak
# ln -sr ./.zshrc ~/

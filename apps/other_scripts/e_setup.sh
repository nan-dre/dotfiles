#!/bin/bash

sudo apt update
../tmux/install.sh 1.tmux.conf
tmux source-file ~/.tmux.conf
sudo apt install tldr locate -y

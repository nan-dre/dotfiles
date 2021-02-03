#!/bin/bash

sudo apt update
../tmux/install.sh
tmux source-file ~/.tmux.conf
sudo apt install tldr -y

#!/bin/bash

setxkbmap -option caps:super
killall xcape 2>/dev/null ; xcape -e 'Super_L=Escape'
echo 50 | sudo tee -a /sys/class/backlight/amdgpu_bl0/brightness

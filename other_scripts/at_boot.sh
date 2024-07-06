#!/bin/bash

setxkbmap -option caps:super
killall xcape 2>/dev/null ; xcape -e 'Super_L=Escape'
xset b off
xset r rate 230 25 

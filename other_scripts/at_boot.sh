#!/bin/bash

setxkbmap -option caps:super
killall xcape; xcape -e 'Super_L=Escape'
xset b off

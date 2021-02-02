#!/bin/bash

sudo apt install zathura -y
touch /tmp/tmp.pdf
mimeopen -d /tmp/tmp.pdf

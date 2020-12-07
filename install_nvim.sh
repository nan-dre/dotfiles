#!/bin/bash

git clone https://github.com/Optixal/neovim-init.vim.git
novim-init.vim/install.sh
rm -r neovim-init.vim

[ -f ~/.config/nvim/init.vim ] && echo "Found init.vim, moving to backups." && mv ~/.config/nvim/init.vim ./backups/init.vim_$DATE.bak
ln -sr .config/nvim/init.vim ~/.config/nvim/

""" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

colorscheme dracula
""" Other Configurations
filetype indent plugin on
syntax on
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set cmdheight=2
set relativenumber
set notimeout ttimeout ttimeoutlen=200
set shiftwidth=4
set softtabstop=4
set expandtab
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
if !isdirectory("/tmp/.nvim-undo-dir")
    call mkdir("/tmp/.nvim-undo-dir", "", 0700)
endif
set undodir=/tmp/.vim-undo-dir
set undofile

""" Custom Mappings
nnoremap <leader>d "_d
xnoremap <leader>d "_d
nnoremap x "_x
nmap <C-w>% :below new<CR>
nmap <C-w>" :below vnew<CR>

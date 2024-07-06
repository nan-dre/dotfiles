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
set number
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

if has("cscope")
        " Look for a 'cscope.out' file starting from the current directory,
        " going up to the root directory.
        let s:dirs = split(getcwd(), "/")
        while s:dirs != []
                let s:path = "/" . join(s:dirs, "/")
                if (filereadable(s:path . "/cscope.out"))
                        execute "cs add " . s:path . "/cscope.out " . s:path . " -v"
                        break
                endif
                let s:dirs = s:dirs[:-2]
        endwhile

        set csto=0  " Use cscope first, then ctags
        set cst     " Only search cscope
        set csverb  " Make cs verbose

        nmap `<C-\>`s :cs find s `<C-R>`=expand("`<cword>`")`<CR>``<CR>`
        nmap `<C-\>`g :cs find g `<C-R>`=expand("`<cword>`")`<CR>``<CR>`
        nmap `<C-\>`c :cs find c `<C-R>`=expand("`<cword>`")`<CR>``<CR>`
        nmap `<C-\>`t :cs find t `<C-R>`=expand("`<cword>`")`<CR>``<CR>`
        nmap `<C-\>`e :cs find e `<C-R>`=expand("`<cword>`")`<CR>``<CR>`
        nmap `<C-\>`f :cs find f `<C-R>`=expand("`<cfile>`")`<CR>``<CR>`
        nmap `<C-\>`i :cs find i ^`<C-R>`=expand("`<cfile>`")`<CR>`$`<CR>`
        nmap `<C-\>`d :cs find d `<C-R>`=expand("`<cword>`")`<CR>``<CR>`
        nmap <F6> :cnext <CR>
        nmap <F5> :cprev <CR>

        " Open a quickfix window for the following queries.
        set cscopequickfix=s-,c-,d-,i-,t-,e-,g-
endif


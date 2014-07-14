source ~/.vim/vundle.vim

if filereadable(expand("~/.vim/qwerty.vim"))
    source ~/.vim/qwerty.vim
endif

filetype plugin on 
filetype indent on 

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

set expandtab
set shiftwidth=4
set tabstop=4

syntax on

set foldmethod=marker
set nowrap
set ruler

set ignorecase
set smartcase
set incsearch
set hlsearch

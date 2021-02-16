" Plug-ins 
set nocompatible
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/edge'
Plug 'preservim/nerdtree'
call plug#end()
"--------------------------------------------------------------
" From Jay;
" Turns on syntax highlighting
" Replaces tabs with 2 spaces
" Except for Makefiles, where tabs are literal tabs
syntax on
set softtabstop=2
set shiftwidth=2
set expandtab
autocmd FileType make set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtabsyntax on

set relativenumber
set autoindent
packadd! dracula
syntax enable
let g:dracula_colorterm=0
colorscheme dracula
set background=dark

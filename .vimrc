" Plug-ins
set nocompatible
call plug#begin('~/.vim/plugged')
" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Syntax / Writing
Plug 'ap/vim-css-color'
Plug 'junegunn/goyo.vim'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
" Colorschemes
Plug 'ayu-theme/ayu-vim'
Plug 'sainnhe/edge'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
" File Management
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

"--------------------------------------------------------------
" Misc Preferences
set number
set wildmenu
set autoindent
set laststatus=2
set cmdheight=1
syntax enable
set spelllang=en_us
colorscheme nord
let g:airline_theme='nord'

"--------------------------------------------------------------
" Key Remaps
" Remap arrow keys to resize window
" nnoremap <Up>    :resize -2<CR>
" nnoremap <Down>  :resize +2<CR>
" nnoremap <Left>  :vertical resize -2<CR>
" nnoremap <Right> :vertical resize +2<CR>

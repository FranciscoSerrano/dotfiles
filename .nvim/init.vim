"source $HOME/.config/nvim/vim-plug/plugins.vim

""""""""""""""""""""""VIM-PLUG""""""""""""""""""""
" Initialize plugin system
set nocompatible
call plug#begin('~/.config/nvim/vim-plug')
" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Syntax / Writing
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
" Colorschemes
Plug 'sainnhe/everforest'
Plug 'ayu-theme/ayu-vim'
Plug 'sainnhe/edge'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/gruvbox-material'
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
autocmd FileType python set tabstop=4 softtabstop=4 shiftwidth=4
"--------------------------------------------------------------
" Misc Preferences
set number
set wildmenu
set autoindent
set smartindent
set laststatus=2
set statusline=%y\ %.60F%=(%l/%L)
set cmdheight=1
set spelllang=en_us
" Important!!
if has('termguicolors')
  set termguicolors
endif
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'medium'
colorscheme everforest
let g:onedark_termcolors=16
let mapleader = " "
let g:airline_theme='everforest'

"--------------------------------------------------------------
" Key Remaps
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Remap arrow keys to resize window
" nnoremap <Up>    :resize -2<CR>
" nnoremap <Down>  :resize +2<CR>
" nnoremap <Left>  :vertical resize -2<CR>
" nnoremap <Right> :vertical resize +2<CR>
"


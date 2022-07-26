""""""""""""""""""""""VIM-PLUG""""""""""""""""""""
" download plug.vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Initialize plugin system
set nocompatible
call plug#begin('~/.vim/plugged')
" Status Bar
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
" Syntax / Writing
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'psf/black', { 'branch': 'stable' }
" Colorschemes
Plug 'ayu-theme/ayu-vim'
Plug 'sainnhe/edge'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
" File Management
Plug 'preservim/nerdtree'
call plug#end()
"--------------------------------------------------------------
" From Jay:
" Turns on syntax highlighting
syntax on
set softtabstop=2
" Replaces tabs with 2 spaces
set shiftwidth=2
" Except for Makefiles, where tabs are literal tabs
set expandtab
autocmd FileType make set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtabsyntax on

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
colorscheme catppuccin_frappe
set termguicolors
"set background=dark
let mapleader = " "
"let g:airline_theme={'colorscheme': 'catppuccin_frappe'}

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
augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end

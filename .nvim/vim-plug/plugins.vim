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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Syntax / Writing
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'
Plug 'junegunn/goyo.vim'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
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

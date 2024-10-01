" A simple vim config with sane defaults.
" Made for people learning vim that don't want to stress about settings.
" As you learn more please edit this to your hearts content. Its your config.
" If you want more details about what the settings do check out the google.

" This line is redundant but I prefer explicit settings over implicit/default behavior
set nocompatible

" The following command will enable line numbers.
set number

" Enables syntax highlighting. (Fancy colors)
syntax on

" Forces your terminal to use better colors
set termguicolors

" Thats the end of the basic stuff. Now lets add some plugins the community makes.
" You need a plug-in manager so lets use vim plug. https://github.com/junegunn/vim-plug?tab=readme-ov-file

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


" Okay so, the lines above will handle the plug-in manager lets get some quality of life plug-ins
" All plug-ins should be put between the plug#begin() and plug#end() calls.

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'

" Make sure you use single quotes

" This one is a collection of langauge packs so the syntax highlighting is nice
Plug 'sheerun/vim-polyglot'

" This one is just a pretty color theme
Plug 'ghifarit53/tokyonight-vim'

" This one is a little status bar at the bottom of your screen to more clearly see what mode your in.
Plug 'itchyny/lightline.vim'

call plug#end()

" Okay, we got some plugins. Now lets use them....

" This sets the settings for the Tokyonight theme we installed
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

" And we can set the color scheme for that status line plug in too.
let g:lightline = {'colorscheme' : 'tokyonight'}
set laststatus=2
set noshowmode " This is to get rid of --INSERT-- showing because we already have that information in the status bar


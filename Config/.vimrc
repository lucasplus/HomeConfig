
" Use vim-pathogen to include plugins:
"  vim-sensible
"  vim-colors-solarized
"  nerdtree
"  indentLine
source ~/HomeConfig/Submodules/VimPlugins/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('~/HomeConfig/Submodules/VimPlugins/{}')

"______________________ Plugin configs

" vim-colors-solarized
colorscheme solarized
set background=dark

" indentLine
let g:indentLine_color_term = 240

" NERDTree 
" close NERDTree when closing last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"______________________ Common configs

set encoding=utf-8 " Not sure if I need this
syntax enable
filetype plugin indent on 
set hlsearch " highlight all search hits
set number " show line numbers
set mouse=a " enable mouse in all modes: Normal, Insert, Visual, and Command-line
set ttymouse=xterm2 " not sure exactly

" set to have indents of 2 using spaces
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

" folding. see my cheat sheet for help
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

set backup      " enable backups
set noswapfile  " it's 2013 vim

set undodir=~/.vim/tmp/undo/     " undo files
set backupdir=~/.vim/tmp/backup/ " backups

let mapleader=","

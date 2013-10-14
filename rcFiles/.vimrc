" my vimrc file - Lucas 8/15/2013
" hints:
"   folding
"     za - fold and unfold
"     zR - undo folding everywhere
"     zM - do folding everywhere
"   NERDTree - :NERDTree
"
execute pathogen#infect()

" appearance 
colorscheme solarized
set background=dark

set encoding=utf-8

" indent guide specific
let g:indentLine_color_term = 240

" NERDTree specific
let g:NERDTreeDirArrows=0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

syntax enable

filetype plugin indent on 

set hlsearch

set number

set mouse=a

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

set backup      " enable backsups
set noswapfile  " it's 2013 vim

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files

let mapleader=","

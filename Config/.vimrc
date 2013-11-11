
" Use vim-pathogen to include plugins:
"  see ~/HomeConfig/Submodules/VimPlugins/
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
" open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

"______________________ Common configs

"set hlsearch " highlight all search hits
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

" from vim help, delete old backup, backup current file
set backup      
set writebackup

" Make backup, undo, and swp directory if not exist
silent !mkdir ~/.vim/tmp/undo/ > /dev/null 2>&1
silent !mkdir ~/.vim/tmp/backup/ > /dev/null 2>&1
silent !mkdir ~/.vim/tmp/swp/ > /dev/null 2>&1
set undodir=~/.vim/tmp/undo/     
set backupdir=~/.vim/tmp/backup/ 
set directory=~/.vim/tmp/swp/

let mapleader=","

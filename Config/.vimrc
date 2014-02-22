" Useful info for editing .vimrc
" mapping
"   map and noremap - best shown through example:
"     map j gg
"     map Q j
"     noremap W j
"       Here j->gg and Q->gg because expanded for recursive mapping
"       W->j (and not gg) because of non-recursive mapping
"   also exists <n,v>map and <n,v>noremap for normal and visual mode

" Use vim-pathogen to include plugins:
"  see ~/HomeConfig/Submodules/VimPlugins/

" Disable plugins
"let g:pathogen_disabled = []
"call add(g:pathogen_disabled, 'vim-bufferline')

source ~/HomeConfig/Submodules/VimPlugins/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('~/HomeConfig/Submodules/VimPlugins/{}')
Helptags

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

" modelines are vim commands like set that are in the file you are reading
set nomodeline

" switching between buffers that had changes was showing an annoying message
set hidden

set hlsearch " highlight all search hits
" temporarily get out of highlighted search by hitting enter
nnoremap <CR> :nohlsearch<CR><CR>

" searching with F3, 
"   if in normal mode look for matches under cursor 
"   if in visual mode looke for selected text, match even if different spaces,
"   tabs, or new lines
nnoremap <F3> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
function! MakePattern(text)
  let pat = escape(a:text, '\')
  let pat = substitute(pat, '\_s\+$', '\\s\\*', '')
  let pat = substitute(pat, '^\_s\+', '\\s\\*', '')
  let pat = substitute(pat, '\_s\+',  '\\_s\\+', 'g')
  return '\\V' . escape(pat, '\"')
endfunction
vnoremap <silent> <F3> "zy:<C-U>let @/="<C-R>=MakePattern(@z)<CR>"<CR>:set hls<CR>

" easymotion plugin
" make jumps between lines keep column number
" let g:EasyMotion_startofline = 0
let g:ctrlp_open_multiple_files = 'i'
let g:ctrlp_open_new_file = 'r'

" vim-airline
" don't show error related to white spaces
" show relative path on right side. replaces file type
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_x = '%f'

" vim bufferline config
let g:bufferline_echo = 0

" change mapping for CtrlP plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window = 'max:15'

" vim-snippets config, use my own folder for snippets
let g:snipMate = {}
let g:snipMate['snippet_dirs'] = funcref#Function('return [expand("~/HomeConfig")]')

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
silent !mkdir ~/.vim/ > /dev/null 2>&1
silent !mkdir ~/.vim/viminfo/ > /dev/null 2>&1
silent !mkdir ~/.vim/tmp/ > /dev/null 2>&1
silent !mkdir ~/.vim/tmp/undo/ > /dev/null 2>&1
silent !mkdir ~/.vim/tmp/backup/ > /dev/null 2>&1
silent !mkdir ~/.vim/tmp/swp/ > /dev/null 2>&1
set undodir=~/.vim/tmp/undo/     
set backupdir=~/.vim/tmp/backup/ 
set directory=~/.vim/tmp/swp/

" put .viminfo files in the .vim/viminfo directory 
set viminfo+=n~/.vim/viminfo

" add and remove lines
nmap <C-k> O<Esc>j
nmap <C-j> o<Esc>k

" a numbered list is printed, then press number and get buffer
nnoremap <C-b> :buffers<CR>:buffer<Space>

" semicolon for all command mode commands now
nnoremap ; :

" my leader key
let mapleader=","

" so that easymotion only works by pressing leader key one instead of twice
" needed to be at the end
map <Leader> <Plug>(easymotion-prefix)






" Delete buffer while keeping window layout (don't close buffer's windows).
" Version 2008-11-18 from http://vim.wikia.com/wiki/VimTip165
if v:version < 700 || exists('loaded_bclose') || &cp
  finish
endif
let loaded_bclose = 1
if !exists('bclose_multiple')
  let bclose_multiple = 1
endif

" Display an error message.
function! s:Warn(msg)
  echohl ErrorMsg
  echomsg a:msg
  echohl NONE
endfunction

" Command ':Bc' executes ':bd' to delete buffer in current window.
" The window will show the alternate buffer (Ctrl-^) if it exists,
" or the previous buffer (:bp), or a blank buffer if no previous.
" Command ':Bc!' is the same, but executes ':bd!' (discard changes).
" An optional argument can specify which buffer to close (name or number).
function! s:Bc(bang, buffer)
  if empty(a:buffer)
    let btarget = bufnr('%')
  elseif a:buffer =~ '^\d\+$'
    let btarget = bufnr(str2nr(a:buffer))
  else
    let btarget = bufnr(a:buffer)
  endif
  if btarget < 0
    call s:Warn('No matching buffer for '.a:buffer)
    return
  endif
  if empty(a:bang) && getbufvar(btarget, '&modified')
    call s:Warn('No write since last change for buffer '.btarget.' (use :Bc!)')
    return
  endif
  " Numbers of windows that view target buffer which we will delete.
  let wnums = filter(range(1, winnr('$')), 'winbufnr(v:val) == btarget')
  if !g:bclose_multiple && len(wnums) > 1
    call s:Warn('Buffer is in multiple windows (use ":let bclose_multiple=1")')
    return
  endif
  let wcurrent = winnr()
  for w in wnums
    execute w.'wincmd w'
    let prevbuf = bufnr('#')
    if prevbuf > 0 && buflisted(prevbuf) && prevbuf != w
      buffer #
    else
      bprevious
    endif
    if btarget == bufnr('%')
      " Numbers of listed buffers which are not the target to be deleted.
      let blisted = filter(range(1, bufnr('$')), 'buflisted(v:val) && v:val != btarget')
      " Listed, not target, and not displayed.
      let bhidden = filter(copy(blisted), 'bufwinnr(v:val) < 0')
      " Take the first buffer, if any (could be more intelligent).
      let bjump = (bhidden + blisted + [-1])[0]
      if bjump > 0
        execute 'buffer '.bjump
      else
        execute 'enew'.a:bang
      endif
    endif
  endfor
  execute 'bdelete'.a:bang.' '.btarget
  execute wcurrent.'wincmd w'
endfunction
command! -bang -complete=buffer -nargs=? Bc call s:Bc('<bang>', '<args>')
nnoremap <silent> <Leader>bc :Bc<CR>

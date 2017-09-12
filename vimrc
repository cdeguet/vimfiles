""""""""""""""""""""""""""""""
" Vim Configuration file
" Author: Cyril Deguet
""""""""""""""""""""""""""""""

" Basic settings
filetype plugin indent on
syntax on
set backspace=2 " Make backspace work like most other apps
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8
set showmode
set showcmd
set hlsearch

" Reload vimrc automatically
augroup myvimrc
  au!
  au BufWritePost .vimrc,vimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Remap Escape to jk for efficiency
inoremap jk <ESC>
" Change leader from \ to Space
let mapleader = "\<Space>"

" Shortcuts
noremap <Leader>b :buffers<CR>:buffer<Space>
noremap <Leader>l :ls<CR>
noremap <Leader>q :q<CR>

" Highlight comments in a more readable blue
hi Comment ctermfg=lightblue 

" Status Line
set ruler
set laststatus=2
set statusline=%2*[%02n]%*\ %f\ %3*%(%m%)%4*%(%r%)%*%=%b\ 0x%B\ \ <%l,%c%V>\ %P

" Switch easily between buffers
nmap <Tab> :bn<CR>
nmap <S-Tab> :bp<CR>

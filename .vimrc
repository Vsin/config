source $VIMRUNTIME/mswin.vim
behave mswin

" **************************************
" * VARIABLES
" **************************************
set nocompatible " Get rid of strict vi compatibility.
set nu " Line numbering on.
set autoindent " Autoindent on.
set noerrorbells " Remove error bells.
set modeline " Show the mode.
set showmode " show the mode on the dedicated line.
set nowrap " No text wrapping!
set ignorecase " Search without regards to case.
set backspace=indent,eol,start " Backspace over everything.
set fileformats=unix,dos,mac " Open files from Mac/DOS.
set exrc " Open local configuration files.
set nojoinspaces " Don't add white space/
set ruler " Show ruler.
set showmatch " Dyck language.
set incsearch " Incremental searching.
set nohlsearch " Disable highlight searching.
set bs=2 " Fix backspacing in insert mode.
set tabstop=2

" Expand tabs in C files to spaces
au BufRead,BufNewFile *.{c,h} set expandtab
au BufRead,BufNewFile *.{c,h} set shiftwidth=2
au BufRead,BufNewFile *.{c,h} set softtabstop=2

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set shiftwidth=4
au BufRead,BufNewFile *.s set tabstop=4

" Show syntax
syntax on

" This is my prefered colorscheme, open a file with gvim to view others
:colors elflord

" For switching between many opened file by using ctrl+l or ctrl+h
map <C-L> :next <CR>
map <C-H> :prev <CR>

" Spelling toggle via F10 and F11
map <F10> <Esc>setlocal spell spelllang=en_us<CR>
map <F11> <Esc>setlocal nospell<CR>

set guifont=Bitstream\ Vera\ Sans\ Mono\ 9

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

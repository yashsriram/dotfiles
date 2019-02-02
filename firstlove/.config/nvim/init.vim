set nocompatible

syntax on

set number relativenumber
set encoding=utf-8

" Appearance
  colorscheme dracula
  set cursorline
  hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE

" Basic keybindings
  
  " Remap escape
  nnoremap <C-d> <Esc>
  inoremap <C-d> <Esc>
  vnoremap <C-d> <Esc>

  " Save: N, I modes
  nnoremap <C-s> :w<Enter>
  inoremap <C-s> <Esc>:w<Enter>i
  vnoremap <C-s> <Esc>:w<Enter>v

  " Quit gracefully
  nnoremap <C-w> :q<Enter>
  inoremap <C-w> <Esc>:q<Enter>
  vnoremap <C-w> <Esc>:q<Enter>

  inoremap <BS> lol

set wildmode=longest,list,full
filetype plugin on

" Shortcutting split navigation, saving a keypress:
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l

" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
  vnoremap <C-c> "+y
  map <C-p> "+P

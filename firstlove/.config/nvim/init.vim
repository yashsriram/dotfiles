set nocompatible

syntax on
colorscheme dracula
set number relativenumber
set encoding=utf-8

" Basic keybindings
  " Save: N, I modes
  nnoremap <C-s> :w<Enter>
  inoremap <C-s> <Esc>:w<Enter>i

  " Quit gracefully: N, I modes
  nnoremap <C-w> :q<Enter>
  inoremap <C-w> <Esc>:q<Enter>
  vnoremap <C-w> <Esc>:q<Enter>

  " Quit forcefully: N, I modes

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

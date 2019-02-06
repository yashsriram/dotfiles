set nocompatible

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'flazz/vim-colorschemes'
Plug 'mboughaba/i3config.vim'
call plug#end() 

syntax on
set number relativenumber
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab

" appearance
colorscheme monokai
highlight Cursor guifg=black guibg=green
set cursorline

inoremap <C-.> <Esc>

" navigation
nnoremap <Up> g<Up>
nnoremap <Down> g<Down>

" save
nnoremap <C-s> :w<Enter>
inoremap <C-s> <Esc>:w<Enter>l
vnoremap <C-s> <Esc>:w<Enter>

" quit gracefully
nnoremap <C-w> :q<Enter>
inoremap <C-w> <Esc>:q<Enter>i
vnoremap <C-w> <Esc>:q<Enter>

" copy-paste system clipboard
vnoremap <C-y> "+y
nnoremap <C-p> "+Pl
inoremap <C-p> <Esc>"+Pl

" undo-redo
nnoremap U <C-r>

" find
set nowrapscan
nnoremap <C-f> /
inoremap <C-f> <Esc>/
nnoremap <A-f> :set hlsearch!<Enter>
inoremap <A-f> <Esc>:set hlsearch!<Enter>i
nnoremap <A-c> :set ignorecase!<Enter>
inoremap <A-c> <Esc>:set ignorecase!<Enter>
nnoremap <C-A-f> *
inoremap <C-A-f> <Esc>*

" replace
nnoremap <C-r> ireplace

" nerd tree
nnoremap <A-1> :NERDTree<Enter>

set nocompatible

let mapleader=","
call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'mboughaba/i3config.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
call plug#end()


syntax on
filetype plugin on
set number relativenumber
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set tabpagemax=100

" appearance
colorscheme monokai

" navigation
nnoremap <Up> g<Up>
nnoremap <Down> g<Down>
nnoremap w b

" save
nnoremap <C-s> :w<Enter>
inoremap <C-s> <Esc>:w<Enter>i
vnoremap <C-s> <Esc>:w<Enter>

" quit gracefully
nnoremap <C-w> :q<Enter>
inoremap <C-w> <Esc>:q<Enter>
vnoremap <C-w> <Esc>:q<Enter>

" copy-paste system clipboard
" paste with c+s+v in insert mode
vnoremap <C-y> "+y

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

" select auto-pair
vnoremap " d<Esc>i"<C-r>""
vnoremap ' d<Esc>i'<C-r>"'
vnoremap ( d<Esc>i(<C-r>")
vnoremap ) d<Esc>i(<C-r>"}
vnoremap } d<Esc>i{<C-r>"}
vnoremap } d<Esc>i{<C-r>"}

" tab
nnoremap <C-n> :tabnew<Enter>
nnoremap <A-Right> :tabn<Enter>
nnoremap <A-Left> :tabp<Enter>

" ranger
nnoremap <C-d> :Ranger<Enter>
let g:ranger_replace_netrw = 1

" comments
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1


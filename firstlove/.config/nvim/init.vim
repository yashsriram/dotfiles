set nocompatible

let mapleader=" "
call plug#begin()
Plug 'mboughaba/i3config.vim' " i3 highlights
Plug 'rbgrouleff/bclose.vim' " required for ranger plugin
Plug 'francoiscabrol/ranger.vim' " ranger integration to open files
Plug 'Yggdroot/indentLine' " indent guide
Plug 'ntpeters/vim-better-whitespace' " highlights unwanted whitespaces
Plug 'itchyny/vim-cursorword' ", { 'on': 'CursorWord' } underlines all instances of current word
Plug 'jiangmiao/auto-pairs' " inserts matching pair for {[(\"'
Plug 'tpope/vim-repeat' " makes surround and commentary plugins repeatable
Plug 'tpope/vim-surround' " surround text with anything
Plug 'tpope/vim-commentary' " comment and uncomment quickly
Plug 'vim-airline/vim-airline' " status line plugin
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " sublime like autocomplete
call plug#end()

let g:deoplete#enable_at_startup = 1

syntax on
filetype plugin on
set number relativenumber
set splitbelow splitright
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab

inoremap zz <Esc>

" appearance
colorscheme monokai
let g:airline_theme='dark'
set cursorline

" navigation
nnoremap <Up> g<Up>
nnoremap <Down> g<Down>
nnoremap <C-Right> e
nnoremap <C-Left> b
nnoremap w b

" navigating windows
nnoremap <A-S-Left> <C-w>h
nnoremap <A-S-Down> <C-w>j
nnoremap <A-S-Up> <C-w>k
nnoremap <A-S-Right> <C-w>l

" save
nnoremap <C-s> :w<Enter>
inoremap <C-s> <Esc>:w<Enter>i
vnoremap <C-s> <Esc>:w<Enter>

" quit gracefully
nnoremap <C-w> :q<Enter>
inoremap <C-w> <Esc>:q<Enter>
vnoremap <C-w> <Esc>:q<Enter>

" duplicate line with C-d
nnoremap <C-d> yyp
inoremap <C-d> <Esc>yypi

" copy-paste system clipboard
" paste with C-S-v in insert mode
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
nnoremap <C-r> ireplace TODO

" tabs
nnoremap <C-n> :tabnew<Enter>
nnoremap <A-Right> :tabn<Enter>
nnoremap <A-Left> :tabp<Enter>
inoremap <C-n> <Esc>:tabnew<Enter>
inoremap <A-Right> <Esc>:tabn<Enter>
inoremap <A-Left> <Esc>:tabp<Enter>

" ranger
nnoremap <A-1> :RangerWorkingDirectory<Enter>
nnoremap <A-2> :RangerCurrentDirectory<Enter>
let g:ranger_replace_netrw = 1


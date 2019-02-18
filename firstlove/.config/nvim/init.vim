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
  Plug 'tpope/vim-abolish' " supercharged substitution, case changing and abbreviations(auto-corrections)
  Plug 'vim-airline/vim-airline' " status line plugin
  Plug 'tpope/vim-fugitive' " git plugin
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " sublime like autocomplete
  Plug 'junegunn/goyo.vim' " distraction free writing
call plug#end()

" basic options
  syntax on
  filetype plugin on
  set number relativenumber
  set splitbelow splitright
  set encoding=utf-8
  set tabstop=2
  set shiftwidth=2
  set expandtab
  set foldmethod=indent

" appearance
  colorscheme monokai
  let g:airline_theme='dark'
  set cursorline

" basic navigation
  nnoremap <Up> g<Up>
  nnoremap <Down> g<Down>
  nnoremap <C-Right> e
  nnoremap <C-Left> b
  nnoremap <c-a-right> g_
  nnoremap <c-a-left> g0
  inoremap <c-a-right> <Esc>g_i
  inoremap <c-a-left> <Esc>g0i
  vnoremap <c-a-right> g_i
  vnoremap <c-a-left> g0i
  nnoremap w b

" indent selection
  vnoremap > >gv
  vnoremap < <gv

" navigating windows
  nnoremap <A-S-Left> <C-w>h
  nnoremap <A-S-Down> <C-w>j
  nnoremap <A-S-Up> <C-w>k
  nnoremap <A-S-Right> <C-w>l

" common editing shortcuts
  nnoremap <C-d> yyp
  inoremap <C-d> <Esc>yypi
  nnoremap <C-x> dd
  inoremap <C-x> <Esc>ddi
  nnoremap <C-c> yy
  inoremap <C-c> <Esc>yyi
  nnoremap <C-v> P
  inoremap <C-v> <Esc>Pi

" save
  nnoremap <C-s> :write<Enter>
  inoremap <C-s> <Esc>:write<Enter>i
  vnoremap <C-s> <Esc>:write<Enter>

" quit gracefully
  nnoremap <C-w> :quit<Enter>
  inoremap <C-w> <Esc>:quit<Enter>
  vnoremap <C-w> <Esc>:quit<Enter>

" copy-paste system clipboard
" paste with C-S-v in insert mode
  vnoremap <C-y> "+y

" undo-redo
  nnoremap U <C-r>

" find
  set nowrapscan
  nnoremap <C-f> :%s///gn<Left><Left><Left><Left>
  inoremap <C-f> <Esc>:%s///gn<Left><Left><Left><Left>
  nnoremap <A-f> :set hlsearch!<Enter>
  inoremap <A-f> <Esc>:set hlsearch!<Enter>i
  nnoremap <A-c> :set ignorecase!<Enter>
  inoremap <A-c> <Esc>:set ignorecase!<Enter>
  nnoremap <C-A-f> viw"ry:%s/<C-r>r//gn<Left><Left><Left><Enter>
  inoremap <C-A-f> <Esc>viw"ry:%s/<C-r>r//gn<Left><Left><Left><Enter>

" replace
  nnoremap <C-r> :%s///gc<Left><Left><Left><Left>
  inoremap <C-r> <Esc>:%s///gc<Left><Left><Left><Left>
  nnoremap <C-A-r> viw"ry:%s/<C-r>r//gc<Left><Left><Left>
  inoremap <C-A-r> <Esc>viw"ry:%s/<C-r>r//gc<Left><Left><Left>

" buffers
  nnoremap <A-]> :bn<Enter>
  nnoremap <A-[> :bp<Enter>
  nnoremap <A-h> :sp<Enter>
  nnoremap <A-v> :vsp<Enter>

" tabs
  nnoremap <C-n> :tabnew<Enter>
  nnoremap <A-Right> :tabn<Enter>
  nnoremap <A-Left> :tabp<Enter>
  inoremap <C-n> <Esc>:tabnew<Enter>
  inoremap <A-Right> <Esc>:tabn<Enter>
  inoremap <A-Left> <Esc>:tabp<Enter>

" folding
  nnoremap <S-Tab> zC
  nnoremap <Tab> zO

" ranger
  nnoremap <A-1> :RangerWorkingDirectory<Enter>
  nnoremap <A-2> :RangerCurrentDirectory<Enter>
  let g:ranger_replace_netrw = 1

" deoplete
  let g:deoplete#enable_at_startup = 1

" airline
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline#extensions#tabline#formatter = 'unique_tail'
  let g:airline_powerline_fonts = 1

  if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'

  " airline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''


set nocompatible

let mapleader=" "

call plug#begin()
  Plug 'NLKNguyen/papercolor-theme' " theme
  Plug 'mboughaba/i3config.vim' " i3 highlights
  Plug 'rbgrouleff/bclose.vim' " required for ranger plugin
  Plug 'francoiscabrol/ranger.vim' " ranger integration to open files
  Plug 'Yggdroot/indentLine' " indent guide
  Plug 'ntpeters/vim-better-whitespace' " highlights unwanted whitespaces
  Plug 'itchyny/vim-cursorword' ", { 'on': 'CursorWord' } underlines all instances of current word
  Plug 'tpope/vim-repeat' " makes surround and commentary plugins repeatable
  Plug 'tpope/vim-surround' " surround text with anything
  Plug 'tpope/vim-commentary' " comment and uncomment quickly
  Plug 'tpope/vim-abolish' " supercharged substitution, case changing and abbreviations(auto-corrections)
  Plug 'tpope/vim-fugitive' " git plugin
  Plug 'Yashasvi-Sriram/vim-searchindex' " gives number and count of matches
  Plug 'vim-airline/vim-airline' " status line plugin
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
  set listchars=tab:→\ ,trail:•,nbsp:‡,extends:⟩,precedes:⟨
  set list

" appearance
  colorscheme PaperColor
  let g:airline_theme='dark'
  set cursorline

" highlevel
  nnoremap ; :
  nnoremap <C-h> :vertical help<Space>
  nnoremap <C-A-h> "hyiw:vertical help <C-r>h<Enter>
  nnoremap <Enter> O<Esc>j

" basic navigation
  nnoremap <Up> g<Up>
  nnoremap <Down> g<Down>
  nnoremap <C-Right> e
  nnoremap <C-Left> b
  nnoremap <c-a-right> g_
  nnoremap <c-a-left> g0
  inoremap <c-a-right> <Esc>g_a
  inoremap <c-a-left> <Esc>g0a
  vnoremap <c-a-right> g_i
  vnoremap <c-a-left> g0i
  nnoremap <C-b> %

" selection
  vnoremap > >gv
  vnoremap < <gv
  nnoremap vL ^vg_
  nnoremap vl vg_
  nnoremap vA ggVG

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

" make sure Vim returns to the same line when you reopen a file.
augroup line_return
  au!
  au BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \     execute 'normal! g`"zvzz' |
      \ endif
augroup END

" copy-paste system clipboard
  vnoremap <C-y> "+y
  " paste with C-S-v in insert mode or <C-r>*
  " select last pasted text
  nnoremap <leader>v V`]

" undo-redo
  nnoremap U <C-r>

" find
  set nowrapscan
  nnoremap <leader>/ :execute 'vimgrep /'.@/.'/g %'<Enter>:copen<Enter>
  nnoremap <C-f> /
  nnoremap <A-f> :set hlsearch!<Enter>
  nnoremap <A-c> :set ignorecase!<Enter>
  nnoremap <C-A-f> *N
  vnoremap / "fy/<C-r>f<Enter>

" replace
  nnoremap <C-r> :%s///gc<Left><Left><Left><Left>
  nnoremap <C-A-r> viw"ry:%s/<C-r>r//gc<Left><Left><Left>

" command mode
  cnoremap <c-a> <home>
  cnoremap <c-e> <end>

" buffers
  nnoremap <A-]> :bn<Enter>
  nnoremap <A-[> :bp<Enter>
  nnoremap <A-h> :sp<Enter>
  nnoremap <A-v> :vsp<Enter>

" tabs
  nnoremap <C-n> :tabnew<Enter>
  nnoremap <A-Right> :tabn<Enter>
  nnoremap <A-Left> :tabp<Enter>

" panes/windows
  nnoremap <A-S-Down> <C-w>j
  nnoremap <A-S-Up> <C-w>k
  nnoremap <A-S-Left> <C-w>h
  nnoremap <A-S-Right> <C-w>l

" folding
  nnoremap <S-Tab> zC
  nnoremap <Tab> zO
  nnoremap <leader><leader> zMzvzz

" ranger
  nnoremap <A-1> :RangerWorkingDirectory<Enter>
  nnoremap <A-2> :RangerCurrentDirectory<Enter>
  let g:ranger_replace_netrw = 1

" deoplete
  let g:deoplete#enable_at_startup = 1

" brackets
  for i in ['{}', '[]', '()', '""', "''", '``']
    :execute "inoremap " . i[0] . " " . i . "<Esc>i"
    :execute "vnoremap " . i[0] . " " . "di" . i[0] . "<Esc>pa" . i[1]
  endfor


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


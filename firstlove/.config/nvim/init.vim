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
  Plug 'airblade/vim-gitgutter' " gutter for git
  Plug 'Yashasvi-Sriram/vim-searchindex' " gives number and count of matches
  Plug 'vim-airline/vim-airline' " status line plugin
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " sublime like autocomplete
  Plug 'junegunn/goyo.vim' " distraction free writing
call plug#end()

" basic options
  syntax on
  filetype plugin on
  set bg=dark
  set number relativenumber
  set splitbelow splitright
  set encoding=utf-8
  set tabstop=2 shiftwidth=2 expandtab
  set foldmethod=indent
  set listchars=tab:→\ ,trail:•,nbsp:‡,extends:⟩,precedes:⟨ list
  set updatetime=100

" appearance
  colorscheme PaperColor
  highlight Visual ctermfg=NONE
  highlight visual ctermbg=237
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
  nnoremap <C-A-right> g_
  nnoremap <C-A-left> g0
  inoremap <C-A-right> <Esc>g_a
  inoremap <C-A-left> <Esc>g0a
  vnoremap <C-A-right> g_i
  vnoremap <C-A-left> g0i
  nnoremap <C-b> %

" selection
  vnoremap > >gv
  vnoremap < <gv
  nnoremap vL ^vg_
  nnoremap vl vg_
  nnoremap vA ggVG
  " shift arrow select select
  nnoremap <S-Up> V<Up>
  vnoremap <S-Up> <Up>
  nnoremap <S-Down> V<Down>
  vnoremap <S-Down> <Down>
  nnoremap <S-Left> v<Left>
  vnoremap <S-Left> <Left>
  nnoremap <S-Right> v<Right>
  vnoremap <S-Right> <Right>

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
  vnoremap <C-r> "ry:%s///gc<Left><Left><Left><Left><C-r>r<Right>

" remove all trailing whitespace
  nnoremap gws :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><Enter>

" convert b/w tabs and spaces
  nnoremap gts :set tabstop=2 shiftwidth=2 expandtab<Bar>:retab<Enter>
  nnoremap gtt :set tabstop=2 shiftwidth=2 noexpandtab<Bar>:%retab!<Enter>

" reformat the entire file
  nnoremap grf magg=G`a

" command mode
  cnoremap <C-a> <home>
  cnoremap <C-e> <end>

" buffers
  nnoremap <A-w> :bd<Enter>
  nnoremap <A-Up> :bp<Enter>
  nnoremap <A-Down> :bn<Enter>
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

" tags
  nnoremap <leader><Right> <C-]>
  nnoremap <leader><Left> <C-t>

" jumps
  nnoremap <leader><Up> <C-I>
  nnoremap <leader><Down> <C-O>

" ranger
  nnoremap <A-1> :RangerWorkingDirectory<Enter>
  nnoremap <A-2> :RangerCurrentDirectory<Enter>
  let g:ranger_replace_netrw = 1

" deoplete
  let g:deoplete#enable_at_startup = 1

" brackets
  for brackets in ['{}', '[]', '()', '""', "''", '``']
    :execute "inoremap " . brackets[0] . " " . brackets . "<Esc>i"
    :execute "vnoremap " . brackets[0] . " " . "di" . brackets[0] . "<Esc>pa" . brackets[1]
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


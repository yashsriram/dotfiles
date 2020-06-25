set nocompatible

let mapleader=" "

call plug#begin()
  Plug 'NLKNguyen/papercolor-theme' " Theme
  Plug 'vim-airline/vim-airline' " Status line plugin
  Plug 'Yashasvi-Sriram/vim-searchindex' " Gives number and count of matches
  Plug 'ntpeters/vim-better-whitespace' " Highlights unwanted whitespaces
  Plug 'tpope/vim-repeat' " Makes some tpope plugins repeatable
  Plug 'tpope/vim-commentary' " Comment and uncomment quickly
  Plug 'tpope/vim-surround' " Surround text with anything
  Plug 'lifepillar/vim-mucomplete' " Completion engine
  Plug 'airblade/vim-gitgutter' " Gutter for git
  Plug 'junegunn/vim-peekaboo' " To have a peek at vim registers
  Plug 'rbgrouleff/bclose.vim' " Required for ranger plugin
  Plug 'francoiscabrol/ranger.vim' " Ranger integration to open files
  Plug 'sirver/ultisnips' " Customizable snippets
  Plug 'junegunn/fzf' " Searchable menu
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ } " Language server protocol client

  Plug 'lervag/vimtex' " Tex plugin
  Plug 'cespare/vim-toml' " Toml syntax
call plug#end()

" basic options
  syntax on
  filetype plugin on
  set number
  set bg=dark
  set splitbelow splitright
  set encoding=utf-8
  set tabstop=4 shiftwidth=4 expandtab
  set listchars=tab:→\ ,trail:•,nbsp:‡,extends:⟩,precedes:⟨ list
  set updatetime=100
  set noswapfile
  set autoread
  set hidden

" spelling
  nnoremap <C-l> 1z=

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
  nnoremap <Up> gk
  nnoremap <Down> gj
  nnoremap <C-b> %
  nnoremap gf :wincmd gf<Enter>

" selection
  vnoremap > >gv
  vnoremap < <gv
  nnoremap <S-Up> Vk
  nnoremap <S-Down> Vj
  vnoremap <S-Up> k
  vnoremap <S-Down> j

" common editing shortcuts
  nnoremap <C-z> <nop>
  nnoremap U <C-r>
  nnoremap <C-d> yyp
  nnoremap <C-x> dd
  nnoremap <C-c> yy
  nnoremap <C-v> P
  vnoremap D "_d

" save
  nnoremap <C-s> :w<Enter>
  inoremap <C-s> <Esc>:w<Enter>i
  vnoremap <C-s> <Esc>:w<Enter>

" quit gracefully
  nnoremap qq :q<Enter>

" make sure vim returns to the same line when you reopen a file.
augroup line_return
  au!
  au BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \     execute 'normal! g`"zvzz' |
      \ endif
augroup END

" copy to system clipboard
  vnoremap <C-y> "+y

" find
  set nowrapscan
  nnoremap <A-f> :set hlsearch!<Enter>
  nnoremap <A-c> :set ignorecase!<Enter>
  nnoremap <C-A-f> *N
  vnoremap / "fy/<C-r>f<Enter>

" replace
  nnoremap <C-r> :%s///gc<Left><Left><Left><Left>
  nnoremap <C-A-r> viw"ry:%s/<C-r>r/<C-r>r/gc<Left><Left><Left>
  vnoremap <C-r> "ry:%s/<C-r>r//gc<Left><Left><Left>

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
  nnoremap <C-t> :tabnew<Enter>
  nnoremap <A-Right> :tabn<Enter>
  nnoremap <A-Left> :tabp<Enter>

" panes/windows
  nnoremap <A-S-Down> <C-w>j
  nnoremap <A-S-Up> <C-w>k
  nnoremap <A-S-Left> <C-w>h
  nnoremap <A-S-Right> <C-w>l

" folding
  set foldlevel=99
  nnoremap <Tab> za
  set foldmethod=syntax

" tags
  nnoremap <leader><Right> <C-]>
  nnoremap <leader><Left> <C-t>

" jumps
  nnoremap <leader><Up> <C-I>
  nnoremap <leader><Down> <C-O>

" ranger
  nnoremap <A-1> :RangerCurrentFileNewTab<Enter>
  let g:ranger_replace_netrw = 1

" mucomplete
  set completeopt+=menuone
  set completeopt+=noselect
  set completeopt-=preview
  set shortmess+=c
  let g:mucomplete#enable_auto_at_startup = 1
  let g:mucomplete#completion_delay = 3

" ultisnips
  let g:UltiSnipsExpandTrigger="<Tab>"
  let g:UltiSnipsJumpForwardTrigger="<Tab>"
  let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" lsp client
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rls'],
    \ }
nnoremap <leader><leader> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>

" airline
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline#extensions#tabline#formatter = 'unique_tail'
  let g:airline_powerline_fonts = 1

  if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif

" vimtex
  let g:tex_flavor='latex'
  " enable this if you need forward and backward search
  " let g:vimtex_view_method='zathura'
  let g:vimtex_quickfix_mode=0

" smart spell check
  autocmd BufReadPost,BufNewFile *.tex setlocal spell | set spelllang=en_us | inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" rust
autocmd BufWritePost *.rs call LanguageClient#textDocument_formatting()

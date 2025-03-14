" Pressing Ctrl-N twice in normal mode, Vim toggles between
" showing and hiding line numbers.
nmap <C-N><C-N> :set invnumber invrelativenumber<CR>
set scrolloff=8

" Set Make to compile correctly in Vi
set makeprg=make\ %:r.o

" Smart tabbing / autoindenting
set undolevels=100
set nocompatible
set autoindent
set smarttab

" Allow backspace to back over lines
set backspace=2
set exrc
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set cino=t0
set cindent shiftwidth=2

" This changes the status bar highlight slightly from the default
"set highlight=8b,db,es,mb,Mn,nu,rs,ss,tb,vr,ws

" Quite
set visualbell

" Give some room for errors
set cmdheight=2

" always show a status line
au VimEnter * set laststatus=2

" Show the line and column number of the cursor position
set ruler

" Use a viminfo file
set viminfo='20,\"50

" Always limit the width of text to 80 chars
"set textwidth=80

" Keep a history
set history=100

" Toggle paste/nopaste
map zp :set paste! paste?<CR>

" Switch off search pattern highlighting
set nohlsearch
set incsearch

" Switch on syntax highlighting.
syntax on

" Set background to dark to make colors pop
set background=dark

" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set updatetime=50

" Disable Q Ex mode
nnoremap Q <Nop>
" Disable macro
nnoremap q <Nop>

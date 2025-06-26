" UI improvements
au VimEnter * set laststatus=2
set cmdheight=2
set ruler
set visualbell
set background=dark
set showcmd
" Set updatetime to 50ms from default 4000 ms
set updatetime=50
" Disable Q Ex mode
nnoremap Q <Nop>
syntax on

" History
set history=100
set undolevels=100

" Toggle paste/nopaste
map zp :set paste! paste?<CR>

" Extend the command time from default 1 second (1000 ms) to 2 seconds
set timeoutlen=2000

" Use comma as the leader key
let mapleader = ","

" Vertical Split
nnoremap <leader>v <C-w>v

" Horizontal Split
nnoremap <leader>s <C-w>s

" Move to the previous windows hjkl
nnoremap <leader>h <C-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Quit the window
nnoremap <leader>q <C-w>q

" show and hide line numbers
nnoremap <leader>n :set invnumber invrelativenumber<CR>
set scrolloff=8

" YAML editing
autocmd FileType yaml setlocal ai ts=2 sw=2 et nu cuc

"""""""""""""""""
" misc settings
"""""""""""""""""

" Disable macro
nnoremap q <Nop>

" Enable true color
"if exists('+termguicolors')
"  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"  set termguicolors
"endif

" Always limit the width of text to 80 chars
"set textwidth=80

" Switch off search pattern highlighting
set nohlsearch
set incsearch

" Use a viminfo file (google to find the best numbers)
"set viminfo='1000,\"1000

" Always limit the width of text to 80 chars
"set textwidth=80

" Smart tabbing / autoindenting
"set nocompatible
"set autoindent
"set smarttab

" Allow backspace to back over lines
"set backspace=2
"set exrc
"set expandtab
"set shiftwidth=4
"set softtabstop=4
"set tabstop=4
"set cino=t0
"set cindent shiftwidth=2

" Set Make to compile correctly in Vi
set makeprg=make\ %:r.o

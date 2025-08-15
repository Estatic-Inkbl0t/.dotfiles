" UI improvements
au VimEnter * set laststatus=2
set cmdheight=2
set ruler
set visualbell
set background=dark
set showcmd
set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" Set updatetime to 50ms from default 4000ms
set updatetime=50

" Disable Q Ex mode
nnoremap Q <Nop>
syntax on

" Enable filetype detection, plugins, and indenting
filetype plugin indent on

" History
set history=100
set undolevels=100

" Toggle paste/nopaste
map zp :set paste! paste?<CR>

" Extend the command time from default 1 second (1000 ms) to 2 seconds
set timeoutlen=2000

" Use comma s the leader key
let mapleader = ","

" Vertical split
nnoremap <leader>v <C-w>v

" Horizontal split
nnoremap <leader>s <C-w>s

" Move to previous windows hjkl
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Quit the window
nnoremap <leader>q <C-w>q

" Show and hide line numbers
nnoremap <leader>n :set invnumber inrelativenumber<CR>
set scrolloff=8

"-----------------------------------------------------------------------
" General indentin: use spaces (not tabs), 4-space steps, auto-indent
"-----------------------------------------------------------------------
set expandtab       # use spaces instead of tabs
set shiftwidth=4    # indent/outdent by 4 spaces for << >> commands
set softtabstop=4   # make Tab/Backspace insert/delete up to 4 spaces
set tabstop=4       # a real <Tab> equals 4 spaces when editing
set autoindent      # new line inherits indent from previous

" Python override (in case change globals later)
autocmd FileType python setlocal ai ts=4 sw=4 et sts=4 nu cuc

" YAML editing
autocmd FileType yaml setlocal ai ts=2 sw=2 et nu cuc

"-----------------------------------------------------------------------
" Misc settings
"-----------------------------------------------------------------------
" Disable macro recording with 'q'
nnoremap q <Nop>

" Switch off search highlighting by defautl, but keep incremental search
set nohlsearch
set incsearch

" Set Make to compile correctly in Vi
set makeprg=make\ %:r.o

" UI improvements
au VimEnter * set laststatus=2
set cmdheight=2
set ruler
set visualbell
set background=dark
set showcmd
set colorcolumn=80
highlight ColorColumn ctermbg=160 guibg=#d70000

" Set updatetime to 50ms from default 4000 ms
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

" Use comma as the leader key
let mapleader = ","

" Vertical Split
nnoremap <leader>v <C-w>v

" Horizontal Split
nnoremap <leader>s <C-w>s

" Move to the previous windows hjkl
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Quit the window
nnoremap <leader>q <C-w>q

" Show and hide line numbers
nnoremap <leader>n :set invnumber invrelativenumber<CR>
set scrolloff=8

"──────────────────────────────────────────────────────────────────────────────
" General indenting: use spaces (not tabs), 4-space steps, auto-indent
" ai=autoindent, ts=tabstop, sw=shiftwidth, et=expandtab                        
" sts=softtabstop, nu=number, cuc=cursorcolumn, cul=cursorline
"──────────────────────────────────────────────────────────────────────────────
set autoindent       " new line inherits indent from previous                   
set tabstop=4        " a real <Tab> equals 4 spaces when editing                
set shiftwidth=4     " indent/outdent by 4 spaces for << >> commands            
set expandtab        " use spaces instead of tabs                               
set softtabstop=4    " make Tab/Backspace insert/delete up to 4 spaces          

" YAML override
autocmd FileType yaml setlocal ai ts=2 sw=2 et cuc

" Python override (in case you change globals later)
autocmd FileType python setlocal ai ts=4 sw=4 et sts=4

"──────────────────────────────────────────────────────────────────────────────
" Misc settings
"──────────────────────────────────────────────────────────────────────────────
" Disable macro recording with 'q'
nnoremap q <Nop>

" Switch off search highlighting by default, but keep incremental search
set nohlsearch
set incsearch

" Set Make to compile correctly in Vi
set makeprg=make\ %:r.o

" Set background to dark to make colors pop
set background=dark

" Enable true color
"if exists('+termguicolors')
"  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"  set termguicolors
"endif

" auto source when writing to init.vm 
au! BufWritePost $MYVIMRC source %

" set leader key
let g:mapleader = ","

" Theme
syntax enable
set background=dark
set t_Co=256
set number
 	
" Leader bindings
" clear white space in file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" split window vertically
nnoremap <leader>w <C-w>v<C-w>l
" open NERDTree
nnoremap <leader>c :NERDTreeToggle<Enter>
" Organise imports
nnoremap <leader>o :OR<Enter>
" Set relative number
nnoremap <leader>rl :set invrelativenumber<CR>

" Windows & Buffers
set splitright
set splitbelow
set hidden
set cmdheight=2
set updatetime=300

" Use <C> + hjkl to navigate windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use alt + hjkl to resize windows
" nnoremap <M-j>    :resize -2<CR>
" nnoremap <M-k>    :resize +2<CR>
" nnoremap <M-h>    :vertical resize -2<CR>
" nnoremap <M-l>    :vertical resize +2<CR>

" Formatting
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
" Set search conditions
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
runtime macros/matchit.vim

" Allow easy copy and paste
set clipboard=unnamedplus

" Disable backups/swp files
set nobackup
set nowritebackup
set noswapfile
set wildignore=*.swp
set shortmess+=c

" Remaps
" quick double tab j for escape
inoremap jj <ESC>

" Disable arrows
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :

" do syntax rendering on buffer enter/leave
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

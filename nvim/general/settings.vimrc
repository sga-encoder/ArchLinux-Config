syntax on
set ruler
set number
set numberwidth=1
set showcmd
set showmatch
set relativenumber
set noshowmode
set cursorline
set mouse=a

set mousemodel=popup
set t_Co=256
set guioptions=egmrti

" Status bar    
set laststatus=2


" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8


" Fix Backspace indent
set backspace=indent,eol,start


" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab


" Enable hidden buffers
set hidden


" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase


" File format
set fileformats=unix,dos,mac

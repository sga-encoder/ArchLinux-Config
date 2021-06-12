" Required
call plug#begin('~/.vim/plugged')

let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif
Plug 'Shougo/vimproc.vim', {'do': g:make}

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


"----------------------------------------------
"                   Themes
"----------------------------------------------
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colorscheme
Plug 'cocopon/iceberg.vim'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'icymind/neosolarized'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'zeis/vim-kolor'
Plug 'danilo-augusto/vim-afterglow'
Plug 'mhartington/oceanic-next'

" Icons
Plug 'ryanoasis/vim-devicons' 
Plug 'powerline/powerline'

" Syntax Hightlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'jelera/vim-javascript-syntax'
Plug 'hail2u/vim-css3-syntax'
Plug 'tpope/vim-haml'
Plug 'nikvdp/ejs-syntax'

" General
Plug 'vim-scripts/CSApprox'


"----------------------------------------------
"                  IDE
"----------------------------------------------
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'gko/vim-coloresque'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}


"----------------------------------------------
"                Keppings
"----------------------------------------------
" NerdTree
Plug 'jistr/vim-nerdtree-tabs'

" General
Plug 'tpope/vim-commentary'

" Git
Plug 'tpope/vim-fugitive'

"----------------------------------------------
"               Autocomplete
"----------------------------------------------
Plug 'neoclide/coc.nvim',{'branch': 'release'}

" html
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'

" python
Plug 'davidhalter/jedi-vim'

"----------------------------------------------
"                   Formatter
"----------------------------------------------
"JavaScript
Plug 'eslint/eslint'
Plug 'chiel92/vim-autoformat'
call plug#end()

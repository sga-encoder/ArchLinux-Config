"colorscheme molokai
"colorscheme gruvbox
"colorscheme dracula
"colorscheme OceanicNext
"colorscheme iceberg
"colorscheme afterglow
colorscheme kolor

"let g:airline_theme = 'gruvbox'
"let g:airline_theme = 'dracula'
"let g:airline_theme = 'afterglow'
let g:airline_theme = 'iceberg'

" Gruvbox
let g:gruvbox_contrast_dark = 'hard' 

" Kolor
let g:kolor_italic=1
let g:kolor_bold=1
let g:kolor_underlined=0
let g:kolor_alternative_matchparen=0
let g:kolor_inverted_matchparen=0

" Oceanic Next
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

if (has("termguicolors"))
 set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let background = 'dark'

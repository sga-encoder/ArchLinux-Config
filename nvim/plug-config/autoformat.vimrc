let g:python3_host_prog="/path/to/python/executable/"

noremap <F4> :Autoformat<CR>

au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

gg=G
:retab
:RemoveTrailingSpaces

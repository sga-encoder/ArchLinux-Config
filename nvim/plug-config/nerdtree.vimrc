set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
let NERDTreeQuitOnOpen=1

"----------------------------------------------
"                   Variables
"----------------------------------------------
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
let g:NERDTreeDirArrowExpandable = ' '
let g:NERDTreeDirArrowCollapsible = ' '
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

"----------------------------------------------
"                   Autocmd
"----------------------------------------------
autocmd BufWinEnter * silent NERDTreeMirror
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif


"----------------------------------------------
"                   Mapping
"----------------------------------------------
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

augroup custom_nerdtree_options
    autocmd!
    autocmd FileType,WinEnter * :call <SID>SetNerdTreeOptions()
augroup END

function! s:SetNerdTreeOptions() abort
    if &l:filetype ==# 'nerdtree'
        let g:default_opts = {
                    \   'ambiwidth': &ambiwidth,
                    \   'listchars': &listchars,
                    \   'list'     : &l:list,
                    \ }
        setlocal ambiwidth=double listchars=space:. nolist
    else
        if exists('g:default_opts')
            let [&ambiwidth, &listchars, &l:list] = [
                        \   g:default_opts.ambiwidth,
                        \   g:default_opts.listchars,
                        \   g:default_opts.list
                        \ ]
            unlet g:default_opts
        endif
    endif
endfunction

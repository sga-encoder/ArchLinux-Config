" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>


" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>


" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>


" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>


" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>


" Buffer nav
noremap <leader>h :bp<CR>
noremap <leader>j :bp<CR>
noremap <leader>k :bn<CR>
noremap <leader>l :bn<CR>


" Close buffer
noremap <leader>q :bd<CR>


" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>


" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv


" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


" Open current line on GitHub
nnoremap <Leader>o :.Gbrowse<CR>
cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>


"Recovery commands from history through FZF
nmap <leader>y :History:<CR>

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>


" Abbreviations
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
cnoreabbrev ZFA zfa{

" Terminal emulation
nnoremap <silent> <leader>sh :terminal<CR>

nmap <C-Q> :wq!<CR>    
imap <C-Q> <ESC>:wq!<CR>

nmap <C-W> :w<CR>
imap <C-W> <ESC>:w<CR>

nmap <leader>S :source ~/.config/nvim/.vimrc<CR>
imap <C-S-A> <ESC>:source %<CR>

let mapleader=" "

" Telescope
nnoremap <silent> <C-f> <cmd>Telescope find_files<CR>
nnoremap <silent> <C-g> <cmd>Telescope git_files<CR>
nnoremap <silent> <C-b> <cmd>Telescope buffers<CR>
nnoremap <leader>{{ <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Improve window navigation
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" Buffers
"" Improve buffer navigation
map <C-h> :bprevious<CR>
map <C-l> :bnext<CR>
nnoremap <leader>q :bd<CR>
"" Close all except current
command! BufOnly execute '%bdelete|edit #|bd #|normal `"'
nnoremap <C-w> :BufOnly<CR>

" Center cursor in screen when moving
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz

" Golang
nnoremap <leader>t <cmd>GoTestFunc<CR>
nnoremap <leader>i <cmd>GoImports<CR>

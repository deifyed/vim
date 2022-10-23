let mapleader=" "

" Telescope
nnoremap <silent> <C-f> :lua require('telescope.builtin').find_files()<CR>
nnoremap <silent> <C-g> :lua require('telescope.builtin').git_files()<CR>
nnoremap <silent> <C-b> :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>{{ :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Improve window navigation
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" Improve buffer navigation
map <C-l> :bprev<CR>
nnoremap <leader>q :bd<CR>

" Center cursor in screen when moving
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz

" Golang
nnoremap <leader>t <cmd>GoTestFunc<CR>
nnoremap <leader>i <cmd>GoImports<CR>

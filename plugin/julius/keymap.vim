let mapleader=" "

" Telescope
nnoremap <silent> <C-f> :lua require('telescope.builtin').find_files()<CR>
nnoremap <silent> <C-g> :lua require('telescope.builtin').git_files()<CR>
nnoremap <silent> <C-b> :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>{{ :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"" FZF
"nnoremap <silent> <C-f> :Files<CR>
"nnoremap <silent> <C-g> :GFiles<CR>
"nnoremap <silent> <Leader>f :Rg<CR>

" Improve window navigation
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

nnoremap <silent> <Leader>a :ArgWrap<CR>

" Center cursor in screen when moving
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz

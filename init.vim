set runtimepath^=~/.config/nvim
let &packpath = &runtimepath

" Adding a new plugin:
" 1. Add an entry below
" 2. To source the changes, run :so %
" 3. Install the new plugin by running :PlugInstall

call plug#begin('~/.config/nvim/plugged')

" LSP base
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp' " Autocomplete
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" LSP language addons
Plug 'ray-x/go.nvim' "; TSInstall go to install parser
Plug 'ray-x/guihua.lua' "; recommanded if need floating window support

" Autopair
Plug 'windwp/nvim-autopairs' " Automatically close braces/brackets/etc

" Airline
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Status bar themes

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Improved syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter-context' " Adds function signature as a sticky header
Plug 'nvim-lua/telescope.nvim'

" FZF
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Personal
Plug 'vimwiki/vimwiki'
Plug 'itchyny/calendar.vim'

" Languages
Plug 'FooSoft/vim-argwrap' " Multiline / singleline arguments
Plug 'hashivim/vim-terraform'
Plug 'posva/vim-vue'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Themes
Plug 'morhetz/gruvbox'

call plug#end()


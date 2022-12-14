" Line numbering
set number " Show current line number
set relativenumber " Show previous and coming line numbers relative to current

" Indentation
set autoindent " Copy indent from current line when starting new line
set noexpandtab " Disable using appropriate number of spaces to insert a TAB
set tabstop=2 " Number of spaces that a TAB should count for
set shiftwidth=2

" Div
set noerrorbells " Disable error bell (or screen flash) upon error
set encoding=UTF-8 " Use UTF-8 encoding
set nohlsearch " Do not highlight searches
set nocompatible " Vim does not need to be Vi compatible
set hidden " Do not ask to save files when changing buffer
set colorcolumn=125 " Display vertical bar at certain width. 125 is Github max characters in diff view
set textwidth=125 " Automatically wrap at certain width. 125 is Github max characters in diff view
set mouse= " Disable mouse
set clipboard+=unnamedplus " Copy to system clipboard
set ignorecase " Ignore case when searching

set wildmenu " Enable wildmenu
set wildmode=longest:full,full " Enable wildmenu

" Colors
set background=dark " 
"colorscheme solarized " Use solarized theme // needs to be in runtimepath/colors
let g:gruvbox_italic=1
colorscheme gruvbox

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

hi clear error
highlight error gui=bold guifg=#cc241d

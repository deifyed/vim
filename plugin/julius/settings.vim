let mapleader=" "

" Line numbering
set number " Show current line number
set relativenumber " Show previous and coming line numbers relative to current

" Indentation
set shiftwidth=4

" Calendar
let g:calendar_cache_directory = expand('~/life/calendar') " Move storage to

" Div
set noerrorbells " Disable error bell (or screen flash) upon error
set encoding=UTF-8 " Use UTF-8 encoding
set nohlsearch " Do not highlight searches
set nocompatible " Vim does not need to be Vi compatible
set hidden " Do not ask to save files when changing buffer
set colorcolumn=125 " Github max characters in diff view

lua << EOF
require("nvim-autopairs").setup {}
EOF

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


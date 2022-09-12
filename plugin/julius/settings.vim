let mapleader=" "

" Line numbering
set number " Show current line number
set relativenumber " Show previous and coming line numbers relative to current

" Colors
set background=dark " 
colorscheme solarized " Use solarized theme // needs to be in runtimepath/colors

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

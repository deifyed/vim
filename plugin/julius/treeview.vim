" File explorer
let g:NetrwIsOpen=0

function! ToggleNetrw()
	if g:NetrwIsOpen == 0
		" Hide dotfiles by default
		let ghregex='\(^\|\s\s\)\zs\.\S\+,build'
		let g:netrw_list_hide=ghregex

		let g:netrw_liststyle=3 " Enable visual tree in treeview
		let g:netrw_banner=0 " Hide banner
		let g:netrw_browse_split=4 " Control action when opening a file
		let g:netrw_altv = 1

		silent Lexplore " Toggle open treeview

		vertical resize 40 " Resize treeview

		wincmd l " Move back to the original window
		let g:NetrwIsOpen=1
	else
		silent Lexplore " Toggle close treeview
		let g:NetrwIsOpen=0
	endif
endfunction

nnoremap <silent> <A-1> :call ToggleNetrw()<CR>

augroup netrw
		autocmd!
		" Automatically open netrw when vim starts
		autocmd VimEnter * call ToggleNetrw()
		" Automatically close netrw if it's the only window left
		autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
augroup END


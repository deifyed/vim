" File explorer
let g:NetrwIsOpen=0

" Toggles treeview on/off
function! ToggleNetrw()
		let ghregex='\(^\|\s\s\)\zs\.\S\+,build'

    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
				let g:netrw_liststyle=3
				let g:netrw_list_hide=ghregex
				let g:netrw_banner=0
				let g:netrw_browse_split=4
        silent Lexplore
	vertical resize 40
    endif
endfunction

nnoremap <silent> <A-1> :call ToggleNetrw()<CR>


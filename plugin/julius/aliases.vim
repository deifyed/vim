abbrev iferr if err != nil {<CR>return fmt.Errorf(": %w", err)<CR>}<esc>k$BB3h
abbrev ifnerr if err != nil {<CR>return nil, fmt.Errorf(": %w", err)<CR>}<esc>k$BB3h
abbrev clog console.log('')<esc>hi

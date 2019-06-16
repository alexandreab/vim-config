setlocal shiftwidth=4
setlocal softtabstop=4
set expandtab

set tw=79

set colorcolumn=+1
highlight ColorColumn ctermbg=yellow guibg=lightyellow

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
    augroup END

:let python_space_error_highlight = 1


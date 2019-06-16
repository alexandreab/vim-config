command -buffer Comp !g++ -o '%:t:r' -W -Wall -ansi -pedantic -I. '%:p' <bar> echo File compiled<CR>

":autocmd BufNewFile  *.c      0r ~/vim/skeleton.c


" :autocmd BufEnter  *    abbr FOR for (i = 0; i < 3; ++i)<CR>{<CR>}<Esc>O
" :autocmd BufLeave  *    unabbr FOR

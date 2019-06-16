setlocal shiftwidth=4
setlocal softtabstop=4
set expandtab

set textwidth=80

"To solve the propleme with vim-latexsuite has with ã and â
imap <buffer> <silent> <M-C> <Plug>Tex_MathCal
imap <buffer> <silent> <M-B> <Plug>Tex_MathBF
imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine
imap <buffer> <silent> <M-A>  <Plug>Tex_InsertItem
"imap <buffer> <silent> <M-E>  <Plug>Tex_InsertItem
imap <buffer> <silent> <M-e>  <Plug>Tex_InsertItemOnThisLine
map <buffer> <silent> é é
map <buffer> <silent> á á
map <buffer> <silent> ã ã
"imap ã <Plug>Tex_MathCal
"imap é <Plug>Traditional

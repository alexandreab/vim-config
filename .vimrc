set number

set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

nmap <C-t> :tabnew<CR>
nmap <C-n> :tabnext<CR>
nmap <C-p> :tabprevious<CR>

nmap <C-.> :tabnew .<CR>
nmap <C-,> :tabprevious<CR>

syntax on
filetype indent plugin on
set background=dark

set colorcolumn=+1
autocmd ColorScheme * highlight ColorColumn ctermbg=yellow guibg=lightyellow

"Configuracao para usar xclip diretamente no vim
"% pega o caminho completo do arquivo.
"alias cbcf='vim `cat %:p | cb`'
nmap <C-F7> :!cat '%:p' <bar> xclip -sel clip <bar> echo Text has been copied to clipboard<CR>

autocmd FileType c,cpp,ruby,python autocmd BufWritePre <buffer> :%s/\s\+$//e

"!gnome-session-quit --no-prompt
"au BufRead .bashrc :call EditConfig()
"au BufRead .vimrc :call EditConfig()
"au BufRead .bash_profile :call EditConfig()

"function! EditConfig()
"	if exists("g:gwp")
"		unlet g:gwp
"	else
"		!cinnamon-session-quit --no-prompt
"	endif
"endfunction

imap <F9> <Esc>:!clear && make -f '%:p:h/Makefile'<CR>
"Configuração para sitaxe highlight de programas em vala
"so $HOME/.vim/myuser/valaconfigurations.vim

"Open Browser
command -buffer BrowserFile !iceweasel '%:p'

command -buffer Save w !sudo tee '%:p'


"Highlight of all matches
function! HighlightMatch()
	if exists("s:highlight_on")
		unlet s:highlight_on
		set nohlsearch
	else
		set hlsearch
		let s:highlight_on = 1
	endif
endfunction

if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor\ --ignore-case\ --column
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

set incsearch

nmap  :call HighlightMatch() <CR>

"Enable dictionary
set dictionary+=/usr/share/dict/words

"Disable paste mode when leaving Insert Mode
au InsertLeave * set nopaste

"Show Git diff in window split when commiting
autocmd FileType gitcommit DiffGitCached | wincmd p

"A more handy Esc
inoremap jj <Esc> 

"Abbreviations

ab aab Alexandre Almeida Barbosa

command -buffer Comp !gfortran -o '%:t:r' -W -Wall -pedantic -I. '%:p' <bar> echo File compiled<CR>

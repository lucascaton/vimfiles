" --------- plugins ---------

" Pathogen
call pathogen#runtime_append_all_bundles()

" --------- theme -----------

" Color Scheme
colorscheme ir_black

" Fonts for Linux
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
"set guifont=Monaco\ 10

" Fonts for Mac
set guifont=Monaco:h12

" ------- shourtcuts --------

" CTRL-R reloads the ~/.vimrc file
nnoremap <C-R> :source ~/.vimrc

" Shortcuts for copy and paste on Linux
vnoremap <C-C> "+y
inoremap <C-P> <ESC>"+pa
nnoremap <C-P> "+p

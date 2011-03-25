" --------- plugins ---------

call pathogen#runtime_append_all_bundles()

" --------- theme -----------

colorscheme ir_black

" ------- shourtcuts --------

" CTRL-R reloads the ~/.vimrc file
nnoremap <C-R> :source ~/.vimrc

" Shortcuts for copy and paste on Linux
vnoremap <C-C> "+y
inoremap <C-P> <ESC>"+pa
nnoremap <C-P> "+p


"  /===================================\
"  | VimFiles by Lucas Caton.          |
"  | http://blog.lucascaton.com.br/    |
"  | http://www.twitter.com/lucascaton |
"  | Created at 2011, January.         |
"  \===================================/


" ------------ plugins ------------

" Pathogen
call pathogen#runtime_append_all_bundles()

" Flog
silent exe "g:flog_enable"


" ------------ theme --------------

" Color Scheme
colorscheme ir_black

" Fonts for Linux
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
"set guifont=Monaco\ 10

" Fonts for Mac
set guifont=Monaco:h12


" ---------- shourtcuts -----------

" Ctrl+R reloads the ~/.vimrc file
nnoremap <C-R> :source ~/.vimrc


" ----- shourtcuts for Linux ------

" Ctrl+C to copy and Ctrl+P to paste
vnoremap <C-C> "+y
inoremap <C-P> <ESC>"+pa
nnoremap <C-P> "+p

" Ctrl+S to save the current file
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

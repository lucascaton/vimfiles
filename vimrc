"  /===================================\
"  | VimFiles by Lucas Caton.          |
"  | http://blog.lucascaton.com.br/    |
"  | http://www.twitter.com/lucascaton |
"  | Created at 2011, January.         |
"  \===================================/


" ---------------------------------
" Plugins
" ---------------------------------

" Pathogen
call pathogen#runtime_append_all_bundles()

" Flog
silent exe "g:flog_enable"

" Gist-vim
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" NERDTree
nmap <F2> :NERDTreeToggle<CR>

" Tabular
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction


" ---------------------------------
" Settings
" ---------------------------------

" Completion
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python     set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html       set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css        set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml        set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php        set omnifunc=phpcomplete#CompletePHP
autocmd FileType c          set omnifunc=ccomplete#Complete

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" Autoindent with two spaces, always expand tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Highlight the line and the column of the current position of cursor
set cursorline
set cursorcolumn

" Folding settings
" set foldmethod=indent   "fold based on indent
" set foldnestmax=10      "deepest fold is 3 levels
set nofoldenable        "dont fold by default
" set foldlevel=1

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

" Vertical / horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set wrap  " Line wrapping on
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

" Highlight all search results
set hlsearch

" Plugin and indentation on
filetype plugin indent on

" ---------------------------------
" Theme
" ---------------------------------

" Color Scheme
colorscheme ir_black

" Fonts for Linux
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
"set guifont=Monaco\ 10

" Fonts for Mac
set guifont=Monaco:h12

" Don't show the top bar
set guioptions-=T

" Syntax on
syntax on

if has("gui_running")
  set t_Co=256
  set lines=57
  set columns=237
else
  let g:CSApprox_loaded = 0
endif

" ---------------------------------
" Functions
" ---------------------------------

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

set list listchars=tab:»·,trail:·

map <leader>= :call TrimWhiteSpace()<CR>
map! <leader>= :call TrimWhiteSpace()<CR>

" ---------------------------------
" Shortcuts
" ---------------------------------

" Ctrl+R reloads the ~/.vimrc file
nnoremap <C-R> :source ~/.vimrc

" Ctrl+L clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>

" ---------------------------------
" Shortcuts for Linux (Gvim)
" ---------------------------------

" Ctrl+C to copy and Ctrl+P to paste
vnoremap <C-C> "+y
inoremap <C-P> <ESC>"+pa
nnoremap <C-P> "+p

" Ctrl+S to save the current file
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>

" Management tabs
nnoremap <C-t> :tabnew<cr>
nnoremap <C-T> :tabnew<cr>
nnoremap <A-w> :q<cr>
nnoremap <A-W> :q<cr>

" ---------------------------------
" Aliases
" ---------------------------------

cab W w
cab Q q
cab Wq wq
cab wQ wq
cab WQ wq

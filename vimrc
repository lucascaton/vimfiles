" ┌─────────────────────────────────────────┐
" │         VimFiles by Lucas Caton         │
" ├─────────────────────────────────────────┤
" │ http://lucascaton.com.br/               │
" | https://github.com/lucascaton/vimfiles/ |
" └─────────────────────────────────────────┘

" ┌───────────────────────────────────┐
" │              Vundle               │
" └───────────────────────────────────┘

set nocompatible " Unleash all Vim power
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'Lokaltog/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'danro/rename.vim'
Plugin 'godlygeek/tabular'
Plugin 'gorkunov/smartpairs.vim'
Plugin 'henrik/vim-ruby-runner'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'msanders/snipmate.vim'
Plugin 'rking/ag.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'vim-scripts/matchit.zip'

filetype plugin indent on

" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins

" ┌───────────────────────────────────┐
" │       Plugins customizations      │
" └───────────────────────────────────┘

" NERDTree
nmap <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let NERDTreeIgnore = [
  \'\.DS_Store$',
  \'\.bundle$',
  \'\.capistrano$',
  \'\.git$',
  \'\.keep$',
  \'\.routes$',
  \'\.sass-cache/$',
  \'\.swo$',
  \'\.swp$',
  \'tags$'
\]

" Tabular
inoremap <silent> <Bar> <Bar><Esc>:call <SID>align()<CR>a

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

if exists(":Tabularize")
  nmap <Leader>t= :Tabularize /=<CR>
  vmap <Leader>t= :Tabularize /=<CR>
  nmap <Leader>t> :Tabularize /=><CR>
  vmap <Leader>t> :Tabularize /=><CR>
  nmap <Leader>t: :Tabularize /:\zs<CR>
  vmap <Leader>t: :Tabularize /:\zs<CR>
endif

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 2
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1

" ┌───────────────────────────────────┐
" │             Settings              │
" └───────────────────────────────────┘

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

" Folding settings
set nofoldenable

set wildmode=list:longest " make cmdline tab completion similar to bash
set wildmenu " enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ " stuff to ignore when tab completing

" Vertical / horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

set cf " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set history=256 " Number of things to remember in history.
set autowrite " Writes on make/shell commands
set ruler " Ruler on
set nu " Line numbers on
set wrap " Line wrapping on
set timeoutlen=250 " Time to wait after ESC (default causes an annoying delay)

" Highlight all search results
set incsearch
set hlsearch

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" Forcing the use of hjkl keys to navigate
" noremap <Up> <nop>
" noremap <Down> <nop>
" noremap <Left> <nop>
" noremap <Right> <nop>
" inoremap <Up> <nop>
" inoremap <Down> <nop>
" inoremap <Left> <nop>
" inoremap <Right> <nop>

" Highlight long lines
" let w:m2=matchadd('Search',   '\%>100v.\+', -1)
" let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)

" Relative line numbers in normal mode
" set rnu
" au InsertEnter * :set nu
" au InsertLeave * :set rnu
" au FocusLost * :set nu
" au FocusGained * :set rnu

" Ignore case in searches
set ignorecase

" Open splits at right side (and below)
set splitright
set splitbelow

" Never ever let Vim write a backup file! They did that in the 70’s.
" Use modern ways for tracking your changes (like git), for God’s sake
set nobackup
set noswapfile

" Syntastic configs
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_mode_map={ 'mode': 'active',
                         \ 'active_filetypes': ['ruby', 'javascript'],
                         \ 'passive_filetypes': ['html'] }

" ┌───────────────────────────────────┐
" │               Theme               │
" └───────────────────────────────────┘

" Fonts for Linux
" set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
" set guifont=Monospace\ 10

" Fonts for Mac
" set guifont=Monaco\ for\ Powerline:h15
" set guifont=Menlo\ Regular:h16
" set guifont=Hack:h15
" set guifont=Anonymous\ Pro:h17
" set guifont=Inconsolata-dz:h17
set guifont=Roboto\ Mono\ for\ Powerline:h15

" Don't show the top bar
set guioptions-=T

" Syntax on
syntax on

set list listchars=tab:»·,trail:·

if has("gui_running")
  set lines=57
  set columns=237
  set colorcolumn=100

  " Highlight the line and the column of the current position of cursor
  set cursorline
  set cursorcolumn
  hi CursorLine guibg=#222222
  hi CursorColumn guibg=#222222
endif

if has("gui_running") || $TERM == "xterm-256color"
  set t_Co=256
  set background=dark " light
  let base16colorspace=256 " Access colors present in 256 colorspace
  " colorscheme base16-default
  " colorscheme base16-ocean
  colorscheme base16-tomorrow
else
  let g:CSApprox_loaded = 0
endif

" ┌───────────────────────────────────┐
" │             Functions             │
" └───────────────────────────────────┘

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

map  <leader>= :call TrimWhiteSpace()<CR>
map! <leader>= :call TrimWhiteSpace()<CR>

" Adds space between hash content and braces
function AddsSpaceBetweenHashContentAndBraces()
  silent! s/{\([^ ]\)/{ \1/
  silent! s/\([^ ]\)}/\1 }/
  ''
:endfunction

map  <leader>{ :call AddsSpaceBetweenHashContentAndBraces()<CR>
map! <leader>{ :call AddsSpaceBetweenHashContentAndBraces()<CR>

" Collapse multiple blank lines (regardless of quantity) into a single blank line.
function CollapseMultipleBlankLines()
  g/^\_$\n\_^$/d
  ''
:endfunction

map  <leader>- :call CollapseMultipleBlankLines()<CR>
map! <leader>- :call CollapseMultipleBlankLines()<CR>

" Invert lines
function InvertLines()
  g/^/m0
  ''
:endfunction

nnoremap <D-i> :call InvertLines()<cr>

" Convert Ruby 1.8 to 1.9 Hash Syntax
" http://robots.thoughtbot.com/convert-ruby-1-8-to-1-9-hash-syntax
function ConvertRubyHashSyntax()
  %s/:\([^ ]*\)\(\s*\)=>/\1:/g
  ''
:endfunction

nnoremap <leader>h :call ConvertRubyHashSyntax()<cr>

autocmd BufWritePre * :%s/\s\+$//e

" Bind \ (backward slash) to Ag shortcut
nnoremap \ :Ag -i<SPACE>
nnoremap \i :Ag<SPACE>

" Bind K to search for the word under cursor
nnoremap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

" Auto complete
let g:stop_autocomplete=0

function! CleverTab(type)
  if a:type=='omni'
    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      let g:stop_autocomplete=1
      return "\<TAB>"
    elseif !pumvisible() && !&omnifunc
      return "\<C-X>\<C-O>\<C-P>"
    endif
  elseif a:type=='keyword' && !pumvisible() && !g:stop_autocomplete
    return "\<C-X>\<C-N>\<C-P>"
  elseif a:type=='next'
    if g:stop_autocomplete
      let g:stop_autocomplete=0
    else
      return "\<C-N>"
    endif
  endif
  return ''
endfunction

inoremap <silent><TAB> <C-R>=CleverTab('omni')<CR><C-R>=CleverTab('keyword')<CR><C-R>=CleverTab('next')<CR>

" Tab toggle
function TabToggle()
  if &expandtab
    set noexpandtab
  else
    set expandtab
  endif
  retab!
endfunction
nmap <F9> mz:execute TabToggle()<CR>

" RSpec focus
function! s:Preserve(command)
  " Save cursor position
  let l = line(".")
  let c = col(".")

  " Do the business
  execute a:command

  " Restore cursor position
  call cursor(l, c)
  " Remove search history pollution and restore last search
  call histdel("search", -1)
  let @/ = histget("search", -1)
endfunction

function! s:AddFocusTag()
  call s:Preserve("normal! ^ / do$\<cr>C, focus: true do\<esc>")
endfunction
:nnoremap <leader>a :AddFocusTag<CR>
command! -nargs=0 AddFocusTag call s:AddFocusTag()

function! s:RemoveAllFocusTags()
  call s:Preserve("%s/, focus: true//e")
endfunction
:nnoremap <leader>d :RemoveAllFocusTags<CR>
command! -nargs=0 RemoveAllFocusTags call s:RemoveAllFocusTags()

function! UseSingleQuotes()
  execute ":%s/\"/'/g"
endfunction
map <Leader>' :call UseSingleQuotes()<CR>

function! UseDoubleQuotes()
  execute ":%s/'/\"/g"
endfunction
map <Leader>" :call UseDoubleQuotes()<CR>

function! OpenGemfile()
  if filereadable("Gemfile")
    execute ":tab drop Gemfile"
  end
endfunction
map <Leader>g :call OpenGemfile()<CR>

function! OpenRoutes()
  if filereadable("config/routes.rb")
    execute ":tab drop config/routes.rb"
  end
endfunction
map <Leader>r :call OpenRoutes()<CR>

function! OpenSpecHelper()
  if filereadable("spec/spec_helper.rb")
    execute ":tab drop spec/spec_helper.rb"
  end
endfunction
map <Leader>s :call OpenSpecHelper()<CR>

function! OpenFactoryFile()
  if filereadable("spec/support/factories.rb")
    execute ":tab drop spec/support/factories.rb"
  else
    if filereadable("spec/factories.rb")
      execute ":tab drop spec/factories.rb"
    end
  end
endfunction
map <Leader>f :call OpenFactoryFile()<CR>

" Search and replace selected text (http://stackoverflow.com/questions/676600/vim-search-and-replace-selected-text)
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Mapping Y to yank from current cursor position till end of line
noremap Y y$

" Creates parent directories on save
function s:MkNonExDir(file, buf)
  if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
    let dir=fnamemodify(a:file, ':h')
    if !isdirectory(dir)
      call mkdir(dir, 'p')
    endif
  endif
endfunction
augroup BWCCreateDir
  autocmd!
  autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

" ┌───────────────────────────────────┐
" │             Shortcuts             │
" └───────────────────────────────────┘

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" Ctrl+R reloads the ~/.vimrc file
nnoremap <F12> :source ~/.vimrc

" Ctrl+L clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>

" Improve 'n' command (for searches)
nmap n nzz
nmap N Nzz

" Mappings to move lines: http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <D-j> :m .+1<CR>==
nnoremap <D-k> :m .-2<CR>==
inoremap <D-j> <Esc>:m .+1<CR>==gi
inoremap <D-k> <Esc>:m .-2<CR>==gi
vnoremap <D-j> :m '>+1<CR>gv=gv
vnoremap <D-k> :m '<-2<CR>gv=gv

" A trick for when you forgot to sudo before editing a file that requires root privileges (typically /etc/hosts).
" This lets you use w!! to do that after you opened the file already:
cmap w!! w !sudo tee % >/dev/null

" Sets Q to apply @q macros
nnoremap Q @q
vnoremap Q :norm @q<cr>

" Adds a `puts` for code inspection (Ruby language)
noremap <leader>p yypk^<Esc>iputs "#{'-' * `tput cols`.to_i}\n<Esc>$a: #{<Esc>Jx$a.inspect}\n#{'-' * `tput cols`.to_i}"<Esc>

" ┌───────────────────────────────────┐
" │     Shortcuts for Linux (Gvim)    │
" └───────────────────────────────────┘

" Ctrl+C to copy and Ctrl+P to paste
" vnoremap <C-C> "+y
" inoremap <C-P> <ESC>"+pa
" nnoremap <C-P> "+p

" Ctrl+S to save the current file
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>

" Management tabs
nnoremap <C-t> :tabnew<cr>
nnoremap <C-T> :tabnew<cr>
nnoremap <A-w> :q<cr>
nnoremap <A-W> :q<cr>

" ┌───────────────────────────────────┐
" │              Aliases              │
" └───────────────────────────────────┘

cab W w
cab Q q
cab Wq wq
cab wQ wq
cab WQ wq
cab tabe tab drop
cab Tabe tab drop
cab E e

" ┌───────────────────────────────────┐
" │        Syntax Highlighting        │
" └───────────────────────────────────┘

au BufNewFile,BufRead *.thor       set filetype=ruby
au BufNewFile,BufRead Guardfile    set filetype=ruby
au BufNewFile,BufRead .pryrc       set filetype=ruby
au BufNewFile,BufRead Vagrantfile  set filetype=ruby
au BufNewFile,BufRead *.pp         set filetype=ruby
au BufNewFile,BufRead *.prawn      set filetype=ruby
au BufNewFile,BufRead Appraisals   set filetype=ruby
au BufNewFile,BufRead Capfile      set filetype=ruby
au BufNewFile,BufRead *.rabl       set filetype=ruby
au BufNewFile,BufRead .psqlrc      set filetype=sql
au BufNewFile,BufRead *.less       set filetype=css
au BufNewFile,BufRead bash_profile set filetype=sh
au BufNewFile,BufRead *.hbs        set filetype=html
au BufNewFile,BufRead *.yml.sample set filetype=yaml

" Git hooks
au BufNewFile,BufRead applypatch-msg     set filetype=ruby
au BufNewFile,BufRead commit-msg         set filetype=ruby
au BufNewFile,BufRead post-update        set filetype=ruby
au BufNewFile,BufRead pre-applypatch     set filetype=ruby
au BufNewFile,BufRead pre-commit         set filetype=ruby
au BufNewFile,BufRead pre-push           set filetype=ruby
au BufNewFile,BufRead pre-rebase         set filetype=ruby
au BufNewFile,BufRead prepare-commit-msg set filetype=ruby

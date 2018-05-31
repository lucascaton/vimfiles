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

Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'danro/rename.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'gorkunov/smartpairs.vim'
Plugin 'henrik/vim-ruby-runner'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'mileszs/ack.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rhubarb'
Plugin 'vim-scripts/matchit.zip'

filetype plugin indent on

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
  \'\.gitkeep$',
  \'\.keep$',
  \'\.localized$',
  \'\.routes$',
  \'\.sass-cache$',
  \'\.swo$',
  \'\.swp$',
  \'tags$'
\]

" Ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

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
let g:ctrlp_use_caching = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules$',
  \ 'file': '\v\.(exe|so|dll|.DS_Store)$',
  \ }

" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1

" vim-jsx
let g:jsx_ext_required = 0

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
set autoindent
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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '🤔'
let g:syntastic_warning_symbol = '😱'
let g:syntastic_style_warning_symbol = '💩'

" let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_coffee_checkers = ['coffeelint']
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_html_tidy_ignore_errors = [" proprietary attribute \"ng-"]
let g:syntastic_haml_checkers = ['haml_lint']
" let g:syntastic_mode_map = { 'mode': 'active',
"                            \ 'active_filetypes': ['ruby', 'javascript', 'coffee', 'haml'],
"                            \ 'passive_filetypes': ['html'] }

highlight link SyntasticErrorSign        SignColumn
highlight link SyntasticWarningSign      SignColumn
highlight link SyntasticStyleErrorSign   SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" ┌───────────────────────────────────┐
" │               Theme               │
" └───────────────────────────────────┘

" Fonts for Linux
" set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
" set guifont=Monospace\ 10

" Fonts for Mac
" set guifont=Monaco\ for\ Powerline:h15
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
  let base16colorspace=256 " Access colors present in 256 colorspace
  " colorscheme base16-default-dark
  colorscheme base16-ocean
  " colorscheme base16-tomorrow-night
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

" Sets file types
map  <leader><leader>c :set ft=css<CR>
map  <leader><leader>C :set ft=coffee<CR>
map  <leader><leader>e :set ft=eruby<CR>
map  <leader><leader>h :set ft=html<CR>
map  <leader><leader>H :set ft=haml<CR>
map  <leader><leader>j :set ft=javascript<CR>
map  <leader><leader>m :set ft=markdown<CR>
map  <leader><leader>r :set ft=ruby<CR>
map  <leader><leader>s :set ft=sh<CR>
map  <leader><leader>S :set ft=sql<CR>
map  <leader><leader>t :set ft=text<CR>
map  <leader><leader>y :set ft=yaml<CR>

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
nnoremap \ :Ack -i<SPACE>
nnoremap \i :Ack<SPACE>

" Bind K to search for the word under cursor
nnoremap K :Ack "\b<C-R><C-W>\b"<CR>:cw<CR>

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

function! OpenGemfileLock()
  if filereadable("Gemfile.lock")
    execute ":tab drop Gemfile.lock"
  end
endfunction
map <Leader>G :call OpenGemfileLock()<CR>

function! OpenRoutes()
  if filereadable("config/routes.rb")
    execute ":tab drop config/routes.rb"
  end
endfunction
map <Leader>r :call OpenRoutes()<CR>

function! OpenReadme()
  if filereadable("README.md")
    execute ":tab drop README.md"
  else
    if filereadable("README.rdoc")
      execute ":tab drop README.rdoc"
    else
      if filereadable("README")
        execute ":tab drop README"
      end
    end
  end
endfunction
map <Leader>R :call OpenReadme()<CR>

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

map <Leader>v :tab drop $MYVIMRC<CR>
map <Leader>z :tab drop ~/.zshrc<CR>
map <Leader>pc :tab drop ~/Dropbox/.personal_configs/aliases_and_functions.sh<CR>

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

" Comment out current line or selected text (maintaining visual mode after it)
vmap <D-/> gcgv
nmap <D-/> gcc

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

" Improve 'gf' command (go to file) - make it open in a new tab
nmap gf <C-w>gf

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
cab t tab drop
cab T tab drop
cab tabe tab drop
cab Tabe tab drop
cab E e

" ┌───────────────────────────────────┐
" │        Syntax Highlighting        │
" └───────────────────────────────────┘

au BufNewFile,BufRead Guardfile    set filetype=ruby
au BufNewFile,BufRead Vagrantfile  set filetype=ruby
au BufNewFile,BufRead Capfile      set filetype=ruby
au BufNewFile,BufRead Podfile      set filetype=ruby
au BufNewFile,BufRead Brewfile     set filetype=ruby
au BufNewFile,BufRead *.thor       set filetype=ruby
au BufNewFile,BufRead .pryrc       set filetype=ruby
au BufNewFile,BufRead pryrc        set filetype=ruby
au BufNewFile,BufRead *.pp         set filetype=ruby
au BufNewFile,BufRead *.prawn      set filetype=ruby
au BufNewFile,BufRead Appraisals   set filetype=ruby
au BufNewFile,BufRead *.rabl       set filetype=ruby
au BufNewFile,BufRead *.cr         set filetype=ruby " Crystal
au BufNewFile,BufRead .psqlrc      set filetype=sql
au BufNewFile,BufRead psqlrc       set filetype=sql
au BufNewFile,BufRead *.less       set filetype=css
au BufNewFile,BufRead bash_profile set filetype=sh
au BufNewFile,BufRead *.hbs        set filetype=html
au BufNewFile,BufRead *.yml.sample set filetype=yaml
au BufNewFile,BufRead .env.*       set filetype=sh
au BufNewFile,BufRead *.cson       set filetype=coffee " Same as JSON but for CoffeeScript objects
au BufNewFile,BufRead .babelrc     set filetype=javascript
" au BufNewFile,BufRead *.snippet    set filetype=text

" Git hooks
au BufNewFile,BufRead applypatch-msg     set filetype=ruby
au BufNewFile,BufRead commit-msg         set filetype=ruby
au BufNewFile,BufRead post-update        set filetype=ruby
au BufNewFile,BufRead pre-applypatch     set filetype=ruby
au BufNewFile,BufRead pre-commit         set filetype=ruby
au BufNewFile,BufRead pre-push           set filetype=ruby
au BufNewFile,BufRead pre-rebase         set filetype=ruby
au BufNewFile,BufRead prepare-commit-msg set filetype=ruby

" ┌───────────────────────────────────┐
" │   Project Specific .vimrc Files   │
" └───────────────────────────────────┘

" https://andrew.stwrt.ca/posts/project-specific-vimrc/

set exrc
set secure

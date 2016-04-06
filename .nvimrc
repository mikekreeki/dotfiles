call plug#begin('~/.nvim/plugged')

" Buffer, File Navigation
Plug 'corntrace/bufexplorer'
Plug 'gorkunov/smartgf.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-unimpaired'
" Plug 'fholgado/minibufexpl.vim'
Plug 'tpope/vim-projectionist'

" Interface
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'inkarkat/SyntaxAttr.vim'
Plug 'milkypostman/vim-togglelist'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'regedarek/ZoomWin'
Plug 'tpope/vim-rsi'

" Searching
Plug 'Lokaltog/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-grepper'

" Autocomplete
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neopairs.vim'

" Code Editing
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'darvelo/vim-autoclose'
Plug 'edsono/vim-matchit'
Plug 'gorkunov/smartpairs.vim'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

" Snippets
Plug 'SirVer/ultisnips'

" Project Management
Plug 'airblade/vim-rooter'

" Git Integration
Plug 'airblade/vim-gitgutter'
Plug 'idanarye/vim-merginal'
Plug 'int3/vim-extradite'
Plug 'rhysd/committia.vim'
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'

" Building, Linters, Test Runners
Plug 'benekastah/neomake'
Plug 'benjie/neomake-local-eslint.vim'
Plug 'janko-m/vim-test'

" Ruby Integration
Plug 'AmaiSaeta/vim-ruby-sinatra'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'keith/rspec.vim'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

" JavaScript Integration
Plug 'elzr/vim-json'
Plug 'gavocanov/vim-js-indent'
Plug 'mlaursen/vim-react-snippets'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/yajs.vim'
" Plug 'pangloss/vim-javascript'
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'othree/jspc.vim'
" Plug 'bigfish/vim-js-context-coloring', { 'do': 'npm install' }
Plug 'mephux/vim-jsfmt'
Plug 'jparise/vim-graphql'

" CoffeeScript Integration
Plug 'kchmck/vim-coffee-script'

" Elm Integration
Plug 'lambdatoast/elm.vim'

" CSS Integration
Plug 'wavded/vim-stylus'

" Other Languages
Plug 'sheerun/vim-polyglot'

" Taking Notes
Plug 'duff/vim-scratch'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

" Terminal Integration
Plug 'kassio/neoterm'

" Colorschemes
" Plug 'mikekreeki/mikekreeki-colors.vim', { 'branch': 'refactoring' }
Plug '~/Projects/mikekreeki-colors.vim'

" Experiments
Plug 'joonty/vdebug'
Plug 'blindFS/vim-taskwarrior'
Plug 'rhysd/devdocs.vim'

call plug#end()

filetype plugin indent on
syntax on

set shell=/bin/zsh

let mapleader = ","

set encoding=utf-8
set fileencoding=utf-8
set hidden
set number
set nowrap
set showbreak=+++
set showmatch
set errorbells
set visualbell
set notildeop
set modelines=0
set mouse=
set nobackup
set noswapfile
set lazyredraw
set scrolloff=1
set synmaxcol=300
set nojoinspaces
set nostartofline
set wildmenu
set autoread
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set linebreak
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set gdefault
set scs
set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set wildmenu
set wildmode=longest:full,full
set completefunc=syntaxcomplete#Complete
execute "set colorcolumn=" . join(range(81,335), ',')
set shiftround
set history=250
set updatetime=750
set undofile                    " Save undo's after file closes
set undodir=~/.vim/undo         " where to save undo histories
set undolevels=1000             " How many undos
set undoreload=10000            " number of lines to save for undo
set winwidth=80
set splitright
set timeoutlen=500
set fillchars+=vert:\ " there is a single space after '\ '
set showcmd
set laststatus=2
set shortmess+=I
set conceallevel=2
set concealcursor=nvi
set noshowmode

nnoremap / /\v
vnoremap / /\v

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap j gj
nnoremap k gk

nnoremap J 10j
nnoremap K 10k

nnoremap <C-J> <C-d>
nnoremap <C-K> <C-u>
vnoremap <C-J> <C-d>
vnoremap <C-K> <C-u>

" move to beginning/end of line
noremap H ^
noremap L $

" $/^ doesn't do anything
noremap $ <nop>
noremap ^ <nop>
noremap $ <nop>
noremap ^ <nop>

" Bubble single lines
nmap <Up> [e
nmap <Down> ]e

" Bubble multiple lines
vmap <Up> [egv
vmap <Down> ]egv

" Jump to previously edited line
nnoremap ů g;

" Shorcut to edit .vimrc
nnoremap <leader>V :e $MYVIMRC<CR>

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:redraw<Bar>:echo<CR>

" Project search using Ag
" nnoremap <leader>f :Ag!
nnoremap <leader>f :Grepper -tool ag -open -switch<CR>

" Cursorline in active window only
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" Visually select the text that was last edited/pasted
nnoremap gV `[v`]

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Shortcuts for closing buffers
nmap <silent> <leader>d :BD<CR>
nmap <silent> <leader>D :close<CR>

" Open a new vertical split and switch over to it
nnoremap <leader>w <C-w>v<C-w>
nnoremap <leader>e :vnew<CR>
nmap <TAB> <C-W>w

" Resize splits when the window is resized
autocmd VimResized * wincmd =

" Remove trailing whitespace before save
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
nmap _= :call Preserve("normal gg=G")<CR>
autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

cnoreabbrev W w
cnoreabbrev Q q

colorscheme mikekreeki

set guifont=Monaco:h12

set guicursor+=a:blinkon0
set guicursor+=i:ver10

" au InsertLeave * hi Cursor guifg=white guibg=steelblue
" au InsertEnter * hi Cursor guibg=grey

" Shortcuts for navigating between quickfix results
nnoremap ) :cnext<CR>
nnoremap ú :cprevious<CR>

function! OpenNERDTree()
  "" Check if NERDTree is open
  if exists("t:NERDTreeBufName")
    let s:ntree = bufwinnr(t:NERDTreeBufName)
  else
    let s:ntree = -1
  endif

  if (s:ntree != -1)
    "" If NERDTree is open, close it.
    :NERDTreeClose
  else
    :NERDTreeFind
  endif
endfunction

" Toggle NERDTree
nnoremap <silent> q :call OpenNERDTree()<CR>

" Focus file in current buffer in NERDTree
nnoremap <silent> Q :NERDTreeFind<CR>

let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 40
let NERDTreeAutoDeleteBuffer = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_max_files = 0
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_reuse_window = 'netrw'

" When NERDTree CWD changes, CtrlP picks that up. Super cool.
let g:NERDTreeChDirMode       = 2
let g:ctrlp_working_path_mode = 0

let g:ctrlp_show_hidden = 1
let g:ctrlp_use_caching=0

let g:ag_highlight=1

let g:bufExplorerShowRelativePath=1
let g:bufExplorerSplitOutPathName=0

nnoremap <silent> <leader><TAB> :Scratch<CR>

let g:EasyMotion_smartcase = 1
let g:EasyMotion_move_highlight = 0

map <Leader>y <Plug>(easymotion-prefix)

nmap / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
nmap n <Plug>(easymotion-next)
nmap N <Plug>(easymotion-prev)

vmap <Enter> <Plug>(EasyAlign)

let g:extradite_width = 80

let g:gitgutter_sign_column_always = 1

nmap <S-Enter> :ZoomWin<CR>

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='powerlineish'
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline_section_y=''
let g:airline_section_z=''

let g:rooter_patterns = ['package.json', '.git/']

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.xml,*.jsx,*.react.js"

map <leader>x :call SyntaxAttr()<CR>

let ruby_operators = 1
let ruby_no_expensive = 1
let ruby_minlines = 100

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1

let g:vim_json_syntax_conceal = 0
let g:jsx_ext_required = 0

au BufRead,BufNewFile Rakefile,Capfile,Gemfile set ft=ruby syntax=ruby
au BufRead,BufNewFile .eslintrc set ft=json syntax=json

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_ruby_enabled_makers = ['mri', 'rubocop']

autocmd! BufWinEnter,BufWritePost * Neomake

let g:neomake_error_sign = {
  \ 'texthl': 'WarningMsg',
  \ }

let g:neomake_warning_sign = {
    \ 'text': '✖',
    \ 'texthl': 'Special',
    \ }

:command! G Gstatus

"Always open help files in a rightward vertical split
autocmd FileType help,gitcommit wincmd L

let g:UltiSnipsExpandTrigger="<c-k>"

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_completion_start_length = 0

" inoremap <silent><expr><Tab>
" 		\ pumvisible() ? "\<C-n>" :
" 		\ deoplete#mappings#manual_complete()

inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

function! s:my_cr_function()
  return pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
endfunction
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>

tnoremap <Esc> <C-\><C-n>

let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'terminal']

let g:neoterm_position = 'vertical'

autocmd TermOpen * set number
autocmd TermOpen * set wfw

function! OpenTerminal()
  :80vs
  :terminal
  " :lw
  " :copen
  " :bnext
endfunction
:command! TT call OpenTerminal()

let g:echodoc_enable_at_startup = 1

vnoremap ' <esc>:call QuickWrap("'")<cr>
vnoremap " <esc>:call QuickWrap('"')<cr>

function! QuickWrap(wrapper)
  let l:w = a:wrapper
  let l:inside_or_around = (&selection == 'exclusive') ? ('i') : ('a')
  normal `>
  execute "normal " . inside_or_around . escape(w, '\')
  normal `<
  execute "normal i" . escape(w, '\')
  normal `<
endfunction

let g:smartgf_key = 'z'

nnoremap S :SplitjoinJoin<cr>
nnoremap s :SplitjoinSplit<cr>

nmap T :TagbarToggle<CR>:echo<CR>

nmap <silent> <leader>R :TestNearest<CR>
nmap <silent> <leader>r :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" let test#strategy = "neoterm"
let test#base#no_colors = 0

" function! MyFoldText()
"   let nl = v:foldend - v:foldstart + 1
"   let comment = substitute(getline(v:foldstart),"^ *","",1)
"   let linetext = substitute(getline(v:foldstart+1),"^ *","",1)
"   let txt = '+ ' . linetext . ' : "' . comment . '" : length ' . nl
"   return txt
" endfunction

function! MyFoldText()
  let nl = v:foldend - v:foldstart + 1
  let comment = substitute(getline(v:foldstart),"^ *","",1)
  let txt = comment . ' (' . nl . ' lines)'
  return txt
endfunction

set foldmethod=manual
set foldnestmax=10
set foldenable
set foldlevel=1
set foldtext=MyFoldText()

" autocmd BufWrite * mkview
" autocmd BufRead * silent loadview

let g:indentLine_fileTypeExclude = ['notes']
autocmd FileType notes setlocal wrap
autocmd FileType notes setlocal colorcolumn=

com! FormatJSON %!python -m json.tool

au Filetype notes setlocal nonumber

let g:neomake_verbose=0

let g:smartgf_key = 'Z'

" let g:tern_show_argument_hints='on_hold'
" let g:tern_show_signature_in_pum = 1

" nnoremap <Left> :MBEbb<CR>
" nnoremap <Right> :MBEbf<CR>

nmap D <Plug>(devdocs-under-cursor)

if has('nvim')
  nnoremap <leader>t  :vsplit +terminal<cr>
  tnoremap <esc>      <c-\><c-n>
  tnoremap <a-h>      <c-\><c-n><c-w>h
  tnoremap <a-j>      <c-\><c-n><c-w>j
  tnoremap <a-k>      <c-\><c-n><c-w>k
  tnoremap <a-l>      <c-\><c-n><c-w>l
  autocmd BufEnter term://* startinsert
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
endif

autocmd BufEnter * :echo
autocmd BufWritePost * :echo

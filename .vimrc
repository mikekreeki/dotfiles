" GENERAL
  set nocompatible
  filetype off

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  Plugin 'gmarik/Vundle.vim'

  " Navigation plugins
  Plugin 'corntrace/bufexplorer'
  Plugin 'scrooloose/nerdtree'
  Plugin 'kien/ctrlp.vim'
  Plugin 'mattn/ctrlp-launcher'
  Plugin 'majutsushi/tagbar'
  Plugin 'gorkunov/smartgf.vim'

  " Code editing plugins
  Plugin 'Shougo/neocomplete.vim'
  Plugin 'Shougo/neosnippet.vim'
  Bundle 'Shougo/neosnippet-snippets'
  Plugin 'Yggdroot/indentLine'
  Plugin 'nathanaelkane/vim-indent-guides'
  Plugin 'kien/rainbow_parentheses.vim'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-endwise'
  Plugin 'edsono/vim-matchit'
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'junegunn/vim-easy-align'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'michaeljsmith/vim-indent-object'
  Plugin 'darvelo/vim-autoclose'
  Plugin 'AndrewRadev/splitjoin.vim'
  Plugin 'AndrewRadev/multichange.vim'
  Plugin 'vim-scripts/FormatComment.vim'
  Plugin 'inkarkat/argtextobj.vim'
  Plugin 'gorkunov/smartpairs.vim'
  Plugin 'kana/vim-textobj-user'
  Plugin 'nelstrom/vim-textobj-rubyblock'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'vim-scripts/xml.vim'
  Plugin 'maxbrunsfeld/vim-yankstack'
  Plugin 'marijnh/tern_for_vim'

  " Window/buffer management plugins"
  Plugin 'duff/vim-scratch'
  Plugin 'milkypostman/vim-togglelist'
  Plugin 'airblade/vim-rooter'
  Plugin 'mattdbridges/bufkill.vim'
  Plugin 'fmoralesc/vim-pad'

  " Code checkers
  Plugin 'scrooloose/syntastic'
  Plugin 'jaxbot/syntastic-react'
  Plugin 'ngmy/vim-rubocop'

  " Syntaxes
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'slim-template/vim-slim'
  Plugin 'othree/html5.vim'
  Plugin 'derekwyatt/vim-scala'
  Plugin 'pangloss/vim-javascript'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'mxw/vim-jsx'
  Plugin 'groenewege/vim-less'
  Plugin 'mikekreeki/vim-react-es6-snippets'
  Plugin 'depuracao/vim-rdoc'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'rhysd/conflict-marker.vim'
  Plugin 'wavded/vim-stylus'
  Plugin 'othree/yajs.vim'
  Plugin 'moll/vim-node'
  Plugin 'millermedeiros/vim-esformatter'
  Plugin 'mattn/emmet-vim'
  Plugin 'elzr/vim-json'

  " Versioning plugins
  Plugin 'tpope/vim-fugitive'
  Plugin 'idanarye/vim-merginal'
  Plugin 'int3/vim-extradite'
  Plugin 'rhysd/committia.vim'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'gregsexton/gitv'
  Plugin 'mattn/gist-vim'

  " Search plugins
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'rking/ag.vim'
  Plugin 'skwp/greplace.vim'
  Plugin 'Wolfy87/vim-enmasse'
  Plugin 'pelodelfuego/vim-swoop'
  Plugin 'gabesoft/vim-ags'
  Plugin 'dyng/ctrlsf.vim'
  Plugin 'wincent/ferret'
  Plugin 'osyo-manga/vim-over'

  " Interface plugins
  Plugin 'bling/vim-airline'
  Plugin 'ntpeters/vim-better-whitespace'
  Plugin 'regedarek/ZoomWin'
  Plugin 'tpope/vim-rsi'

  " Ruby/Rails environment plugins
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-rvm'
  Plugin 'tpope/vim-bundler'
  Plugin 'tpope/vim-rake'
  Plugin 'rking/vim-ruby-refactoring'
  Plugin 'janko-m/vim-test'
  Plugin 'KurtPreston/vim-autoformat-rails'
  Plugin 'osyo-manga/vim-monster'

  " Utilities/support plugins
  Plugin 'Shougo/vimproc'
  Plugin 'Shougo/vimshell.vim'
  Plugin 'mattn/webapi-vim'

  " Colors
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'tomasr/molokai'
  Plugin 'yosiat/oceanic-next-vim'
  Plugin '29decibel/codeschool-vim-theme'
  Plugin 'nanotech/jellybeans.vim'
  Plugin 'inkarkat/SyntaxAttr.vim'

  call vundle#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL

  filetype plugin indent on
  syntax on

  set shell=/bin/sh

  " if v:version >= 704 " Vim 7.4 and up
  "   " Revert to the old regex engine, which is faster for Ruby syntax highlighting
  "   set re=1
  " endif

  set encoding=utf-8
  set fileencoding=utf-8

  let mapleader = ","

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

  set ttyfast
  set lazyredraw

  set scrolloff=1

  " Syntax coloring lines that are too long just slows down the world
  set synmaxcol=300

  " Use only 1 space after "." when joining lines instead of 2
  set nojoinspaces

  " Don't reset cursor to start of line when moving around
  set nostartofline

  " show completion on the mode-line
  set wildmenu

  " Auto-reload buffers when files are changed on disk
  set autoread

  if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
  endif

  au BufWritePost .vimrc so $MYVIMRC
  nnoremap <leader>V :e $MYVIMRC<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INDENTATION

  set autoindent
  set expandtab
  set shiftwidth=2
  set smartindent
  set smarttab
  set softtabstop=2

  " break properly, don't split words
  set linebreak

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCH

  set ignorecase
  set smartcase
  set gdefault
  set incsearch
  set showmatch
  set hlsearch
  set scs

  nnoremap / /\v
  vnoremap / /\v

  " Press Space to turn off highlighting and clear any message already displayed.
  nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

  " Project search using Ag
  nnoremap <leader>f :Ag!

  " Project search using CtrlSF
  nnoremap <leader>F :CtrlSF

  let g:ctrlsf_auto_close = 0
  let g:ctrlsf_indent = 0
  let g:ctrlsf_mapping = {
    \ "next": "n",
    \ "prev": "N",
    \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MOVEMENT

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

  " nnoremap <TAB> g;
  nnoremap ů g;

  " Cursorline in active window only
  augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
  augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EDITING

  " Backspace over everything
  set backspace=indent,eol,start

  " Bubble single lines
  nmap <Up> [e
  nmap <Down> ]e

  " Bubble multiple lines
  vmap <Up> [egv
  vmap <Down> ]egv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COPY/PASTE

  set clipboard=unnamed,unnamedplus

  " Toggle paste mode
  set pastetoggle=<F3>

  " reselect the text that was just pasted
  nnoremap <leader>v V`]

  " Duplicate selection in visual mode
  vmap D y'>p

  " assume the /g flag on :s substitutions to replace all matches in a line
  set gdefault

  " R replaces cursor to end of line with what's copied
  nnoremap <silent> R v$hp

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SELECTION

  " Visually select the text that was last edited/pasted
  nmap gV `[v`]

  " reselect visual block after indent/outdent
  vnoremap < <gv
  vnoremap > >gv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AUTOCOMPLETION

  set wildmenu
  set wildmode=longest:full,full

  set completefunc=syntaxcomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ABBREVIATIONS

  " Yep, I know :)
  iabbrev anno ##############################<Enter><Enter>#############################<C-O>k

  iabbrev edn end
  iabbrev GCI CGI

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FORMATTING

  " set colorcolumn=80
  execute "set colorcolumn=" . join(range(81,335), ',')

  " When at 3 spaces and I hit >>, go to 4, not 5.
  set shiftround

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HISTORY

  " set undolevels=1000
  " set nobackup
  " set nowritebackup

  set history=250

  set updatetime=750
  set undofile                    " Save undo's after file closes
  set undodir=~/.vim/undo         " where to save undo histories
  set undolevels=1000             " How many undos
  set undoreload=10000            " number of lines to save for undo

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MOVING BETWEEN FILES

  " Switch between the last two files
  nnoremap <leader><leader> <c-^>

  nmap <leader>s :only<CR>:AV<CR>

  let g:netrw_liststyle = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MODES

  imap jj <ESC>
  imap ii <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BUFFERS

  map <right> <ESC>:bn<CR>
  map <left> <ESC>:bp<CR>

  nmap <leader>d :BD<CR>
  nmap <leader>D :close<CR>

  nnoremap <leader><leader> <c-^>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPLITS

  set winwidth=80

  " Open vertical split on right
  set splitright

  " Open a new vertical split and switch over to it
  nnoremap <leader>w <C-w>v<C-w>
  nnoremap <leader>e :vnew<CR>
  nmap <TAB> <C-W>w

  " Resize splits when the window is resized
  autocmd VimResized * wincmd =

  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DIFF

  " Simple way to turn off Gdiff splitscreen
  " works only when diff buffer is focused
  if !exists(":Gdiffoff")
    command Gdiffoff diffoff | q | Gedit
  endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UTILITIES

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

  " Remove trailing whitespace before save
  autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS

  " Don't wait so long for the next keypress (particularly in ambigious Leader
  " situations. (via @r00k dotfiles)
  set timeoutlen=500

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALIASES

  cnoreabbrev W w
  cnoreabbrev Q q

  :command! Stop !spring stop

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI

  " Set the vertical split character to a space
  set fillchars+=vert:\ " there is a single space after '\ '

  " Status and command line
  set showcmd

  set laststatus=2

  " Hide tollbars, scrollbars and other bars
  set shortmess+=I

  set guioptions-=r
  set guioptions-=L

  " Use console dialogs
  set guioptions+=c

  " Start in fullscreen by default
  if has("gui_running")
    set fu
  end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" THEME AND COLORS

  " Theme
  colorscheme railscasts
  " colorscheme jellybeans

  " Font
  set guifont=Monaco:h12

  set guicursor+=a:blinkon0
  set guicursor+=i:ver10

  au InsertLeave * hi Cursor guifg=white guibg=steelblue
  au InsertEnter * hi Cursor guibg=grey

  highlight! link DiffAdd GitGutterAdd
  highlight! link DiffDelete GitGutterDelete
  highlight! link DiffChange GitGutterChange

  " Make those debugger statements painfully obvious
  au BufEnter *.rb syn match error contained "\<binding.pry\>"
  au BufEnter *.rb syn match error contained "\<debugger\>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONCEAL

  set conceallevel=2
  set concealcursor=nvi

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MARKS

  nmap ga `a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" QUICKFIX

  nnoremap ) :cnext<CR>
  nnoremap ú :cprevious<CR>

  function! GrepQuickFix(pat)
    let all = getqflist()
    for d in all
      if bufname(d['bufnr']) !~ a:pat && d['text'] !~ a:pat
          call remove(all, index(all,d))
      endif
    endfor
    call setqflist(all)
  endfunction
  command! -nargs=* GrepQF call GrepQuickFix(<q-args>)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree

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
  nnoremap q :call OpenNERDTree()<CR>

  " Focus file in current buffer in NERDTree
  nnoremap Q :NERDTreeFind<CR>

  let NERDTreeMinimalUI = 1
  let g:NERDTreeWinSize = 40
  let NERDTreeAutoDeleteBuffer = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP

  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'

  let g:ctrlp_max_files = 0
  let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

  if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  endif

  let g:ctrlp_match_window = 'bottom,order:ttb'

  " CtrlP + NERDTree integration
  " When NERDTree CWD changes, CtrlP picks that up. Super cool.
  let g:NERDTreeChDirMode       = 2
  let g:ctrlp_working_path_mode = 'rw'

  let g:ctrlp_show_hidden = 1
  let g:ctrlp_use_caching=0

  " Note that other CtrlP options related to which files get included in the
  " index (g:ctrlp_show_hidden, wildignore, g:ctrlp_custom_ignore,
  " g:ctrlp_max_files, g:ctrlp_max_depth, g:ctrlp_follow_symlinks) do not
  " apply when using g:ctrlp_user_command.
  " let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
  "       \ --ignore .git
  "       \ --ignore .svn
  "       \ --ignore .hg
  "       \ --ignore .DS_Store
  "       \ --ignore "**/*.pyc"
  "       \ -g ""'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlPLauncher

  map <c-e> :<c-u>CtrlPLauncher<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ag.vim

  let g:ag_highlight=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ags

  let g:ags_agexe = 'ag --nocolor'

  autocmd BufWinEnter {*.agsv} syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer Explorer

  let g:bufExplorerShowRelativePath=1
  let g:bufExplorerSplitOutPathName=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Scratch

  nnoremap <silent> <leader><TAB> :Scratch<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-test

  nmap <silent> <leader>R :TestNearest<CR>
  nmap <silent> <leader>r :TestFile<CR>

  let g:test#ruby#rspec#options = '--no-color'

  " Not vim-test related
  map <leader>s :cg quickfix.out \| :call ToggleQuickfixList()<CR>:echo<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rainbow Parenstheses

  nnoremap <leader>p :RainbowParenthesesToggle<CR>

  " au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic

  " 4.13. Q. The error window is closed automatically when I :quit the current
  " buffer but not when I :bdelete it?
  nnoremap <silent> <C-d> :lclose<CR>:bdelete<CR>
  cabbrev <silent> bd lclose\|bdelete

  let g:syntastic_enable_signs = 1
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 0
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  let g:syntastic_ruby_checkers = ['mri']
  let g:syntastic_javascript_checkers = ['eslint']

  au BufRead,BufNewFile *.json set filetype=json
  let g:syntastic_json_checkers=['jsonlint']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neocomplete

  let g:acp_enableAtStartup = 0

  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#force_overwrite_completefunc = 1
  let g:neocomplete#enable_smart_case = 1

  let g:neocomplete#sources#tags#cache_limit_size = 5000000
  let g:neosnippet#enable_snipmate_compatibility = 1
  let g:neosnippet#snippets_directory='~/.vim/bundle/vim-react-es6-snippets/snippets'

  imap <C-k> <Plug>(neosnippet_expand_or_jump)
  smap <C-k> <Plug>(neosnippet_expand_or_jump)
  xmap <C-k> <Plug>(neosnippet_expand_target)

  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
  endfunction

  let g:neocomplete#enable_refresh_always = 1 " Disable if slow
  let g:neocomplete#enable_insert_char_pre = 1

  inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

  inoremap <expr><C-h>  neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><BS>   neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><C-y>  neocomplete#close_popup()
  inoremap <expr><C-e>  neocomplete#cancel_popup()

  let g:neocomplete#sources#omni#input_patterns = {
  \   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
  \}
  " let g:neocomplete#enable_auto_select = 1

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EasyMotion

  let g:EasyMotion_smartcase = 1
  let g:EasyMotion_move_highlight = 0

  map <Leader>y <Plug>(easymotion-prefix)

  nmap / <Plug>(easymotion-sn)
  omap / <Plug>(easymotion-tn)
  nmap n <Plug>(easymotion-next)
  nmap N <Plug>(easymotion-prev)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EasyAlign

  vmap <Enter> <Plug>(EasyAlign)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive.vim

  :command! G Gstatus

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extradite

  let g:extradite_width = 80

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-gitgutter

  let g:gitgutter_sign_column_always = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Yankstack

  " nmap <C-ú> <Plug>yankstack_substitute_older_paste
  " nmap <C-)> <Plug>yankstack_substitute_newer_paste

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FormatComment.vim

  map gqc :call FormatComment()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SplitJoin.vim

  nmap S :SplitjoinJoin<cr>
  nmap s :SplitjoinSplit<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-marginal

  nnoremap <leader>g :MerginalToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smartgf

  let g:smartgf_key = 'z'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-multiple-cursors

  " Called once right before you start selecting multiple cursors
  function! Multiple_cursors_before()
    if exists(':NeoCompleteLock')==2
      exe 'NeoCompleteLock'
    endif
  endfunction

  " Called once only when the multiple selection is canceled (default <Esc>)
  function! Multiple_cursors_after()
    if exists(':NeoCompleteUnlock')==2
      exe 'NeoCompleteUnlock'
    endif
  endfunction

  highlight link multiple_cursors_visual Visual
  highlight link multiple_cursors_cursor Visual

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ZoomWin

  nmap <S-Enter> :ZoomWin<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" greplace.vim

  set grepprg=ag

  let g:grep_cmd_opts = '--line-numbers --noheading'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pad

  let g:pad#dir = "~/notes/"
  let g:pad#window_height = 16
  " let g:pad#position["list"] = 'right'
  " let g:pad#position["pads"] = 'right'
  let g:pad#title_first_line = 1
  let g:pad#open_in_split = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline

  let g:airline_left_sep=''
  let g:airline_right_sep=''
  let g:airline_theme='powerlineish'
  let g:airline#extensions#hunks#non_zero_only = 1
  let g:airline_section_y=''
  let g:airline_section_z=''

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar

  let g:tagbar_type_ruby = {
      \ 'kinds' : [
          \ 'm:modules',
          \ 'c:classes',
          \ 'd:describes',
          \ 'C:contexts',
          \ 'f:methods',
          \ 'F:singleton methods'
      \ ]
  \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGES

  map <leader>x	:call SyntaxAttr()<CR>

  let g:used_javascript_libs = 'jquery,react,requirejs'

  " force spell when doing a git commit
  autocmd FileType gitcommit setlocal spell
  autocmd FileType gitcommit setlocal spelllang=en

  " Vim-markdown
  let g:vim_markdown_folding_disabled=1

  " Ruby
  let ruby_operators = 1
  let ruby_no_expensive = 1
  let ruby_minlines = 100

  let g:rubycomplete_buffer_loading = 1
  let g:rubycomplete_classes_in_global = 1

  autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete

  " Convert hashes to 1.9 syntax
  nmap <leader>h :%s/:\([^=,'"]*\) =>/\1:/gc<CR>

  let g:vim_json_syntax_conceal = 0

  let g:jsx_ext_required = 0

  set omnifunc=syntaxcomplete#Complete
  let g:tern_show_argument_hints='no'
  let g:tern_map_keys=0

  " Make sure all markdown files have the correct filetype
  au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown

  au BufRead,BufNewFile Rakefile,Capfile,Gemfile set ft=ruby syntax=ruby

  "" Rails.vim

  " displays <% %> correctly
  autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>"

  let g:rails_projections = {
        \  "app/serializers/*_serializer.rb": {
        \    "command": "serializer",
        \    "test": "spec/serializers/%s_spec.rb",
        \    "related": "app/models/%s.rb",
        \     "affinity": "model",
        \    "template": "class %SSerializer < ActiveModel::Serializer\nend"
        \  },
        \  "app/decorators/*_decorator.rb": {
        \    "command": "decorator",
        \    "related": "app/models/%s.rb",
        \    "affinity": "model",
        \    "template": "class %SDecorator < Draper::Decorator\nend",
        \    "test": "spec/decorators/%s_decorator_spec.rb"
        \  },
        \  "app/services/*_service.rb": {
        \    "command": "service",
        \    "template": "class %SService\nend",
        \    "test": "spec/services/%s_service_spec.rb"
        \  },
        \  "app/listeners/*_listener.rb": {
        \    "command": "listener",
        \    "template": "class %SListener\nend",
        \    "test": "spec/listeners/%s_listener_spec.rb"
        \  },
        \  "app/jobs/*_job.rb": {
        \    "command": "job",
        \    "related": "app/models/%s.rb",
        \    "affinity": "model",
        \    "template": "class %SJob\nend",
        \    "test": "spec/jobs/%s_job_spec.rb"
        \   },
        \   "config/routes.rb": {"command": "routes"},
        \   "spec/factories/*.rb": {
        \     "command": "factory",
        \     "affinity": "collection",
        \     "alternate": "app/models/%i.rb",
        \     "related": "db/schema.rb#%s",
        \     "test": "spec/models/%i_test.rb",
        \     "template": "FactoryGirl.define do\n  factory :%i do\n  end\nend",
        \     "keywords": "factory sequence"
        \   },
        \   "spec/features/*_spec.rb": { "command": "feature" },
        \   "spec/requests/*_spec.rb": { "command": "request" },
        \   "app/workers/*_worker.rb": { "command": "worker" },
        \   "app/policies/*_policy.rb": { "command": "policy" },
        \   "app/paths/*_path.rb": { "command": "path" }
        \ }

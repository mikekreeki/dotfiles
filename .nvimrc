call plug#begin('~/.nvim/plugged')

" Buffer/File Navigation
Plug 'corntrace/bufexplorer'
Plug 'gorkunov/smartgf.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-projectionist'

" Interface
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'inkarkat/SyntaxAttr.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'regedarek/ZoomWin'
Plug 'tpope/vim-rsi'
Plug 'gorodinskiy/vim-coloresque'

" Searching
Plug 'Lokaltog/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-grepper'
Plug 'osyo-manga/vim-over'
Plug 'dkprice/vim-easygrep'

" Autocomplete
Plug 'Shougo/context_filetype.vim'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neopairs.vim'

" Code Editing
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'edsono/vim-matchit'
Plug 'gorkunov/smartpairs.vim'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

" Project Management
Plug 'airblade/vim-rooter'

" Git Integration
Plug 'airblade/vim-gitgutter'
Plug 'int3/vim-extradite'
Plug 'rhysd/committia.vim'
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'

" Building, Linters, Test Runners
Plug 'benekastah/neomake'
Plug 'jaawerth/neomake-local-eslint-first'
Plug 'janko-m/vim-test'

" Ruby Integration
Plug 'AmaiSaeta/vim-ruby-sinatra'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'keith/rspec.vim'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rvm'

" JavaScript Integration
Plug 'elzr/vim-json'
Plug 'gavocanov/vim-js-indent'
Plug 'mlaursen/vim-react-snippets'
Plug 'mustache/vim-mustache-handlebars'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'othree/jspc.vim'
Plug 'jparise/vim-graphql'
Plug 'heavenshell/vim-jsdoc'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'ruanyl/vim-fixmyjs'

" Other Languages
Plug 'sheerun/vim-polyglot'

" Taking Notes
Plug 'duff/vim-scratch'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

" Terminal Integration
Plug 'kassio/neoterm'

" Colorschemes
Plug 'mikekreeki/mikekreeki-colors.vim'

call plug#end()

filetype plugin indent on
syntax on

set shell=/bin/zsh

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
set exrc
set secure
set termguicolors

" Ignore things
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

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

" Jump to previous cursor position
nnoremap § ``

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>wincmd =<Bar>:redraw!<Bar>:echo<CR>

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

" Make horizontal scrolling less horrible.
set sidescroll=1
set sidescrolloff=10

cnoreabbrev W w
cnoreabbrev Q q

colorscheme mikekreeki

set guicursor+=a:blinkon0
set guicursor+=i:ver10

"Always open help files in a rightward vertical split
autocmd FileType help,gitcommit wincmd L

autocmd BufEnter * :echo
autocmd BufWritePost * :echo

nmap <silent> <C-l> ?function<cr>:noh<cr><Plug>(jsdoc)

nnoremap <silent> s vip:sort ui<CR>
vnoremap <silent> s :sort ui<CR>

hi NonText guifg=black ctermfg=black

" Faster split resizing
if bufwinnr(1)
  map + <C-W>>
  map - <C-W><
endif

function! PreserveCursor(command)
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

augroup easymotion_config
  autocmd!

  let g:EasyMotion_smartcase = 1
  let g:EasyMotion_move_highlight = 0

  map <Leader>y <Plug>(easymotion-prefix)

  nmap / <Plug>(easymotion-sn)
  omap / <Plug>(easymotion-tn)
  nmap n <Plug>(easymotion-next)
  nmap N <Plug>(easymotion-prev)
augroup END

augroup neomake_config
  autocmd!

  if has('nvim')
    autocmd! BufEnter,BufWritePost * Neomake

    let g:neomake_javascript_enabled_makers = ['eslint']
    let g:neomake_jsx_enabled_makers = ['eslint']
    let g:neomake_ruby_enabled_makers = []
    let g:neomake_open_list = 0
    let g:neomake_verbose = 0

    let g:neomake_error_sign = {
      \ 'texthl': 'WarningMsg',
      \ }

    let g:neomake_warning_sign = {
      \ 'text': '✖',
      \ 'texthl': 'Special',
      \ }

    function ESLintFix()
      execute('Fixmyjs')
      w!
      edit! %
    endfunction

    function RunESLintFix()
      echo 'Fixing..'
      execute('silent! call ESLintFix()')
      echo
    endfunction

    noremap = :call RunESLintFix()<CR>
    let g:fixmyjs_executable = './node_modules/.bin/eslint'
  endif
augroup END

augroup easytags_config
  let g:easytags_cmd = '/Users/mikekreeki/.nvm/versions/node/v5.5.0/bin/jsctags'
  let g:easytags_file = '~/.vimtags'
  let g:easytags_updatetime_warn = 0
  let g:easytags_events = ['BufReadPost', 'BufWritePost']
  let g:tagbar_compact = 1
  let g:tagbar_iconchars = ['▸', '▾']

  let g:easytags_languages = {
        \   'javascript': {
        \       'cmd': g:easytags_cmd,
        \       'args': [],
        \       'fileoutput_opt': '-f',
        \       'stdout_opt': '-f-',
        \       'recurse_flag': '-R'
        \   }
    \}
augroup END

augroup nerdtree_config
  autocmd!

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
  let g:NERDTreeWinSize = 60
  let NERDTreeAutoDeleteBuffer = 1

  " When NERDTree CWD changes, CtrlP picks that up. Super cool.
  let g:NERDTreeChDirMode = 2

  " Show hidden file by default, hide just selected
  let NERDTreeShowHidden = 1
  let NERDTreeShowHiddenFirst = 1
  let NERDTreeIgnore = [
        \ '\.py[cd]$',
        \ '\~$',
        \ '\.swo$',
        \ '\.swp$',
        \ '\.git',
        \ '\.hg',
        \ '\.svn',
        \ '\.bzr',
        \ '\.map$',
        \ '.DS_Store',
        \ '.tern-port',
        \ '.agignore',
        \ 'iTermocil.yml'
        \]

  " Close vim when NERDTree is the last open buffer
  function! s:CloseIfOnlyNerdTreeLeft()
    if exists("t:NERDTreeBufName")
      if bufwinnr(t:NERDTreeBufName) != -1
        if winnr("$") == 1
          qa
        endif
      endif
    endif
  endfunction
  autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

  " Hide NERDTree on small screen
  " function! ToggleNERDTreeOnSmallScreen()
  "     let breakpoint = 200

  "     if &columns == 0
  "       return
  "     endif

  "     if &columns > breakpoint
  "       if exists("t:NERDTreeBufName")
  "         if bufwinnr(t:NERDTreeBufName) == -1
  "           silent! NERDTree
  "           wincmd p
  "         endif
  "       endif
  "     endif

  "     if &columns < breakpoint
  "       if exists("t:NERDTreeBufName")
  "         if bufwinnr(t:NERDTreeBufName) != -1
  "           silent! NERDTreeClose
  "           wincmd p
  "         endif
  "       endif
  "     endif

  "     redraw!
  " endfunction
  " autocmd VimEnter * call ToggleNERDTreeOnSmallScreen()
  " autocmd VimResized * call ToggleNERDTreeOnSmallScreen()

  " If no file or directory arguments are specified, open NERDtree.
  " If a directory is specified as the only argument, open it in NERDTree.
  " autocmd StdinReadPre * let s:std_in=1
  " function! NERDTreeAutoOpen()
  "   if argc() == 0 && !exists('s:std_in')
  "     NERDTree
  "   elseif argc() == 1 && isdirectory(argv(0))
  "     bd
  "     exec 'cd' fnameescape(argv(0))
  "     NERDTree
  "   end
  " endfunction
  " autocmd VimEnter * call NERDTreeAutoOpen()

  let g:NERDTreeExtensionHighlightColor = {}
  let g:NERDTreeExtensionHighlightColor['css'] = 'AAAAAA'
  let g:NERDTreeExtensionHighlightColor['less'] = 'AAAAAA'

  let g:NERDTreeDisableExactMatchHighlight = 1
  let g:NERDTreeDisablePatternMatchHighlight = 1
  let g:NERDTreeExactMatchHighlightFullName = 1
  let g:NERDTreeFileExtensionHighlightFullName = 1
  let g:NERDTreePatternMatchHighlightFullName = 1
  let g:NERDTreeSyntaxDisableDefaultExtensions = 1
  let g:NERDTreeSyntaxEnabledExtensions = ['css', 'less']
augroup END

augroup ctrlp_config
  autocmd!

  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'

  let g:ctrlp_max_files = 0
  let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

  if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  endif

  let g:ctrlp_match_window = 'bottom,order:ttb'
  let g:ctrlp_reuse_window = 'netrw'

  let g:ctrlp_working_path_mode = 0

  let g:ctrlp_show_hidden = 1
  let g:ctrlp_use_caching=0
augroup END

augroup airline_config
  autocmd!

  let g:airline_left_sep=''
  let g:airline_right_sep=''
  let g:airline_theme='powerlineish'
  let g:airline#extensions#hunks#non_zero_only = 1
  let g:airline_section_y=''
  let g:airline_section_z=''
augroup END

augroup neosnippet_config
  autocmd!

  " Turn off conceal
  let g:neosnippet#enable_conceal_markers = 0

  autocmd InsertLeave * NeoSnippetClearMarkers

  imap <C-K> <Plug>(neosnippet_expand_or_jump)
  smap <C-K> <Plug>(neosnippet_expand_or_jump)
  xmap <C-K> <Plug>(neosnippet_expand_target)

  smap <expr><Space> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<Space>"
augroup END

augroup neovim_config
  autocmd!

  if has('nvim')
    " Fix autoread in neovim
    autocmd BufEnter,FocusGained * checktime

    nnoremap <leader>t :vsplit +terminal<cr>
    tnoremap <esc> <c-\><c-n>
    tnoremap <a-h> <c-\><c-n><c-w>h
    tnoremap <a-j> <c-\><c-n><c-w>j
    tnoremap <a-k> <c-\><c-n><c-w>k
    tnoremap <a-l> <c-\><c-n><c-w>l
    tnoremap <Esc> <C-\><C-n>
    autocmd BufEnter term://* startinsert

    let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
  endif
augroup END

augroup quickfix_config
  autocmd!

  " Disable line numbers and colorcolumn in quickfix
  autocmd FileType qf setlocal colorcolumn=0
  autocmd FileType qf setlocal nonumber
  autocmd Filetype qf setlocal nolist
  autocmd Filetype qf setlocal nowrap

  " Shortcuts for navigating between quickfix results
  nnoremap ) :cnext<CR>
  nnoremap ú :cprevious<CR>
augroup END

augroup cursorline_config
  autocmd!

  " Cursorline in active window only
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

augroup indentLine_config
  autocmd!

  let g:indentLine_fileTypeExclude = ['help', 'notes', 'text']
augroup END

augroup notes_config
  autocmd!

  autocmd FileType notes setlocal wrap
  autocmd FileType notes setlocal colorcolumn=
  autocmd Filetype notes setlocal nonumber

  let g:notes_directories = ['~/Dropbox/Notes']
augroup END

augroup test_config
  autocmd!

  nmap <silent> <leader>R :TestNearest<CR>
  nmap <silent> <leader>r :TestFile<CR>
  nmap <silent> <leader>a :TestSuite<CR>
  nmap <silent> <leader>l :TestLast<CR>
  nmap <silent> <leader>g :TestVisit<CR>

  let test#base#no_colors = 0
augroup END

augroup trailing_whitespace_config
  autocmd!

  " Remove trailing whitespace before save
  autocmd BufWritePre * :call PreserveCursor("%s/\\s\\+$//e")
augroup END

augroup deoplete_config
  autocmd!

  if has('nvim')
    let g:deoplete#enable_at_startup = 1
    let g:deoplete#enable_smart_case = 1
    let g:deoplete#auto_completion_start_length = 0
    let g:deoplete#file#enable_buffer_path = 1

    inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
    inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

    function! s:my_cr_function()
      return pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
    endfunction
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  endif
augroup END

augroup splitjoin_config
  autocmd!

  " Disable temporarily as I don't use Ruby that much anymore
  " nnoremap S :SplitjoinJoin<cr>
  " nnoremap s :SplitjoinSplit<cr>
augroup END

augroup folding_config
  autocmd!

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

  " inoremap <CR> <C-O>za
  " nnoremap <CR> za
  " onoremap <CR> <C-C>za
  " vnoremap <CR> zf
augroup END

augroup grepper_config
  autocmd!

  " Project search using Ag
  nnoremap <leader>f :Grepper -tool ag -open -switch -grepprg ag --vimgrep --literal<CR>
augroup END

augroup bufexplorer_config
  autocmd!

  let g:bufExplorerShowRelativePath=1
  let g:bufExplorerSplitOutPathName=0
augroup END

augroup easyalign_config
  autocmd!

  vmap <Enter> <Plug>(EasyAlign)
augroup END

augroup ruby_config
  autocmd!

  let ruby_operators = 1
  let ruby_no_expensive = 1
  let ruby_minlines = 100
  let g:rubycomplete_buffer_loading = 1
  let g:rubycomplete_classes_in_global = 1

  au BufRead,BufNewFile Rakefile,Capfile,Gemfile set ft=ruby syntax=ruby
augroup END

augroup javascript_config
  autocmd!

  let g:vim_json_syntax_conceal = 0
  let g:jsx_ext_required = 0

  au BufRead,BufNewFile .eslintrc,.babelrc set ft=json syntax=json
augroup END

augroup neoterm_config
  autocmd!

  if has('nvim')
    let g:neoterm_position = 'vertical'

    autocmd TermOpen * set nonumber
    autocmd TermOpen * set wfw

    function! OpenTerminal()
      :80vs
      :terminal
      " :lw
      " :copen
      " :bnext
    endfunction
    :command! TT call OpenTerminal()
  endif
augroup END

augroup closetag_config
  autocmd!

  let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.xml,*.jsx,*.react.js,*.js"
augroup END

augroup extradite_config
  autocmd!

  let g:extradite_width = 80
augroup END

augroup rooter_config
  autocmd!

  let g:rooter_patterns = ['package.json', '.git/']
augroup END

augroup smartgf_config
  autocmd!

  " let g:smartgf_key = 'z'
augroup END

augroup autopairs_config
  autocmd!

  let g:AutoPairsMultilineClose = 0
augroup END

augroup indent_guides_config
  autocmd!

  let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'terminal']
augroup END

augroup echodoc_config
  autocmd!

  let g:echodoc_enable_at_startup = 1
augroup END

augroup tagbar_config
  autocmd!

  nmap T :TagbarToggle<CR>:echo<CR>
augroup END

augroup scratch_config
  autocmd!

  nnoremap <silent> <leader><TAB> :Scratch<CR>
augroup END

augroup gitgutter_config
  autocmd!

  let g:gitgutter_sign_column_always = 1
augroup END

augroup zoomwin_config
  autocmd!

  nnoremap <S-CR> :ZoomWin<CR>
augroup END

augroup syntax_attr_config
  autocmd!

  map <leader>x :call SyntaxAttr()<CR>
augroup END

augroup tern_for_vim_config
  autocmd!


  let g:tern#command = ["tern"]
  let g:tern#arguments = ["--persistent"]

  nmap <silent> D :TernDef<CR>
  nmap R :TernRename<CR>
augroup END

augroup easygrep_config
  autocmd!

  let g:EasyGrepJumpToMatch = 0
  let g:EasyGrepIgnoreCase = 0
  nmap <silent> F <plug>EgMapGrepCurrentWord_V
augroup END

augroup polyglot_config
  autocmd!

  let g:polyglot_disabled = ['javascript', 'jsx', 'ruby']
augroup END

augroup reload_vimrc_config
  autocmd!

  " Shorcut to edit .vimrc
  nnoremap <leader>V :e $MYVIMRC<CR>
  " Reload .vimrc on save
  " autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

augroup quickwrap_config
  autocmd!

  vnoremap ( <esc>`>a)<esc>`<i(<esc>
  vnoremap ) <esc>`>a)<esc>`<i(<esc>
  vnoremap [ <esc>`>a]<esc>`<i[<esc>
  vnoremap ] <esc>`>a]<esc>`<i[<esc>
  vnoremap { <esc>`>a}<esc>`<i{<esc>
  vnoremap } <esc>`>a}<esc>`<i{<esc>
  vnoremap " <esc>`>a"<esc>`<i"<esc>
  vnoremap ' <esc>`>a'<esc>`<i'<esc>
augroup END

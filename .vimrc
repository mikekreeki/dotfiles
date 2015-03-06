" GENERAL

  set nocompatible
  filetype off

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  Plugin 'gmarik/Vundle.vim'

  Plugin 'corntrace/bufexplorer'
  Plugin 'kien/ctrlp.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/syntastic'
  Plugin 'Shougo/neocomplete.vim'
  Plugin 'Shougo/neosnippet.vim'
  Plugin 'Yggdroot/indentLine'
  Plugin 'kien/rainbow_parentheses.vim'
  Plugin 'Lokaltog/vim-powerline'
  Plugin 'tpope/vim-commentary'
  Plugin 'junegunn/vim-easy-align'
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'tpope/vim-endwise'
  Plugin 'edsono/vim-matchit'
  Plugin 'tpope/vim-repeat'
  Plugin 'duff/vim-scratch'
  Plugin 'tpope/vim-surround'
  Plugin 'majutsushi/tagbar'
  Plugin 'milkypostman/vim-togglelist'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'michaeljsmith/vim-indent-object'
  Plugin 'darvelo/vim-autoclose'
  Plugin 'AndrewRadev/splitjoin.vim'
  Plugin 'airblade/vim-rooter'
  Plugin 'ntpeters/vim-better-whitespace'
  Plugin 'AndrewRadev/multichange.vim'
  Plugin 'rhysd/conflict-marker.vim'
  " Plugin 'rhysd/clever-f.vim'
  Plugin 'idanarye/vim-merginal'

  Plugin 'rking/ag.vim'
  Plugin 'tpope/vim-fugitive'
  Plugin 'int3/vim-extradite'
  Plugin 'tpope/vim-rvm'
  " Plugin 'tpope/vim-bundler'

  Plugin 'tpope/vim-rails'
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'rking/vim-ruby-refactoring'
  Plugin 'slim-template/vim-slim'
  Plugin 'othree/html5.vim'
  Plugin 'derekwyatt/vim-scala'
  Plugin 'pangloss/vim-javascript'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'othree/javascript-libraries-syntax.vim'
  Plugin 'vim-scripts/FormatComment.vim'
  Plugin 'inkarkat/argtextobj.vim'
  Plugin 'rhysd/committia.vim'
  Plugin 'mxw/vim-jsx'
  Plugin 'groenewege/vim-less'
  Plugin 'justinj/vim-react-snippets'
  Plugin 'depuracao/vim-rdoc'

  Plugin 'airblade/vim-gitgutter'
  Plugin 'janko-m/vim-test'
  Plugin 'gorkunov/smartpairs.vim'
  Plugin 'Wolfy87/vim-enmasse'
  Plugin 'gorkunov/smartgf.vim'
  Plugin 'gregsexton/gitv'
  Plugin 'mattdbridges/bufkill.vim'
  Plugin 'ktvoelker/sbt-vim'
  " Plugin 'mhinz/vim-startify'
  Plugin 'mattn/gist-vim'
  Plugin 'mattn/webapi-vim'
  Plugin 'junegunn/vim-github-dashboard'
  Plugin 'EinfachToll/DidYouMean'
  Plugin 'Shougo/vimproc'
  Plugin 'Shougo/vimshell.vim'
  Plugin 'kana/vim-textobj-user'
  Plugin 'nelstrom/vim-textobj-rubyblock'
  Plugin 'ngmy/vim-rubocop'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'KurtPreston/vim-autoformat-rails'
  Plugin 'pelodelfuego/vim-swoop'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'regedarek/ZoomWin'
  Plugin 'Shougo/unite.vim'
  Plugin 'kmnk/vim-unite-giti'
  Plugin 'Shougo/neomru.vim'
  Plugin 'mattn/ctrlp-launcher'

  call vundle#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL

  filetype plugin indent on
  syntax on

  set shell=/bin/sh

  if v:version >= 704 " Vim 7.4 and up
    " Revert to the old regex engine, which is faster for Ruby syntax highlighting
    set re=1
  endif

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

  if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
  endif

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
  " augroup CursorLine
  "   au!
  "   au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  "   au WinLeave * setlocal nocursorline
  " augroup END

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

  set undolevels=1000
  set nobackup
  set nowritebackup

  set history=250

  set updatetime=750

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MOVING BETWEEN FILES

  " Switch between the last two files
  nnoremap <leader><leader> <c-^>

  " auto load files if vim detects they have been changed outside of Vim
  set autoread

  nmap <leader>s :only<CR>:AV<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MODES

  imap jj <ESC>
  imap ii <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BUFFERS

  map <right> <ESC>:bn<CR>
  map <left> <ESC>:bp<CR>

  nmap <leader>d :BD<CR>
  " nmap <leader>D :only<CR>
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
  au VimResized * exe "normal! \<c-w>="

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

  :command! W w
  :command! Q q

  :command! Stop !spring stop

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI

  " Set the vertical split character to a space
  set fillchars+=vert:\ " there is a single space after '\ '

  " Status and command line
  set showcmd

  set laststatus=2
  set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*

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

  " set number
  " set relativenumber
  " function! NumberToggle()
  "   if(&relativenumber == 1)
  "     set norelativenumber
  "     set number
  "   else
  "     set number
  "     set relativenumber
  "   endif
  " endfunc
  " nnoremap <F2> :call NumberToggle()<cr>

  " autocmd WinEnter,FocusGained * :setlocal number relativenumber
  " autocmd WinLeave,FocusLost   * :setlocal number norelativenumber

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" THEME AND COLORS

  " Theme
  colorscheme railscasts

  " Font
  set guifont=Monaco:h12

  " Status line

  " Search hightlighting
  hi Search guibg=#585858 guifg=NONE

  " Cursors
  highlight Cursor guifg=white guibg=steelblue

  set guicursor+=a:blinkon0
  set guicursor+=i:ver10

  au InsertLeave * hi Cursor guifg=white guibg=steelblue
  au InsertEnter * hi Cursor guibg=grey

  " highlight CursorLine guibg=#1C1C1C
  highlight CursorLineNr guibg=NONE guifg=#444444
  highlight ColorColumn ctermbg=233 guibg=#1C1C1C
  highlight VertSplit guifg=#585858
  highlight SignColumn guibg=black

  hi MatchParen guibg=NONE guifg=green gui=bold

  highlight DiffText cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=Red guibg=NONE

  " highlight! link DiffText MatchParen

  highlight! link DiffAdd GitGutterAdd
  highlight! link DiffDelete GitGutterDelete
  highlight! link DiffChange GitGutterChange

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
  " nmap <silent> <leader>a :TestSuite<CR>
  " nmap <silent> <leader>l :TestLast<CR>

  let g:test#ruby#rspec#executable = 'bundle exec rspec'
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

  let g:syntastic_enable_signs = 0
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_ruby_checkers = ['mri']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neocomplete

  let g:acp_enableAtStartup = 0

  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#force_overwrite_completefunc = 1
  let g:neocomplete#enable_smart_case = 1

  let g:neocomplete#sources#tags#cache_limit_size = 5000000

  let g:neosnippet#enable_snipmate_compatibility = 1
  let g:neosnippet#snippets_directory='~/.vim/snippets'

  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-k>     <Plug>(neosnippet_expand_target)

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

  " let g:neocomplete#enable_auto_select = 1

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EasyMotion

  let g:EasyMotion_smartcase = 1
  let g:EasyMotion_move_highlight = 0
  " let g:EasyMotion_leader_key = '<leader>e'

  map <Leader>y <Plug>(easymotion-prefix)

  " nmap F <Plug>(easymotion-s)

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
" Unite

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGES

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


  " vim-github-dashboard
  let g:github_dashboard = { 'username': 'mikekreeki', 'password': $GITHUB_TOKEN }

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

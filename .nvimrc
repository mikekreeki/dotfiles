"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" augroup polyglot_config
"   autocmd!
"
"   " For some reason they want this defined before the plugin is loaded
"   let g:polyglot_disabled = ['javascript', 'jsx', 'ruby', 'elixir', 'typescript', 'vue']
" augroup END

call plug#begin('~/.nvim/plugged')

" Buffer/File Navigation
Plug 'corntrace/bufexplorer'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-projectionist'
Plug 'kopischke/vim-fetch'
Plug 'srstevenson/vim-picker'

" Interface
" Plug 'bling/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim'
Plug 'inkarkat/SyntaxAttr.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'tpope/vim-rsi'
" Plug 'itchyny/vim-cursorword'
Plug 'xiyaowong/nvim-cursorword'
Plug 'yamatsum/nvim-cursorline'
Plug 'pmalek/toogle-maximize.vim'
Plug 'troydm/zoomwintab.vim'
Plug 'junegunn/goyo.vim'
Plug 'ervandew/regex'

" Searching
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-grepper'
Plug 'osyo-manga/vim-over'
Plug 'nelstrom/vim-qargs'

" Autocomplete
Plug 'Shougo/context_filetype.vim'
" Plug 'Shougo/deoplete.nvim',   { 'do': ':UpdateRemotePlugins' }
" Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'hrsh7th/nvim-cmp'
" Plug 'Shougo/echodoc.vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neopairs.vim'
Plug 'reedes/vim-litecorrect'

" Code Editing
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
" Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-autopairs'
" Plug 'andymass/vim-matchup'
" Plug 'edsono/vim-matchit'
Plug 'gorkunov/smartpairs.vim'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
" Plug 'terryma/vim-multiple-cursors'
Plug 'mg979/vim-visual-multi'
" Plug 'tpope/vim-commentary'
Plug 'tyru/caw.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'honza/vim-snippets'
" Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }

" Project Management
Plug 'airblade/vim-rooter'

" Git Integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rsrchboy/vim-extradite'
" Plug 'rhysd/committia.vim'
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-git'
" Plug 'jreybert/vimagit'
" Plug 'lambdalisue/gina.vim'
" Plug 'danishprakash/vim-githubinator'
" Plug 'cohama/agit.vim'

" Building, Linters, Test Runners
Plug 'dense-analysis/ale'
Plug 'sbdchd/neoformat'
Plug 'janko-m/vim-test'

" Ruby Integration
Plug 'AmaiSaeta/vim-ruby-sinatra', { 'for': 'ruby' }
Plug 'AndrewRadev/splitjoin.vim',  { 'for': 'ruby' }
Plug 'keith/rspec.vim',            { 'for': 'ruby' }
Plug 'slim-template/vim-slim',     { 'for': 'ruby' }
Plug 'tpope/vim-bundler',          { 'for': 'ruby' }
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby',          { 'for': 'ruby' }
Plug 'tpope/vim-rvm',              { 'for': 'ruby' }

" JavaScript Integration
Plug 'elzr/vim-json',                           { 'for': 'json' }
Plug 'pangloss/vim-javascript',                 { 'for': 'javascript' }
Plug 'mxw/vim-jsx',                             { 'for': 'javascript' }
" Plug 'othree/jspc.vim',                         { 'for': 'javascript' }
Plug 'jparise/vim-graphql',                     { 'for': 'javascript' }
Plug 'heavenshell/vim-jsdoc',                   { 'for': 'javascript' }
Plug 'HerringtonDarkholme/yats.vim',            { 'for': 'typescript' }
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'pantharshit00/vim-prisma'
" Plug 'leafOfTree/vim-vue-plugin'

" Elixir integration
Plug 'slashmili/alchemist.vim',   { 'for': 'elixir' }
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }

" Other Languages
" Plug 'sheerun/vim-polyglot'
Plug 'gabrielelana/vim-markdown'
" Plug 'mzlogin/vim-markdown-toc'
Plug 'vim-scripts/SyntaxRange'
Plug 'chrisbra/csv.vim'

" Taking Notes
Plug 'duff/vim-scratch'
" Plug 'xolox/vim-misc'

" Colorschemes
" Plug 'mikekreeki/mikekreeki-colors.vim'
Plug '~/Projects/mikekreeki-colors.vim'


call plug#end()

filetype plugin indent on
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM CONFIGURATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set shell=/bin/zsh

let mapleader = ","
let maplocalleader = "\\"

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
set synmaxcol=1000
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
set noic
set gdefault
set scs
set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set wildmenu
set wildmode=longest:full,full
set completefunc=syntaxcomplete#Complete
execute "set colorcolumn=" . join(range(86,335), ',')
set shiftround
set history=250
set updatetime=750
set undofile                    " Save undo's after file closes
set undodir=~/.vim/undo         " where to save undo histories
set undolevels=1000             " How many undos
set undoreload=10000            " number of lines to save for undo
" set winwidth=80
set splitright
set timeoutlen=500
set fillchars+=vert:\ " there is a single space after '\ '
set showcmd
set laststatus=2
set shortmess+=IFW
set conceallevel=2
set concealcursor=nvi
set noshowmode
set exrc
" set secure
set termguicolors
set inccommand=split
set redrawtime=5000

autocmd BufWinLeave *.* silent! mkview " Make Vim save view (state) (folds, cursor, etc)
autocmd BufWinEnter *.* silent! loadview " Make Vim load view (state) (folds, cursor, etc)

" Ignore things
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj
set wildignore+=*/.git\//*,*/.hg/*,*/.svn/*

set wildoptions=pum
set pumblend=10

" nnoremap / /\v
" vnoremap / /\v

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Make up/down motion behave reasonably
nnoremap j gj
nnoremap k gk

" Maybe antipattern, maybe not :)
nnoremap J 10j
nnoremap K 10k

nnoremap <C-J> <C-d>
nnoremap <C-K> <C-u>
vnoremap <C-J> <C-d>
vnoremap <C-K> <C-u>

" Easier navigation betwen tabs
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnew<CR>
nnoremap tm :tabm<Space>
nnoremap tx :tabclose<CR>
nnoremap tc :tabclose<CR>
nnoremap td :tabclose<CR>

" Move to beginning/end of line
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

" Jump to previously edited line (works on CZ keyboard)
nnoremap ů g;

" Jump to previous cursor position
nnoremap § ``

" Press Space to turn off highlighting, clear any message already displayed,
" rehighlight syntax
nnoremap <silent> <Space> :nohlsearch<Bar>wincmd =<Bar>:redraw!<Bar>:checktime<Bar>:set nopaste<Bar>:echo<Bar>:syntax sync fromstart<CR>

" Visually select the text that was last edited/pasted
nnoremap gV `[v`]

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Shortcuts for closing buffers
nmap <silent> <leader>d :close<CR>
nmap <silent> <leader>D :close<CR>

" Open a new vertical split and switch over to it
nnoremap <leader>w <C-w>v<C-w>
nnoremap <leader>e :vnew<CR>
nmap <TAB> <C-W>w

" When joining lines do not insert space between
" vnoremap J :j!<return>

" Resize splits when the window is resized
autocmd VimResized * wincmd =

" Make horizontal scrolling less horrible.
set sidescroll=1
set sidescrolloff=10

" Catch common mistakes
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev wQ wq
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev E e

" Easier git save
cnoreabbrev GW Gwrite!
cnoreabbrev GW! Gwrite!

" Use my own colorscheme
colorscheme mikekreeki

" Setup cursor look
set guicursor+=a:blinkon0
set guicursor+=i:ver10

" Always open help files in a rightward vertical split
autocmd FileType help,gitcommit wincmd L

" Reduce noise in status line
autocmd BufEnter * :echo
autocmd BufWritePost * :echo

nmap <silent> <C-l> ?function<cr>:noh<cr><Plug>(jsdoc)

" Shortcut for sorting stuff alphabetically
vnoremap <silent> s :sort ui<CR>

nnoremap W cs[[

hi NonText guifg=black ctermfg=black

set diffopt+=internal,algorithm:patience,indent-heuristic

" Faster split resizing
if bufwinnr(1)
  map + <C-W>>
  map - <C-W><
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HELPER FUNCTIONS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN CONFIGURATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

" augroup easytags_config
"   let g:easytags_cmd = '/Users/mikekreeki/.nvm/versions/node/v5.5.0/bin/jsctags'
"   let g:easytags_file = '~/.vimtags'
"   let g:easytags_updatetime_warn = 0
"   let g:easytags_events = ['BufReadPost', 'BufWritePost']
"   let g:tagbar_compact = 1
"   let g:tagbar_iconchars = ['▸', '▾']
"
"   let g:easytags_languages = {
"        \   'javascript': {
"        \       'cmd': g:easytags_cmd,
"        \       'args': [],
"        \       'fileoutput_opt': '-f',
"        \       'stdout_opt': '-f-',
"        \       'recurse_flag': '-R'
"        \   }
"    \}
" augroup END

augroup nerdtree_config
  autocmd!

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
        \ '\.git/',
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

  let g:NERDTreeExtensionHighlightColor = {}
  let g:NERDTreeExtensionHighlightColor['css'] = 'AAAAAA'
  let g:NERDTreeExtensionHighlightColor['less'] = 'AAAAAA'
  let g:NERDTreeExtensionHighlightColor['scss'] = 'AAAAAA'
  let g:NERDTreeExtensionHighlightColor['test.js'] = 'AAAAAA'

  let g:NERDTreeDisableExactMatchHighlight = 1
  let g:NERDTreeDisablePatternMatchHighlight = 1
  let g:NERDTreeExactMatchHighlightFullName = 1
  let g:NERDTreeFileExtensionHighlightFullName = 1
  let g:NERDTreePatternMatchHighlightFullName = 1
  let g:NERDTreeSyntaxDisableDefaultExtensions = 1
  let g:NERDTreeSyntaxEnabledExtensions = ['css', 'less', 'scss']

  " Open a NERDTree automatically when vim starts up if no files were specified
  " autocmd StdinReadPre * let s:std_in=1
  " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

  function! NERDTreeToggleInCurDir()
    " If NERDTree is open in the current buffer
    if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
      exe ":NERDTreeClose"
    elseif bufname('%')
      exe ":NERDTreeFind"
    else
      exe ":NERDTreeCWD"
    endif

  " Old impl, remove
 "    " If NERDTree is open in the current buffer
 "    if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
 "      exe ":NERDTreeClose"
 "    else
 "      if (expand("%:t") != '')
	" exe ":NERDTreeFind"
 "      else
	" exe ":NERDTreeToggle"
 "      endif
 "    endif
  endfunction

  command NERDTreeOnCurrentDir :call NERDTreeToggleInCurDir()

  " Fix width of buffers after NERDTree opens/closes
  nnoremap <silent> q :exec 'NERDTreeOnCurrentDir' <Bar> wincmd =<CR>

  " Focus file in current buffer in NERDTree
  nnoremap <silent> Q :exec 'NERDTreeFind' <Bar> wincmd =<CR>
augroup END

" augroup ctrlp_config
"   autocmd!
"
"   let g:ctrlp_map = '<c-p>'
"   let g:ctrlp_cmd = 'CtrlP'
"
"   let g:ctrlp_max_files = 0
"   let g:ctrlp_extensions = []
"
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"   let g:ctrlp_user_command_async = 1
"
"   let g:ctrlp_match_window = 'bottom,order:ttb'
"   let g:ctrlp_reuse_window = 'netrw'
"
"   let g:ctrlp_working_path_mode = 0
"
"   let g:ctrlp_show_hidden = 1
"   let g:ctrlp_use_caching = 1
"   let g:ctrlp_lazy_update = 50
"
"   " nmap <silent> .. :CtrlPBranch<CR>
"   " nmap <silent> -- :CtrlPBranch<CR>
"
"   " nnoremap <leader>be :CtrlPBuffer<CR>
"   nnoremap <leader>bc :CtrlPCmdPalette<CR>
" augroup END

augroup picker_config
  autocmd!

  let g:picker_custom_find_executable = 'rg'
  let g:picker_custom_find_flags = "--color never --files --hidden --glob '!.git'"

  nmap <unique> <C-p> <Plug>(PickerEdit)
augroup END

" let g:picker_selector_executable = 'sk'
" let g:picker_selector_flags = ''

" augroup airline_config
"   autocmd!
"
"   " let g:airline_inactive_collapse=0
"   let g:airline_left_sep=''
"   let g:airline_right_sep=''
"   let g:airline_theme='powerlineish'
"   let g:airline#extensions#hunks#non_zero_only = 1
"   let g:airline_section_y=''
"   let g:airline_section_z=''
"
"   let g:airline_mode_map = {
"      \ '__' : '-',
"      \ 'n'  : 'N',
"      \ 'i'  : 'I',
"      \ 'ic' : 'I',
"      \ 'ix' : 'I',
"      \ 'R'  : 'R',
"      \ 'c'  : 'C',
"      \ 'v'  : 'V',
"      \ 'V'  : 'V',
"      \ '' : 'V',
"      \ 's'  : 'S',
"      \ 'S'  : 'S',
"      \ '' : 'S',
"      \ 't'  : 'T',
"      \ }
"
"   let g:airline#extensions#hunks#enabled = 0
"   let g:airline#extensions#branch#enabled = 0
"   let g:airline#extensions#branch#symbol = ''
"
"   let g:airline#extensions#ale#enabled = 1
"   let g:airline#extensions#ale#error_symbol = '✖ '
"   let g:airline#extensions#ale#warning_symbol = '✖ '
" augroup END

lua << END
  local custom_powerline = require'lualine.themes.powerline'

  custom_powerline.normal.b.bg = '#000'
  custom_powerline.normal.c.bg = '#000'

  custom_powerline.insert.a.fg = '#FFFFFF'
  custom_powerline.insert.a.bg = '#005F87'

  custom_powerline.insert.b.fg = '#FFF'
  custom_powerline.insert.b.bg = '#000'

  custom_powerline.insert.c.bg = '#000'

  local module = require'lualine.utils.mode'

  module.map = {
    ['n']    = 'N',
    ['no']   = 'O-PENDING',
    ['nov']  = 'O-PENDING',
    ['noV']  = 'O-PENDING',
    ['no'] = 'O-PENDING',
    ['niI']  = 'N',
    ['niR']  = 'N',
    ['niV']  = 'N',
    ['nt']   = 'N',
    ['v']    = 'V',
    ['vs']   = 'V',
    ['V']    = 'V-LINE',
    ['Vs']   = 'V-LINE',
    ['']   = 'V-BLOCK',
    ['s']  = 'V-BLOCK',
    ['s']    = 'SELECT',
    ['S']    = 'S-LINE',
    ['']   = 'S-BLOCK',
    ['i']    = 'INSERT',
    ['ic']   = 'INSERT',
    ['ix']   = 'INSERT',
    ['R']    = 'REPLACE',
    ['Rc']   = 'REPLACE',
    ['Rx']   = 'REPLACE',
    ['Rv']   = 'V-REPLACE',
    ['Rvc']  = 'V-REPLACE',
    ['Rvx']  = 'V-REPLACE',
    ['c']    = 'COMMAND',
    ['cv']   = 'EX',
    ['ce']   = 'EX',
    ['r']    = 'REPLACE',
    ['rm']   = 'MORE',
    ['r?']   = 'CONFIRM',
    ['!']    = 'SHELL',
    ['t']    = 'T',
  }

  require'lualine'.setup {
    options = {
      icons_enabled = false,
      section_separators = { left = "", right = "" },
      theme = custom_powerline,
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {
        {
          'filename',
          path = 1,
        },
      },
      lualine_c = {},
      lualine_x = {},
      lualine_y = {'filetype'},
      lualine_z = {
        {
          'diagnostics',
          sources = {'ale'},
          diagnostics_color = {
            -- Same values like general color option can be used here.
            error = 'DiagnosticError', -- changes diagnostic's error color
            warn  = 'DiagnosticWarn',  -- changes diagnostic's warn color
            info  = 'DiagnosticInfo',  -- changes diagnostic's info color
            hint  = 'DiagnosticHint',  -- changes diagnostic's hint color
          },
          symbols = {error = '✖ ', warn = '✖ ', info = 'I', hint = 'H'},
        }
      },
    },
    extensions = {'quickfix', 'nerdtree'}
  }
END

" augroup neosnippet_config
"   autocmd!
"
"   " Turn off conceal
"   let g:neosnippet#enable_conceal_markers = 0
"   let g:neosnippet#enable_snipmate_compatibility = 1
"   let g:neosnippet#snippets_directory='~/.vim/bundle/vim-react-es6-snippets/snippets'
"
"   autocmd InsertLeave * NeoSnippetClearMarkers
"
"   imap <C-K> <Plug>(neosnippet_expand_or_jump)
"   smap <C-K> <Plug>(neosnippet_expand_or_jump)
"   xmap <C-K> <Plug>(neosnippet_expand_target)
"
"   smap <expr><Space> neosnippet#expandable_or_jumpable() ?
"  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<Space>"
" augroup END

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
    " autocmd BufEnter term://* startinsert
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

  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
augroup END

" augroup cursorline_config
"   autocmd!
"
"   " Cursorline in active window only
"   au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"   au WinLeave * setlocal nocursorline
"
"   " Only have cursorline in current window and in normal window
"   autocmd WinLeave * set nocursorline
"   autocmd WinEnter * set cursorline
"   autocmd InsertEnter * set nocursorline
"   autocmd InsertLeave * set cursorline
" augroup END

augroup indentLine_config
  autocmd!

  let g:indentLine_fileTypeExclude = ['help', 'notes', 'text', '']
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

  let g:test#enabled_runners = ["javascript#jest", "ruby#rspec"]

  " let g:test#javascript#jest#file_pattern = '.*-(spec|test)\.(js|jsx|coffee|ts|tsx)$'

  " let test#base#no_colors = 0
  " let test#strategy = 'neoterm'
  " let g:test#preserve_screen = 0

  " function! RunTest(cmd)
  "   call neoterm#open() " Opens the neoterm window
  "   call neoterm#normal('G') " Scroll to the end of the neoterm window
  "   call neoterm#clear()
  "   exec a:cmd
  " endfunction

  " nmap <silent> <leader>R :call RunTest('TestNearest')<CR>
  " nmap <silent> <leader>r f :call RunTest('TestFile')<CR>
augroup END

augroup trailing_whitespace_config
  autocmd!

  " Remove trailing whitespace before save
  autocmd BufWritePre * :call PreserveCursor("%s/\\s\\+$//e")
augroup END

augroup ale_config
  autocmd!

  let g:ale_sign_column_always = 1
  let g:ale_sign_error = '✖'
  let g:ale_sign_warning = '✖'
  let g:ale_warn_about_trailing_whitespace = 0
  let g:ale_echo_msg_format = '%linter%: %s'

  let g:ale_linters = {
  \   'javascript': ['eslint', 'flow'],
  \   'ruby': ['rubocop'],
  \   'typescript': ['tsserver', 'eslint', 'tslint']
  \}

  let g:ale_ruby_rubocop_options = '-R'

  nmap <silent> <Bs> <Plug>(ale_previous_wrap)

  autocmd BufEnter ale-preview :set wrap<CR>

  " let b:ale_fixers = {'typescript': ['tslint']}
  " let g:ale_fix_on_save = 1

  " Lint always in Normal Mode
  let g:ale_lint_on_text_changed = 'normal'

  " Lint when leaving Insert Mode but don't lint when in Insert Mode
  let g:ale_lint_on_insert_leave = 1

  " Set ALE's 200ms delay to zero
  let g:ale_lint_delay = 0

  let g:ale_virtualtext_cursor = 0
  let g:ale_hover_cursor = 0
augroup END

" augroup deoplete_config
"   autocmd!
"
"   if has('nvim')
"     let g:deoplete#enable_at_startup = 1
"     let g:deoplete#auto_completion_start_length = 0
"     " let g:deoplete#file#enable_buffer_path = 1
"
"     inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"     inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
"
"     function! s:my_cr_function()
"       return pumvisible() ? deoplete#close_popup() : "\<CR>"
"     endfunction
"     inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"
"     " Fix deoplete inserting giberrish when using multiple cursors
"     func! Multiple_cursors_before()
"       :ALEDisable
"
"       if deoplete#is_enabled()
"         call deoplete#disable()
"         let g:deoplete_is_enable_before_multi_cursors = 1
"       else
"         let g:deoplete_is_enable_before_multi_cursors = 0
"       endif
"     endfunc
"     func! Multiple_cursors_after()
"       :ALEEnable
"
"       if g:deoplete_is_enable_before_multi_cursors
"         call deoplete#enable()
"       endif
"     endfunc
"   endif
" augroup END

lua << EOF
  local cmp = require'cmp'

  cmp.setup({
    snippet = {},
    mapping = {
      ['<TAB>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<S-TAB>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'path' },
      { name = 'buffer' },
      { name = 'cmp_tabnine' },
    }),
  })

  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })
EOF

augroup vim_visual_multi
  autocmd!

  let g:VM_maps = {}
  let g:VM_maps["Undo"] = 'u'
  let g:VM_maps["Redo"] = '<C-r>'
  let g:VM_maps["Skip Region"]  = '<C-x>'
augroup END

augroup splitjoin_config
  autocmd!

  autocmd FileType ruby,javascript nnoremap S :SplitjoinJoin<cr>
  autocmd FileType ruby,javascript nnoremap s :SplitjoinSplit<cr>
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

  " TODO: Move into separate group if it works
  " nnoremap <ENTER> :Denite gitstatus<CR>
augroup END

augroup grepper_config
  autocmd!

  " Project search using Ag
  " nnoremap <leader>f :Grepper -tool ag -highlight -open -switch -grepprg ag --vimgrep --literal --hidden<CR>
  nnoremap <leader>f :Grepper -tool rg<CR>
augroup END

augroup bufexplorer_config
  autocmd!

  let g:bufExplorerShowRelativePath=1
  let g:bufExplorerSplitOutPathName=0
  let g:bufExplorerDefaultHelp=0
  let g:bufExplorerReverseSort=1
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

  let g:javascript_plugin_flow = 1
  let g:vim_json_syntax_conceal = 0
  let g:jsx_ext_required = 1

  au BufRead,BufNewFile .eslintrc,.babelrc set ft=json syntax=json
augroup END

augroup committia_config
  autocmd!

  let g:committia_use_singlecolumn = 1
augroup END

augroup terminal_config
  autocmd!

  if has('nvim')
    autocmd TermOpen * set nonumber
    autocmd TermOpen * set wfw

    " Readline cheatsheet:
    " ctrl-a - jump to start of line
    " ctrl-e - jump to end of line
    " ctrl-k - kill forwards to the end of line
    " ctrl-u - kill backwards to the start of line
    autocmd TermOpen * nnoremap <buffer> I I<C-a>
    autocmd TermOpen * nnoremap <buffer> A A<C-e>
    autocmd TermOpen * nnoremap <buffer> C A<C-k>
    autocmd TermOpen * nnoremap <buffer> D A<C-k><C-\><C-n>
    autocmd TermOpen * nnoremap <buffer> cc A<C-e><C-u>
    autocmd TermOpen * nnoremap <buffer> dd A<C-e><C-u><C-\><C-n>
  endif
augroup END

augroup closetag_config
  autocmd!

  let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.xml,*.jsx,*.react.js,*.js,*.tsx,*.vue"
augroup END

augroup matchup_config
  autocmd!

  let g:matchup_matchparen_deferred = 1
  let g:matchup_matchparen_status_offscreen = 0
augroup END

augroup extradite_config
  autocmd!

  let g:extradite_width = 120
  let g:extradite_showhash = 1

  autocmd FileType extradite,diff setlocal colorcolumn=0
augroup END

augroup rooter_config
  autocmd!

  " let g:rooter_patterns = ['package.json', '.git/']
  let g:rooter_patterns = ['.git/']
augroup END

augroup smartgf_config
  autocmd!

  let g:smartgf_key = '<CR>'
augroup END

" augroup autopairs_config
"   autocmd!
"
"   let g:AutoPairsMultilineClose = 0
" augroup END

lua << END
  require('nvim-autopairs').setup{}
END

augroup indent_guides_config
  autocmd!

  let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'terminal']
augroup END

augroup echodoc_config
  autocmd!

  let g:echodoc_enable_at_startup = 1
augroup END

" augroup tagbar_config
"   autocmd!
"
"   " nmap T :TagbarToggle<CR>:echo<CR>
" augroup END

augroup scratch_config
  autocmd!

  nnoremap <silent> <leader><TAB> :Scratch<CR>
augroup END

augroup gitgutter_config
  autocmd!

  set signcolumn=yes

  let g:gitgutter_override_sign_column_highlight = 0
augroup END

augroup toggle_maximize_config
  autocmd!

  autocmd FileType javascript,ruby nnoremap <buffer> <silent> <CR> :call ToggleMaximizeCurrentWindow()<CR>
augroup END

augroup neoformat_config
  autocmd!

  let g:neoformat_javacript_prettier = {
            \ 'exe': './node_modules/.bin/prettier',
            \ 'args': ['--stdin --config .prettierrc'],
            \ 'stdin': 1,
            \ }

  let g:neoformat_enabled_javascript = ['prettier']

  let g:neoformat_typescript_prettier = {
            \ 'exe': './node_modules/prettier/bin-prettier.js',
            \ 'args': ['--stdin', '--stdin-filepath', '"%:p"', '--parser', 'typescript'],
            \ 'stdin': 1,
            \ }

  let g:neoformat_typescriptreact_prettier = {
            \ 'exe': './node_modules/prettier/bin-prettier.js',
            \ 'args': ['--stdin', '--stdin-filepath', '"%:p"', '--parser', 'typescript'],
            \ 'stdin': 1,
            \ }

  " let g:neoformat_typescript_tslint = {
  "           \ 'exe': './node_modules/.bin/tslint',
  "           \ 'args': ['--format codeFrame --fix'],
  "           \ 'stdin': 1,
  "           \ }

  let g:neoformat_enabled_javascript = ['prettier']
  let g:neoformat_enabled_typescript = ['prettier']
  let g:neoformat_enabled_typescriptreact = ['prettier']
  let g:neoformat_enabled_ruby = ['rubocop']


  autocmd BufWritePre **/*.js,**/*.ts,**/*.tsx silent Neoformat
  " autocmd BufWritePre apps/**/*.js,src/**/*.js,cypress/**/*.js,test/**/*.js,libs/**/*.js silent Neoformat
  " autocmd BufWritePre apps/**/*.ts,src/**/*.ts,cypress/**/*.ts,test/**/*.ts,libs/**/*.ts silent Neoformat
  " autocmd BufWritePre apps/**/*.tsx,src/**/*.tsx,cypress/**/*.tsx,test/**/*.tsx,libs/**/*.tsx silent Neoformat
  " autocmd BufWritePre *.rb silent Neoformat

  " Enable alignment
  " let g:neoformat_basic_format_align = 1

  " Enable tab to spaces conversion
  let g:neoformat_basic_format_retab = 1

  " Enable trimmming of trailing whitespace
  " let g:neoformat_basic_format_trim = 1

  " Run all enabled formatters (by default Neoformat stops after the first formatter succeeds)
  let g:neoformat_run_all_formatters = 1
augroup END

augroup syntax_attr_config
  autocmd!

  " nmap <leader>x :call SyntaxAttr#SyntaxAttr()<CR>
augroup END

augroup typescript_config
  autocmd!

  autocmd BufNewFile,BufRead,BufEnter *.tsx set filetype=typescriptreact

  autocmd FileType typescript,typescriptreact,javascript,javascript.jsx nnoremap <buffer> <CR> :ALEGoToDefinition<CR>
  autocmd FileType typescript,typescriptreact,javascript,javascript.jsx nnoremap <buffer> <leader>x :ALEHover<CR>

  let g:nvim_typescript#diagnostics_enable = 0
augroup END

augroup elixir_config
  autocmd!

  let g:alchemist_mappings_disable = 1
  let g:alchemist_keyword_map = '<leader>K'
augroup END

augroup zoomwintab_config
  autocmd!

  nmap <silent> W :ZoomWinTabToggle<CR>
augroup END

augroup goyo_config
  autocmd!

  let g:goyo_height = '100%'
  let g:goyo_width = 120
augroup END

" augroup easygrep_config
"   autocmd!

"   let g:EasyGrepJumpToMatch = 0
"   let g:EasyGrepIgnoreCase = 0
"   let g:EasyGrepRoot = 'repository'

"   nmap <silent> F <plug>EgMapGrepCurrentWord_V
" augroup END

" augroup cursorword_config
"   autocmd!
"
"   autocmd FileType qf let b:cursorword = 0
" augroup END

augroup markdown_config
  autocmd!

  autocmd FileType markdown setl conceallevel=0
augroup END

" augroup hexokinase_config
"   autocmd!
"
"   let g:Hexokinase_highlighters = ['virtual']
" augroup END

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
  vnoremap ` <esc>`>a`<esc>`<i`<esc>
augroup END

function! s:source_project_config() abort
  let l:projectfile = findfile('.vimrc', expand('%:p').';')
  if filereadable(l:projectfile)
    silent execute 'source' l:projectfile
  endif
endfunction

augroup MyAutoCmds
  autocmd!
  autocmd BufRead,BufNewFile * call <SID>source_project_config()

  if has('nvim')
    autocmd DirChanged * call <SID>source_project_config()
  endif
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
Plug 'nvim-lualine/lualine.nvim'
Plug 'milkypostman/vim-togglelist'
Plug 'tpope/vim-rsi'
Plug 'xiyaowong/nvim-cursorword'
Plug 'ervandew/regex'

" Searching
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-grepper'
Plug 'osyo-manga/vim-over'
Plug 'nelstrom/vim-qargs'

" Autocomplete
Plug 'Shougo/context_filetype.vim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neopairs.vim'
Plug 'reedes/vim-litecorrect'

" Code Editing
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'windwp/nvim-autopairs'
Plug 'gorkunov/smartpairs.vim'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mg979/vim-visual-multi'
Plug 'tyru/caw.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'echasnovski/mini.nvim'

" Project Management
Plug 'airblade/vim-rooter'

" Git Integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rsrchboy/vim-extradite'
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-git'

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
Plug 'heavenshell/vim-jsdoc',                   { 'for': 'javascript' }
Plug 'HerringtonDarkholme/yats.vim',            { 'for': 'typescript' }

" Other Languages
Plug 'gabrielelana/vim-markdown'
Plug 'vim-scripts/SyntaxRange'
Plug 'chrisbra/csv.vim'

" Taking Notes
Plug 'duff/vim-scratch'

" Colorschemes
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
set noshowcmd
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

augroup picker_config
  autocmd!

  let g:picker_custom_find_executable = 'rg'
  let g:picker_custom_find_flags = "--color never --files --hidden --glob '!.git'"

  nmap <unique> <C-p> <Plug>(PickerEdit)
augroup END

" let g:picker_selector_executable = 'sk'
" let g:picker_selector_flags = ''

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
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    },
    extensions = {'quickfix', 'nerdtree'}
  }
END

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

  " Run Oxlint through ALE's LSP integration in projects that configure it.
  call ale#Set('oxlint_executable', 'oxlint')
  call ale#Set('oxlint_use_global', get(g:, 'ale_use_global_executables', 0))

  function! s:OxlintExecutable(buffer) abort
    return ale#path#FindExecutable(a:buffer, 'oxlint', [
    \   'node_modules/.bin/oxlint',
    \ ])
  endfunction

  function! s:ProjectNodeExecutable(buffer) abort
    let l:nvmrc_path = ale#path#FindNearestFile(a:buffer, '.nvmrc')
    let l:node_version = !empty(l:nvmrc_path) ? get(readfile(l:nvmrc_path), 0, '') : ''
    let l:node_version = substitute(trim(l:node_version), '^v', '', '')
    let l:nvm_nodes = empty(l:node_version)
    \ ? []
    \ : glob(expand('~/.nvm/versions/node/v' . l:node_version . '*/bin/node'), 0, 1)

    return !empty(l:nvm_nodes) ? l:nvm_nodes[0] : 'node'
  endfunction

  function! s:OxlintCommand(buffer) abort
    let l:executable = s:OxlintExecutable(a:buffer)
    let l:local_entrypoint = fnamemodify(l:executable, ':h:h') . '/oxlint/bin/oxlint'

    if filereadable(l:local_entrypoint)
      return ale#Escape(s:ProjectNodeExecutable(a:buffer))
      \ . ' ' . ale#Escape(l:local_entrypoint)
      \ . ' --lsp'
    endif

    return '%e --lsp'
  endfunction

  function! s:OxlintProjectRoot(buffer) abort
    let l:nearest_config = ''

    for l:config_name in [
    \   '.oxlintrc.json',
    \   '.oxlintrc.jsonc',
    \   'oxlint.config.ts',
    \   'oxlint.config.mts',
    \ ]
      let l:config_path = ale#path#FindNearestFile(a:buffer, l:config_name)

      if !empty(l:config_path)
      \ && (empty(l:nearest_config)
      \     || strlen(fnamemodify(l:config_path, ':p:h')) > strlen(fnamemodify(l:nearest_config, ':p:h')))
        let l:nearest_config = l:config_path
      endif
    endfor

    return empty(l:nearest_config) ? '' : fnamemodify(l:nearest_config, ':p:h')
  endfunction

  function! s:OxlintLanguage(buffer) abort
    return getbufvar(a:buffer, '&filetype')
  endfunction

  " Use TypeScript 7's standard LSP only in projects that opt into its native package.
  function! s:TypeScriptNativeProjectRoot(buffer) abort
    let l:project_root = fnamemodify(bufname(a:buffer), ':p:h')

    while !empty(l:project_root)
      if filereadable(l:project_root . '/node_modules/@typescript/native/package.json')
        return l:project_root
      endif

      let l:parent_directory = fnamemodify(l:project_root, ':h')
      if l:parent_directory is# l:project_root
        break
      endif

      let l:project_root = l:parent_directory
    endwhile

    return ''
  endfunction

  function! s:TypeScriptNativeExecutable(buffer) abort
    let l:project_root = s:TypeScriptNativeProjectRoot(a:buffer)
    let l:executable = l:project_root . '/node_modules/.bin/tsc'

    return !empty(l:project_root) && executable(l:executable) ? l:executable : ''
  endfunction

  function! s:TypeScriptNativeLanguage(buffer) abort
    return getbufvar(a:buffer, '&filetype')
  endfunction

  function! s:TypeScriptNativeCommand(buffer) abort
    let l:project_root = s:TypeScriptNativeProjectRoot(a:buffer)
    let l:entrypoint = l:project_root . '/node_modules/@typescript/native/bin/tsc'

    return ale#Escape(s:ProjectNodeExecutable(a:buffer))
    \ . ' ' . ale#Escape(l:entrypoint)
    \ . ' --lsp --stdio'
  endfunction

  for s:oxlint_filetype in ['javascript', 'typescript']
    call ale#linter#Define(s:oxlint_filetype, {
    \   'name': 'oxlint',
    \   'lsp': 'stdio',
    \   'executable': function('s:OxlintExecutable'),
    \   'command': function('s:OxlintCommand'),
    \   'cwd': function('s:OxlintProjectRoot'),
    \   'project_root': function('s:OxlintProjectRoot'),
    \   'language': function('s:OxlintLanguage'),
    \ })
  endfor
  unlet s:oxlint_filetype

  for s:typescript_native_filetype in ['javascript', 'typescript']
    call ale#linter#Define(s:typescript_native_filetype, {
    \   'name': 'typescript_native',
    \   'lsp': 'stdio',
    \   'language': function('s:TypeScriptNativeLanguage'),
    \   'executable': function('s:TypeScriptNativeExecutable'),
    \   'command': function('s:TypeScriptNativeCommand'),
    \   'cwd': function('s:TypeScriptNativeProjectRoot'),
    \   'project_root': function('s:TypeScriptNativeProjectRoot'),
    \ })
  endfor
  unlet s:typescript_native_filetype

  function! s:EnableOxlintForBuffer(buffer) abort
    let l:filetype = getbufvar(a:buffer, '&filetype')
    let l:base_filetype = l:filetype =~# '^typescript' ? 'typescript' : 'javascript'

    if empty(s:OxlintProjectRoot(a:buffer))
      return
    endif

    let l:linters = copy(get(g:ale_linters, l:base_filetype, []))
    if index(l:linters, 'oxlint') < 0
      call add(l:linters, 'oxlint')
    endif

    call setbufvar(a:buffer, 'ale_linters', l:linters)
  endfunction

  function! s:EnableTypeScriptNativeForBuffer(buffer) abort
    let l:filetype = getbufvar(a:buffer, '&filetype')
    let l:base_filetype = l:filetype =~# '^typescript' ? 'typescript' : 'javascript'
    let l:buffer_linters = getbufvar(a:buffer, 'ale_linters', v:null)

    if empty(s:TypeScriptNativeExecutable(a:buffer))
      return
    endif

    let l:linters = l:buffer_linters is v:null
    \ ? copy(get(g:ale_linters, l:base_filetype, []))
    \ : copy(l:buffer_linters)
    call filter(l:linters, 'v:val !=# ''tsserver''')

    if index(l:linters, 'typescript_native') < 0
      call add(l:linters, 'typescript_native')
    endif

    call setbufvar(a:buffer, 'ale_linters', l:linters)
  endfunction

  autocmd FileType javascript,javascriptreact,typescript,typescriptreact call <SID>EnableOxlintForBuffer(bufnr(''))
  autocmd FileType javascript,javascriptreact,typescript,typescriptreact call <SID>EnableTypeScriptNativeForBuffer(bufnr(''))

  let g:ale_linters = {
  \   'javascript': ['eslint', 'flow'],
  \   'ruby': ['rubocop'],
  \   'typescript': ['tsserver', 'eslint', 'tslint']
  \}

  let g:ale_sign_column_always = 1
  let g:ale_sign_error = '✖'
  let g:ale_sign_warning = '✖'
  let g:ale_warn_about_trailing_whitespace = 0
  let g:ale_echo_msg_format = '%linter%: %s'

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

  " Disable TS LSP syntaxt highlighting for now
  let g:ale_use_neovim_lsp_api = 0
augroup END

lua << EOF
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
      end,
    },
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

lua << END
  require('nvim-autopairs').setup{}
END

augroup scratch_config
  autocmd!

  nnoremap <silent> <leader><TAB> :Scratch<CR>
augroup END

augroup gitgutter_config
  autocmd!

  set signcolumn=yes

  let g:gitgutter_override_sign_column_highlight = 0
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

  let g:neoformat_enabled_javascript = ['prettier']
  let g:neoformat_enabled_typescript = ['prettier']
  let g:neoformat_enabled_typescriptreact = ['prettier']
  let g:neoformat_enabled_ruby = ['rubocop']


  autocmd BufWritePre **/*.js,**/*.ts,**/*.tsx silent Neoformat
  " Enable tab to spaces conversion
  let g:neoformat_basic_format_retab = 1

  " Run all enabled formatters (by default Neoformat stops after the first formatter succeeds)
  let g:neoformat_run_all_formatters = 1
augroup END

augroup typescript_config
  autocmd!

  autocmd BufNewFile,BufRead,BufEnter *.tsx set filetype=typescriptreact

  autocmd FileType typescript,typescriptreact,javascript,javascript.jsx nnoremap <buffer> <CR> :ALEGoToDefinition<CR>
  autocmd FileType typescript,typescriptreact,javascript,javascript.jsx nnoremap <buffer> <leader>x :ALEHover<CR>

augroup END

augroup markdown_config
  autocmd!

  autocmd FileType markdown setl conceallevel=0
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

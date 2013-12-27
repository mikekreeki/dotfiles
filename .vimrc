" GENERAL
  set nocompatible

  syntax on
  filetype plugin indent on

  set shell=/bin/sh

  execute pathogen#infect()

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


" INDENTATION

  set autoindent
  set expandtab
  set shiftwidth=2
  set smartindent
  set smarttab
  set softtabstop=2


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

  nnoremap <leader><space> :noh<cr>

  " Project search using Ag
  nnoremap <leader>f :Ag


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

  nnoremap <tab> %
  vnoremap <tab> %
  
  nnoremap ů g;

" EDITING

  "" Backspace over everything
  set backspace=indent,eol,start

  " Bubble single lines
  nmap <Up> [e
  nmap <Down> ]e
  " Bubble multiple lines
  vmap <Up> [egv
  vmap <Down> ]egv


" COPY/PASTE

  set clipboard=unnamed

  " Toggle paste mode
  set pastetoggle=<F3>

  " reselect the text that was just pasted
  nnoremap <leader>v V`]

  " Duplicate selection in visual mode
  vmap D y'>p


" SELECTION

  " set selectmode=mouse

  " Visually select the text that was last edited/pasted
  nmap gV `[v`]


" AUTOCOMPLETION

  set wildmenu
  set wildmode=longest:full,full

  " set omnifunc=syntaxcomplete#Complete

  " let g:neocomplete#enable_at_startup = 1
  " let g:neocomplete#enable_smart_case = 1

  " inoremap <expr><C-l> neocomplete#complete_common_string()


" FORMATTING

  set colorcolumn=80 

  set shiftround " When at 3 spaces and I hit >>, go to 4, not 5.

  " Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
  nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
  nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>


" HISTORY

  set undolevels=1000
  set nobackup
  set nowritebackup

  set history=50


" MOVING BETWEEN FILES

  " Switch between the last two files
  nnoremap <leader><leader> <c-^>


" MODES

  inoremap jj <ESC>


" BUFFERS

  nmap <leader>d :bd<CR>


" SPLITS

  " Open vertical split on right
  set splitright

  " Open a new vertical split and switch over to it
  nnoremap <leader>w <C-w>v<C-w>


" UTILITIES

  " Strip trailing whitespace in buffer
  " nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

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

  autocmd BufWritePre *.rb,*.js,*.coffee,*.css,*.sass,*.scss :call Preserve("%s/\\s\\+$//e")

  vnoremap :align :EasyAlign

  command! Path :call EchoPath()
  function! EchoPath()
    echo join(split(&path, ","), "\n")
  endfunction


" MAPPINGS

  "" Leader
  nnoremap ; :


" ALIASES

  :command! W w


" GUI

  "" Set the vertical split character to a space 
  set fillchars+=vert:\ " there is a single space after '\ '

  "" Theme
  colorscheme railscasts

  "" Font
  set guifont=Monaco:h12

  "" Status line
  set laststatus=2
  set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*

  set showcmd

  "" Cursors
  highlight Cursor guifg=white guibg=steelblue

  set guicursor+=a:blinkon0
  set guicursor+=i:ver10

  au InsertLeave * hi Cursor guifg=white guibg=steelblue
  au InsertEnter * hi Cursor guibg=grey

  "" Hide tollbars, scrollbars and other bars
  set shortmess+=I

  set guioptions-=r
  set guioptions-=L

  " Use console dialogs
  set guioptions+=c

  "" Start in fullscreen by default
  if has("gui_running")
    set fu
  end
  
  highlight ColorColumn ctermbg=233 guibg=#333333

" CTAGS

  " map  <Leader>rt :!ctags * `bundle show --paths`
  " nmap <leader>t <C-]>
  " nmap <leader>r <C-t>


" PLUGINS

  "" CtrpP
  let g:ctrlp_map = 'P'
  let g:ctrlp_cmd = 'CtrlP'
  
  " Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
  if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  endif


  "" Buffer Explorer
  let g:bufExplorerShowRelativePath=1
  let g:bufExplorerSplitOutPathName=0


  "" Scratch
  nnoremap <silent> <leader><TAB> :Scratch<CR>


  "" Vroom

  let g:vroom_use_bundle_exec = 0
  let g:vroom_use_spring = 1

  
  " Rainbow Parenstheses ()
  nnoremap <leader>p :RainbowParenthesesToggle<CR>


  " au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces

  "" Switch.vim
  nnoremap - :Switch<CR>


" LANGUAGES

  "" Ruby
  let ruby_operators = 1
  let ruby_no_expensive = 1
  let ruby_minlines = 100

  let g:syntastic_enable_signs=0
  let g:syntastic_auto_loc_list=1

  autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
 
  "" Convert hashes to 1.9 syntax
  nmap <leader>h :%s/:\([^=,'"]*\) =>/\1:/gc<CR>


  "" Rails.vim

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
\  "app/jobs/*_job.rb": {
\    "command": "job",
\    "related": "app/models/%s.rb",
\    "affinity": "model",
\    "template": "class %SJob\nend",
\    "test": "spec/jobs/%s_job_spec.rb"
\   },
\   "config/routes.rb": {"command": "routes"},
\  
\  "spec/factories/*.rb": {
\    "command": "factory",
\    "affinity": "collection",
\    "alternate": "app/models/%i.rb",
\    "related": "db/schema.rb#%s",
\    "test": "spec/models/%i_test.rb",
\    "template": "FactoryGirl.define do\n  factory :%i do\n  end\nend",
\    "keywords": "factory sequence"
\  }
\ }

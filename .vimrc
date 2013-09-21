" GENERAL
  set nocompatible

  syntax on
  filetype plugin indent on

  set shell=/bin/sh

  execute pathogen#infect()  
  
  set hidden
  set number
  set nowrap
  set showbreak=+++
  set textwidth=100
  set showmatch
  set errorbells
  set visualbell

  set notildeop
  set modelines=0


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

  nnoremap J <C-d>
  nnoremap K <C-u>

  nnoremap <tab> %
  vnoremap <tab> %


" EDITING

  "" Backspace over everything
  set backspace=indent,eol,start
  

" COPY/PASTE

  set clipboard=unnamed

  " Toggle paste mode
  set pastetoggle=<F3>

  " reselect the text that was just pasted
  nnoremap <leader>v V`]


" SELECTION

  set selectmode=mouse


" AUTOCOMPLETION
  
  set wildmenu
  set wildmode=longest:full,full

  set omnifunc=syntaxcomplete#Complete


" HISTORY

  set undolevels=1000
  set nobackup
  set nowritebackup

  set history=50

  
" MAPPINGS

  "" Leader
  let mapleader = ","

  nmap     <leader>d :bd<CR>  
  nnoremap <leader>a :Ag                                " Project find
  nnoremap <leader>w <C-w>v<C-w>                        " Open a new vertical split and switch over to it
  nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>      " Strip trailing whitespace in buffer 

  "" Other
  inoremap jj <ESC>


" GUI

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

  "" Start in fullscreen by default
  set fu


" CTAGS

  map  <Leader>rt :!ctags * `bundle show --paths`
  nmap <leader>t <C-]>
  nmap <leader>r <C-t>


" PLUGINS

  "" CtrpP
  let g:ctrlp_map = 'P'
  let g:ctrlp_cmd = 'CtrlP'

  "" Buffer Explorer
  let g:bufExplorerShowRelativePath=1
  let g:bufExplorerSplitOutPathName=0

  "" Scratch
  nnoremap <silent> <leader><TAB> :Scratch<CR>


" LANGUAGES

  "" Ruby
  let ruby_operators = 1

  "" Rails.vim custom projections

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
\  "app/jobs/*_job.rb": {
\    "command": "job",
\    "related": "app/models/%s.rb",
\    "affinity": "model",
\    "template": "class %SJob\nend",
\    "test": "spec/jobs/%s_job_spec.rb"
\   },
\   "config/routes.rb": {"command": "routes"}
\ }

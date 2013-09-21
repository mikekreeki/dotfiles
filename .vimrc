set nocompatible
colorscheme railscasts
execute pathogen#infect()

syntax on
filetype plugin indent on

set omnifunc=syntaxcomplete#Complete

set hidden

set number
set nowrap
set showbreak=+++
set textwidth=100
set showmatch
set errorbells
set visualbell

set wildmenu
set wildmode=longest:full,full

set hlsearch
set smartcase
set gdefault
set ignorecase
set incsearch
set scs
set showmatch

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2

set notildeop

set undolevels=1000
set nobackup
set nowritebackup
set backspace=indent,eol,start

set selectmode=mouse
" set cmdheight=2

set history=50
set showcmd

set laststatus=2
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*

set shell=/bin/sh
set guifont=Monaco:h12

let mapleader = ","
set clipboard=unnamed

highlight Cursor guifg=white guibg=steelblue
set guicursor+=a:blinkon0
set guicursor+=i:ver10

au InsertLeave * hi Cursor guifg=white guibg=steelblue
au InsertEnter * hi Cursor guibg=grey

nnoremap J <C-d>
nnoremap K <C-u>

nmap <leader>d :bd<CR>

set pastetoggle=<F3>

let g:ctrlp_map = 'P'
let g:ctrlp_cmd = 'CtrlP'

let g:bufExplorerShowRelativePath=1
let g:bufExplorerSplitOutPathName=0

let ruby_operators = 1

set shortmess+=I

set guioptions-=r 
set guioptions-=L 

map <Leader>rt :!ctags --exclude=.git --exclude=log -R * `bundle show --paths`
nmap <leader>t <C-]>
nmap <leader>r <C-t>

noremap <leader>h :set hlsearch! hlsearch?<CR>

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

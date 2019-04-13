set fenc=utf-8

set nobackup

set noswapfile

set autoread

set hidden

set hidden

set showcmd

set number

set cursorline

set virtualedit=onemore

set smartindent

set showmatch

set laststatus=2

set wildmode=list:longest

nnoremap j gj
nnoremap k gk

syntax enable


set expandtab

set tabstop=2

set shiftwidth=2


set ignorecase

set smartcase

set incsearch

set wrapscan

set hlsearch

nmap <Esc><Esc> :nohlsearch<CR><Esc>


"dein Scripts-----------------------------

if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=/home/k-horii/_vimrc/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/k-horii/_vimrc/dein')
  call dein#begin('/home/k-horii/_vimrc/dein')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

"End dein Scripts-------------------------


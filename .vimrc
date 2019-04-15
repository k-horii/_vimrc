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

let s:dein_dir = expand('~/_vimrc/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# 'dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir    = expand('~/_vimrc/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml,       {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


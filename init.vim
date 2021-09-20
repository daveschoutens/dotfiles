call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'guns/vim-sexp',    {'for': 'clojure'}
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': 'clojure'}
Plug 'liquidz/vim-iced', {'for': 'clojure'}
Plug 'kovisoft/paredit', {'for': 'clojure'}
Plug 'dense-analysis/ale'

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

Plug 'haishanh/night-owl.vim'
if (has("termguicolors"))
  set termguicolors
endif

call plug#end()

let g:iced_enable_default_key_mappings = v:true
let g:ale_linters = {'clojure': ['clj-kondo']}

syntax enable
colorscheme night-owl

syntax on
filetype plugin indent on

" https://stevelosh.com/blog/2010/09/coming-home-to-vim/
set nocompatible
set modelines=0

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = " "

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set nowrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=120

" When viewing wrapped, normalize up and down to work visually
nnoremap j gj
nnoremap k gk

" Avoid accidental invocation of 'help' when hitting <F1> by mistake
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Ergonomics
nnoremap ; :
inoremap jj <ESC>

" Navigation
nnoremap <c-p> :Files<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fw :Windows<CR>

" Clojure-specific stuff
let maplocalleader = ","


set nocompatible

filetype off                   " required!

" Vundle -- the hawtness
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" require Vundle itself (duh)
Bundle 'gmarik/vundle'

" git support within vim
Bundle 'tpope/vim-fugitive'

" delimeter and symbol 'surrounding' tools
Bundle 'tpope/vim-surround'

" advanced repeat support for '.'; recommended for use with vim-surround
Bundle 'tpope/vim-repeat'

" pairs of mappings to do/undo certain things, such as moving between buffers
Bundle 'tpope/vim-unimpaired'

" file browser
Bundle 'scrooloose/nerdtree'

" commenting utility
Bundle 'scrooloose/nerdcommenter'

" something about syntax error detection
Bundle 'scrooloose/syntastic'

" ridiculously awesome fuzzy file lookup
Bundle 'kien/ctrlp.vim'

" very cool cursor movement helper
Bundle 'Lokaltog/vim-easymotion'

" ZenCoding, but better (can go up AND down DOM tree)
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" tab-completion based on current context
Bundle 'ervandew/supertab'

" formatting for js
Bundle 'pangloss/vim-javascript'

" more js syntax options
Bundle 'maksimr/vim-jsbeautify'

" 'zoom' the current window and restore
Bundle 'ZoomWin'

" colorscheme
Bundle 'molokai'

filetype plugin indent on     " required!

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..



"""""""""""""""""""""""""""""""""""
" MY REAL CUSTOMIZATIONS START HERE

:colorscheme molokai

set autowrite

" allow switching buffers without saving
set hidden
let mapleader = ","
set showcmd

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=120
set smarttab
set expandtab
set smartindent

" TODO investigate these... no idea what they do
set ruler
set relativenumber
set ttyfast
set autoread
set more
set cursorline!

" Visualize tabs, trailing spaces, funny characters
set list
set listchars=nbsp:¬,tab:»·,trail:·

" Set a number of lines to the cursor for scrolling vertically
set scrolloff=7

" search stuff
set hlsearch
set incsearch
set magic

" show matching brackets when cursor is over them
set showmatch
set matchtime=2

" TODO wtf does this do?
set laststatus=2

" persistent undo settings -- awesome!
if has("persistent_undo")
	set undodir=~/.vim/undodir
	set undofile
endif

" return to last edit position when opening files (awesome!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" remap VIM 0 (???) to first non-blank character
map 0 ^

" Breaking lines with \[enter] without having to go to insert mode (myself).
nmap <leader><cr> i<cr><Esc>

" Will allow you to use :w!! to write to a file using sudo if you forgot to sudo
" vim file (it will prompt for sudo password when writing)
" http://stackoverflow.com/questions/95072/what-are-your-favorite-vim-tricks/96492#96492
cmap w!! %!sudo tee > /dev/null %

" Reload changes to .vimrc automatically
autocmd BufWritePost  ~/.vimrc source ~/.vimrc



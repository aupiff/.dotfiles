"breaks compatibility with vi
set nocompatible

"to prevent security exploits
set modelines=0

"tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"general settings
syntax on
set nu
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

" I don't really use this, but I should see if it would be good
" let mapleader = ","

"searching and moving settings
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1

"making j & k behave rationally
nnoremap j gj
nnoremap k gk

nnoremap ; :
au FocusLost * :wa
inoremap jk <ESC>
colors desert
set t_Co=256

set autoindent     " always set autoindenting on
set smartindent
set cindent

"stop mutt from indenting each paragraph
au FileType mail set noautoindent
au FileType mail set nosmartindent
au FileType mail set nocindent
au FileType mail set indentexpr=
au FileType mail filetype indent off

"window navigation
map <C-H> <C-W><Left>
map <C-L> <C-W><Right>
map <C-J> <C-W><Down>
map <C-K> <C-W><Up>

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

match ErrorMsg '\s\+$'

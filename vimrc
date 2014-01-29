"breaks compatibility with vi
set nocompatible

"to prevent security exploits
set modelines=0

"tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Set the proper tab / whitespace handling for a given programming language
if has("autocmd")
  " enable file type search
  filetype plugin on
  " use filetype indent
  filetype indent on
    " Consistent with the Linux Kernel Coding Style Guidelines
    autocmd FileType c,cpp,cl set noexpandtab tabstop=8 shiftwidth=8 textwidth=78
    autocmd FileType css,sass,html  set noexpandtab tabstop=8 shiftwidth=8 textwidth=78
    autocmd FileType python,lua set expandtab tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
endif

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
colorscheme solarized
set background=dark
set t_Co=256

set autoindent     " always set autoindenting on
set smartindent
set cindent

"stop mutt from indenting each paragraph
au FileType mail set noautoindent
au FileType mail set nosmartindent
au FileType mail set nocindent
au FileType mail set indentexpr=
"au FileType mail filetype indent off

"window navigation
map <C-H> <C-W><Left>
map <C-L> <C-W><Right>
map <C-J> <C-W><Down>
map <C-K> <C-W><Up>

"spacebar in insert mode inserts a single character
:nmap <Space> i_<Esc>r

set listchars=eol:↓,tab:→\ ,trail:↤,extends:>,precedes:<
set list

execute pathogen#infect()

"to disable folding which is default with plasticboy/vim-markdown
let g:vim_markdown_folding_disabled=1

"use with syntastic
"
"haskell
let g:syntastic_haskell_checkers = ['hdevtools', 'hlint']
let g:hdevtools_options = '-g -Wall -g-isrc'

"python
let g:syntastic_python_checkers=['pylint']
"every module-level variable is interpreted as a constant for some reason
"the line below just make pylint not yell at me if a normal variables isn't
"in all caps like a 'constant' ought to be
let g:syntastic_python_checker_args = "--disable-msg=C0103"

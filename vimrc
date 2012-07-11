set nocompatible
set bs=2
set encoding=utf-8
set laststatus=2
set modelines=0
set nonumber
set norelativenumber
set ruler
set scrolloff=4
set showcmd
set showmode

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Syntax highlighting
syntax enable
colorscheme default

" Code folding
set foldenable
set foldlevel=1
set foldlevelstart=99
set foldmethod=indent
set foldnestmax=20

" Indentation
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Back up, temporary, and undo files
set backup
set backupdir=~/.vim/backup//
set directory=~/.vim/tmp//
set undodir=~/.vim/undo//
set undofile

" Invisible characters
set list
set listchars=tab:>>,trail:-
highlight SpecialKey cterm=NONE ctermfg=red

" Remove trailing whitespace on save
autocmd BufWritePre *.{au3,css,html,js,json,py} :%s/\s\+$//e

set nocompatible

set bs=2
set encoding=utf-8
set laststatus=2
set modelines=0
set nojoinspaces
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
set background=dark
colorscheme default

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

" Wrap Git commit messages to 72 characters
autocmd FileType gitcommit set textwidth=72

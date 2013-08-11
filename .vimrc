set nocompatible
set encoding=utf-8
set ffs=unix,dos,mac

" Tabular information
" I mostly use 4 spaces
au BufRead,BufNewFile *.py  set ai sw=4 sts=4 et tw=72
au BufRead,BufNewFile *.js  set ai sw=4 sts=4 et tw=72
au BufRead,BufNewFile *.php  set ai sw=4 sts=4 et tw=72
au BufRead,BufNewFile *.html set ai sw=4 sts=4 et tw=72
au BufRead,BufNewFile *.json set ai sw=4 sts=4 et tw=72
au BufNewFile *.py,*.js,*.php,*.html,*.json set fileformat=unix
au! BufRead,BufNewFile *.json setfiletype json
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Pathogen
call pathogen#infect()
call pathogen#helptags()

" Status line
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on

" Mouse support
syntax on
set mouse=a
set mousehide

" Searching and Patterns
set hlsearch                " Highlight matches to the search
set showmatch
set ignorecase              " Search is case insensitive
set smartcase               " Search case sensitive if caps on
set incsearch               " Show best match so far

" Display
set lazyredraw              " Don't repaint when scripts are running
set ruler                   " Line numbers and column the cursor is on
set number                  " Show line numbering
set numberwidth=1           " Use 1 col + 1 space for numbers
set autoindent
set history=1000
set cursorline

set noerrorbells                " No beeps
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files

" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Theme
colorscheme Tomorrow-Night

" Markdown
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

command Cp CtrlP
command W Hupload

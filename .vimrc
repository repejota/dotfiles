" Use vim improved by default and do not try to be backwards compatible.
set nocompatible

" Use utf-8 by default.
" Also prefered file format is unix with fallbacks to mac and dos.
set encoding=utf-8
set ffs=unix,mac,dos

" Time out on key codes but not mappings.
" This makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

" Tabular information : 4 spaces
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Better completion
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview

" Cursorline
" Only show cursorline in the current window and in normal mode.
augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END

"
" File types
"
" Don't detect file type
filetype off
" *.md, *.markdown
augroup markdown
    au!
    au BufNewFile,BufRead *.md setlocal filetype=ghmarkdown
    au BufNewFile,BufRead *.markdown setlocal filetype=ghmarkdown
augroup END
" *.py
augroup python
    au BufRead,BufNewFile *.py  set ai sw=4 sts=4 et tw=72
    au BufNewFile *.py set fileformat=unix
augroup END
" *.js
augroup javascript
    au BufRead,BufNewFile *.js  set ai sw=4 sts=4 et tw=72
    au BufNewFile *.js set fileformat=unix
augroup END
" *.php
augroup php
    au BufRead,BufNewFile *.php  set ai sw=4 sts=4 et tw=72
    au BufNewFile *.php set fileformat=unix
augroup END
" *.html
augroup html
    au BufRead,BufNewFile *.html set ai sw=4 sts=4 et tw=72
    au BufNewFile *.html set fileformat=unix
augroup END
" *.json
augroup json
    au! BufRead,BufNewFile *.json setfiletype json
    au BufRead,BufNewFile *.json set ai sw=4 sts=4 et tw=72
    au BufNewFile *.json set fileformat=unix
augroup END

"
" Vundle
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"
" Available Vundles
"
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'ervandew/supertab'
Bundle 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

"
" Enable file indentation
"
filetype plugin indent on

"
" Syntax on
"
syntax on
let g:airline_theme = 'tomorrow'
let g:airline_powerline_fonts = 1
let g:promptline_preset = 'full'
let g:promptline_powerline_symbols = 1
" let g:Powerline_symbols = 'unicode'
colorscheme Tomorrow-Night

"
" Mouse support
"
set mouse=a
set mousehide

"
" Searching and Patterns
"
set showmatch
set hlsearch                    " Highlight matches to the search
set ignorecase                  " Search is case insensitive
set smartcase                   " Search case sensitive if caps on
set incsearch                   " Show best match so far
" nnoremap <space> :noh<return>   " Press <space> to clear highlighted results.

"
" Display
"
set autoindent
set history=1000
set lazyredraw                  " Don't repaint when scripts are running
set ruler                       " Line numbers and column the cursor is on
set number                      " Show line numbering
set numberwidth=1               " Use 1 col + 1 space for numbers
set cursorline                  " Highlight the current line
set showbreak=↝\ \ \            " Show ↝ if line wraps
set vb t_vb=                    " No flash bell
set noerrorbells                " No beeps
set backspace=indent,eol,start
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set laststatus=2                " Always show status bar
set fillchars+=stl:\ ,stlnc:\

"
" Remove trailing whitespaces at save
"
autocmd BufWritePre * :%s/\s\+$//e

"
" Ruler at 78, 120 and 999 columns
"
let &colorcolumn="80,".join(range(120,999),",")

"
" Make sure Vim returns to the same line when you reopen a file.
"
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

"
" Leader mapping
"
let mapleader = ","
" ,p calls ControlP plugin
:map ,p :CtrlP<cr>
" ,n toggles line numbers
nnoremap <leader>n :setlocal number!<cr>
" ,i toggles invisible characters
nnoremap <leader>i :set list!<cr>
" ,tn go to next tab
nnoremap <leader>tn :tabnext<cr>
" ,tp go to previous tab
nnoremap <leader>tp :tabprevious<cr>
" ,tt create new tab
nnoremap <leader>tt :tabnew!<cr>
" ,tw close tab
nnoremap <leader>tw :tabclose!<cr>

" Folding
vmap <space> zf
nmap <space> za


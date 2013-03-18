" Pathogen plugins
call pathogen#infect()
call pathogen#helptags()

set encoding=utf-8
" Default file types
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

let python_highlight_all=1
syntax on
colorscheme badwolf
let g:solarized_termcolors=256
set t_Co=256
set bg=dark

" Bad whitespace
highlight BadWhitespace ctermbg=red guibg=red
" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

filetype plugin on
set iskeyword+=.

""" Settings
set nocompatible						" Don't be compatible with vi

"""" Movement
" work more logically with wrapped lines
noremap j gj
noremap k gk

"""" Searching and Patterns
set ignorecase							" search is case insensitive
set smartcase							" search case sensitive if caps on
set incsearch							" show best match so far
set hlsearch							" Highlight matches to the search

"""" Display
set lazyredraw							" Don't repaint when scripts are
										" running
set scrolloff=3							" Keep 3 lines below and above the
										" cursor
set ruler								" line numbers and column the
										" cursor is on
set number								" Show line numbering
set numberwidth=1						" Use 1 col + 1 space for numbers
set ttyfast

"""" Messages, Info, Status
set shortmess+=a						" Use [+] [RO] [w] for modified,
										" read-only, modified
set showcmd								" Display what command is waiting for
										" an operator
set laststatus=2						" Always show statusline, even if only
										" 1 window
set report=0							" Notify me whenever any lines have
										" changed
set confirm								" Y-N-C prompt if closing with unsaved
										" changes
set vb t_vb=							" Disable visual bell!  I hate that
										" flashing.
set statusline=%<%f%m%r%y%=%b\ 0x%B\ \ %l,%c%V\ %P
set laststatus=2						" always a status line


"""" Editing
set backspace=2							" Backspace over anything! (Super
										" backspace!)
set matchtime=2							" For .2 seconds
set formatoptions-=tc					" I can format for myself, thank you
										" very much
set nosmartindent
set autoindent
set cindent
set tabstop=4							" Tab stop of 4
set shiftwidth=4						" sw 4 spaces (used on auto indent)
set softtabstop=4						" 4 spaces as a tab for bs/del
set matchpairs+=<:>						" specially for html
set showmatch							" Briefly jump to the previous matching
										" parent
set modeline


"""" Coding
set history=100							" 100 Lines of history
set showfulltag							" Show more information while completing
										" tags
filetype plugin indent on				" Let filetype plugins indent for me

""""" Folding
set foldmethod=syntax					" By default, use syntax to determine
										" folds
set foldlevelstart=99					" All folds open by default

"""" Command Line
set wildmenu							" Autocomplete features in the status
										" bar
set wildmode=longest,list
set wildignore=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~


"""" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

"""" Ruler on 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"""" Enable mouse support
"""" set mouse=a

""" Enable crontrolp
""" set runtimepath^=~/.vim/bundle/ctrlp.vim

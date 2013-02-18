" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make tab completion for files/buffers act like bash
set wildmode=list:longest
set wildmenu

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set ruler		  " show the cursor position all the time
set showcmd		" display incomplete commands

" Switch syntax highlighting on
syntax enable

" Switch on highlighting the last used search pattern.
set hlsearch   " highlight search
set hls
set incsearch  " incremental search

" Allow switching of buffers without saving
set hidden

filetype plugin indent on

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set laststatus=2    " alsway show the status bar
set showmatch
set visualbell      " no beeping
set number          " show line numbers
set numberwidth=4

" Get rid of my bad habits
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>

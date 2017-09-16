" Do incremental searching
set incsearch       
" Allow backspacing over everything in insert mode
set backspace=indent,eol,start
set ruler   
" Set indentation '<' '>' equals to 4 spaces
set shiftwidth=4
set expandtab
set tabstop=4
" always set autoindenting on
set autoindent 
" Indent round shiftwidth 
set shiftround
set relativenumber
set number
" Show keystrokes on the status bar
set showcmd
set wrap
" Highlight matched parenthesis after typed it
set showmatch
" 'showmatch' after 0.1s
set matchtime=1
" Always display status bar
set laststatus=2
" Keep a backup file (restore to previous version)
set backup
" Set backupdir
set backupdir=$HOME/.vim/backup
" Keep an undo file (undo changes after closing)
set undofile
" Set undodir
set undodir=$HOME/.vim/undo
" Search in vimwiki and its subfolders
set path+=~/vimwiki/**
" Search down into subfolders
" set path+=**
" Display all matching files when we tab complete
set wildmenu
" Set zsh in interactive mode
" set shell=zsh\ -i
" Keep the cursor centered
set scrolloff=9999 
" Display a column indicating fold
set foldcolumn=1 
" Update status bar without delay while switching mode
if !has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
set complete+=k

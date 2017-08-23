" do incremental searching
set incsearch       
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set ruler   
" Set indentation '<' '>' equals to 4 spaces
set shiftwidth=4
set expandtab
set tabstop=4
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
" keep a backup file (restore to previous version)
set backup
" set backupdir
set backupdir=$HOME/.vim/backup
" keep an undo file (undo changes after closing)
set undofile
" set undodir
set undodir=$HOME/.vim/undo


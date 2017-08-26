set nocompatible
filetype off                  " required
set noswapfile
" ===========  Vundle ============

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' 
Plugin 'vimwiki/vimwiki'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-latex/vim-latex'
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
" 插件列表结束
call vundle#end()            " required
filetype plugin on



" Only do this part when compiled with support for autocommands.
" if has("au")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
"  filetype plugin indent on

  " Put these in an au group, so that we can delete them easily.
augroup vimrcEx
"  au!

  " For all text files set 'textwidth' to 78 characters.
 au FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
 au BufReadPost *
            \ if line("'\"") >= 1 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

  augroup END


set autoindent        " always set autoindenting on

filetype plugin on
syntax on


" set status line
set laststatus=2
" enable powerline-fonts
set encoding=utf8

set guifont=Ubuntu\ Mono\ for\ Powerline\ 14

" 設定背景顏色、配色
set background=dark
set t_Co=256
" let g:molokai_original = 1
" let g:rehash256 = 1
" colorscheme molokai-transparent
" autocmd ColorScheme janah highlight Normal ctermbg=235
colorscheme janah

" +++++++++++++++++++++ EDITS INFOS ++++++++++++++++++++++++

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax enable
  syntax on
  set hlsearch
endif

" +++++++++++++++++++++++ Fold ++++++++++++++++++++++++

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable


so $HOME/.vim/startup/plugins.vim
so $HOME/.vim/startup/mappings.vim
so $HOME/.vim/startup/settings.vim
so $HOME/.vim/startup/autocmd.vim
so $HOME/.vim/startup/functions.vim

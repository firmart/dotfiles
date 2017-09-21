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
" Plugin 'ervandew/supertab'
Plugin 'johngrib/vim-game-code-break'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-rfc'
Plugin 'vim-scripts/rfc-syntax'
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'scrooloose/syntastic'
" 插件列表结束
call vundle#end()            " required
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
colorscheme janah


so $HOME/.vim/startup/plugins.vim
so $HOME/.vim/startup/mappings.vim
so $HOME/.vim/startup/settings.vim
so $HOME/.vim/startup/autocmd.vim
so $HOME/.vim/startup/functions.vim

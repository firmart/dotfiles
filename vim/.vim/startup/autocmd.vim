" Vimscript file settings {{{1
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" C files settings {{{1
augroup filetype_c
    autocmd!
    " one-line comment 
    autocmd FileType c nnoremap <buffer> <localleader>cc I// <esc>
    " uncomment one-line comment
    autocmd FileType c nnoremap <buffer> <localleader>cu ^2x
    autocmd FileType c nnoremap <buffer> <localleader>; :<c-u>execute "normal! mqA;\e`q"<cr>
    " operator pending : inside next parenthesis
    " TODO: works oddly for nested parenthesis
    autocmd FileType c onoremap <buffer> inb :<c-u>execute "normal! /(\rvi("<cr>
    " operator pending : inside precedent parenthesis
    " TODO: works oddly for nested parenthesis
    autocmd FileType c onoremap <buffer> inp :<c-u>execute "normal! ?(\rvi("<cr>
augroup END

" Vim-wiki settings {{{1
augroup filetype_vimwiki
    autocmd!
    autocmd FileType vimwiki exec("setlocal dictionary+=".$HOME."/.vim/dictionaries/tex")
    " Bold selected text
    autocmd FileType vimwiki vnoremap <buffer> <localleader>* <esc>`>a*<esc>`<i*<esc>
    autocmd FileType vimwiki nnoremap <buffer> <localleader>* lbi*<esc>ea*<esc>
    " Highlight selected text 
    autocmd FileType vimwiki vnoremap <buffer> <localleader>` <esc>`>a`<esc>`<i`<esc>
    autocmd FileType vimwiki nnoremap <buffer> <localleader>` lBi`<esc>Ea`<esc>
    " Open an item in the next level
    " autocmd FileType vimwiki nnoremap <buffer><localleader>on o<
    autocmd FileType vimwiki nnoremap <buffer> <localleader>g :<c-u>execute "normal!" . '/\v^\* \*[a-z\(\)\- ]+\*' . "\r:nohlsearch\r"<cr>
    autocmd FileType vimwiki nnoremap <buffer> <localleader>G :<c-u>execute "normal!" . '?\v^\* \*[a-z\(\)\- ]+\*' . "\r:nohlsearch\r"<cr>
    autocmd FileType vimwiki nnoremap <buffer> <localleader>t :<c-u>execute "normal!" . '/\v^\= [A-Z] \=$' . "\r:nohlsearch\r"<cr>
    autocmd FileType vimwiki nnoremap <buffer> <localleader>T :<c-u>execute "normal!" . '?\v^\= [A-Z] \=$' . "\r:nohlsearch\r"<cr>
augroup END

" Python settings {{{1
augroup filetype_python
    autocmd!
   "  autocmd BufNewFile,BufRead *.py set tabstop=4
   "  \ set softtabstop=4
   "  \ set shiftwidth=4
   "  \ set textwidth=79
   "  \ set expandtab
   "  \ set autoindent
   "  \ set fileformat=unix
augroup END
" }}}
" Tex files settings {{{1
augroup filetype_tex
  autocmd!
  " autocmd TextChanged,TextChangedI *.tex :w 
  autocmd FileType tex vnoremap <buffer> <localleader>$ <esc>`>a*<esc>`<i$<esc>
  autocmd FileType vimwiki nnoremap <buffer> <localleader>$ lbi*<esc>ea$<esc>
augroup END

" Spell checker settings {{{1
augroup spell_checker
    autocmd!
    " Activate spelling checker, disable cap checking 
    autocmd FileType vimwiki,tex,latex,md,txt setl spell spelllang=en,fr,cjk spellcapcheck=
    " Go back to last misspelled word and pick first suggestion.
    autocmd FileType vimwiki,tex,latex,md,txt inoremap <buffer> <C-L> <C-G>u<Esc>[s1z=``a<C-G>u
    " Select last misspelled word (typing will edit).
    autocmd FileType vimwiki,tex,latex,md,txt inoremap <buffer> <C-K> <Esc>[sve<C-G>
    autocmd FileType vimwiki,tex,latex,md,txt snoremap <buffer> <C-K> <Esc>b[sviw<C-G>           
augroup END

" Last position settings {{{1
augroup last_position
    au!
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
    au BufReadPost *
            \ if line("'\"") >= 1 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
augroup END

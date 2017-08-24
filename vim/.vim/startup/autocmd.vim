" Vimscript file settings {{{
aug filetype_vim
    autocmd!
    autocmd FileType vim setloca foldmethod=marker
aug END
" }}}

" C files settings {{{
aug filetype_c
    autocmd!
    autocmd FileType c nnoremap <buffer> <localleader>cc I// <esc>
    autocmd FileType c nnoremap <buffer> <localleader>cu ^2x
    autocmd FileType c onoremap <buffer> in( :<c-u>execute "normal! /(\rvi("<cr>
aug END
" }}}

" Vim-wiki settings {{{
aug filetype_vimwiki
    autocmd!
    " Bold selected text
    autocmd FileType vimwiki vnoremap <buffer> <localleader>* <esc>`>a*<esc>`<i*<esc>
    autocmd FileType vimwiki nnoremap <buffer> <localleader>g :<c-u>execute "normal!" . '/\v^\* \*[a-z\(\)\- ]+\*' . "\r:nohlsearch\r"<cr>
    autocmd FileType vimwiki nnoremap <buffer> <localleader>G :<c-u>execute "normal!" . '?\v^\* \*[a-z\(\)\- ]+\*' . "\r:nohlsearch\r"<cr>
    autocmd FileType vimwiki nnoremap <buffer> <localleader>t :<c-u>execute "normal!" . '/\v^\= [A-Z] \=$' . "\r:nohlsearch\r"<cr>
    autocmd FileType vimwiki nnoremap <buffer> <localleader>T :<c-u>execute "normal!" . '?\v^\= [A-Z] \=$' . "\r:nohlsearch\r"<cr>
aug END
" }}}

" Tex files settings {{{
aug filetype_tex
  autocmd!
  autocmd TextChanged,TextChangedI *.tex :w 
aug END
" }}}

" Spell checker settings {{{
aug spell_checker
    autocmd!
    " Activate spelling checker, disable cap checking 
    autocmd FileType vimwiki,tex,latex,md,txt setlocal spell spelllang=en,fr,cjk spellcapcheck=
    " Go back to last misspelled word and pick first suggestion.
    autocmd FileType vimwiki,tex,latex,md,txt inoremap <buffer> <C-L> <C-G>u<Esc>[s1z=``a<C-G>u
    " Select last misspelled word (typing will edit).
    autocmd FileType vimwiki,tex,latex,md,txt nnoremap <buffer> <C-K> <Esc>[sve<C-G>
    autocmd FileType vimwiki,tex,latex,md,txt inoremap <buffer> <C-K> <Esc>[sve<C-G>
    autocmd FileType vimwiki,tex,latex,md,txt snoremap <buffer> <C-K> <Esc>b[sviw<C-G>           
aug END
" }}}

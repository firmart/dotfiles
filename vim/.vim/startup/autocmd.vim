" Vimscript file settings {{{
aug filetype_vim
    au!
    au FileType vim setlocal foldmethod=marker
aug END
" }}}

" C files settings {{{
aug filetype_c
    au!
    au FileType c nnoremap <buffer> <localleader>cc I// <esc>
    au FileType c nnoremap <buffer> <localleader>cu ^2x
    au FileType c onoremap <buffer> in( :<c-u>execute "normal! /(\rvi("<cr>
aug END
" }}}

" Vim-wiki settings {{{
aug filetype_vimwiki
    au!
    " Bold selected text
    au FileType vimwiki vnoremap <buffer> <localleader>* <esc>`>a*<esc>`<i*<esc>
    au FileType vimwiki nnoremap <buffer> <localleader>g :<c-u>execute "normal!" . '/\v^\* \*[a-z\(\)\- ]+\*' . "\r:nohlsearch\r"<cr>
    au FileType vimwiki nnoremap <buffer> <localleader>G :<c-u>execute "normal!" . '?\v^\* \*[a-z\(\)\- ]+\*' . "\r:nohlsearch\r"<cr>
    au FileType vimwiki nnoremap <buffer> <localleader>t :<c-u>execute "normal!" . '/\v^\= [A-Z] \=$' . "\r:nohlsearch\r"<cr>
    au FileType vimwiki nnoremap <buffer> <localleader>T :<c-u>execute "normal!" . '?\v^\= [A-Z] \=$' . "\r:nohlsearch\r"<cr>
aug END
" }}}

" Tex files settings {{{
aug filetype_tex
  au!
  au TextChanged,TextChangedI *.tex :w 
aug END
" }}}

" Spell checker settings {{{
aug spell_checker
    au!
    " Activate spelling checker, disable cap checking 
    au FileType vimwiki,tex,latex,md,txt setl spell spelllang=en,fr,cjk spellcapcheck=
    " Go back to last misspelled word and pick first suggestion.
    au FileType vimwiki,tex,latex,md,txt inoremap <buffer> <C-L> <C-G>u<Esc>[s1z=``a<C-G>u
    " Select last misspelled word (typing will edit).
    au FileType vimwiki,tex,latex,md,txt nnoremap <buffer> <C-K> <Esc>[sve<C-G>
    au FileType vimwiki,tex,latex,md,txt inoremap <buffer> <C-K> <Esc>[sve<C-G>
    au FileType vimwiki,tex,latex,md,txt snoremap <buffer> <C-K> <Esc>b[sviw<C-G>           
aug END
" }}}

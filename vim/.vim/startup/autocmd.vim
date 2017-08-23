aug c_vimrc
    au!
    au FileType c nnoremap <buffer> <localleader>cc I// <esc>
    au FileType c nnoremap <buffer> <localleader>cu ^2x
    au FileType c onoremap <buffer> in( :<c-u>execute "normal! /(\rvi("<cr>
aug END

aug vimwiki_vimrc
    au!
    " Bold selected text
    au FileType vimwiki vnoremap <buffer> <localleader>* <esc>`>a*<esc>`<i*<esc>
    au FileType vimwiki nnoremap <buffer> <localleader>g :<c-u>execute "normal!" . '/\v^\* \*[a-z\(\) ]+\*' . "\r:nohlsearch\r"<cr>
    " Activate spelling correction
aug END

aug tex_vimrc
  au!
  au TextChanged,TextChangedI *.tex :w 
aug END

aug spell_checking
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

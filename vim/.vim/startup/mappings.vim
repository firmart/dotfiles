" Leader key settings {{{1
" set leader key to '\'
let mapleader = "\\"
" set local leader key to ';'
let maplocalleader = ";"
" }}}
" move line upward or downward
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP
" switch between buffers
nnoremap <C-N> :bn<CR> 
nnoremap <C-P> :bp<CR>
" Defaults remapping {{{1
" Remap P to pasting above
nnoremap P :put!<cr>
" }}}
" To make sure that c-q is available, add `stty -ixon` in .*shrc
nnoremap <c-q> ZZ
inoremap <c-q> <esc>ZZ
" Edit files mappings {{{1
" 'E'dit 'v'im settings
nnoremap <leader>ev :vsplit $HOME/dotfiles/vim/<cr>
" 'S'ource 'v'imrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" 'E'dit 'en'glish dictionary
nnoremap <leader>een :vsplit $HOME/vimwiki/biblio/langs/English/en-dict.wiki<cr>
" 'E'dit 'fr'ench dictionary
nnoremap <leader>efr :vsplit $HOME/vimwiki/biblio/langs/French/fr-dict.wiki<cr>
" 'E'dit 'la'tin dictionary
nnoremap <leader>ela :vsplit $HOME/vimwiki/biblio/langs/Latin/la-dict.wiki<cr>
" 'E'dit 'm'aths glossary
nnoremap <leader>ema :vsplit $HOME/vimwiki/glossary/maths-glsr.wiki<cr>
" }}}

nnoremap <c-s> :w<CR>
" Wrap the current word with quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
" Wrap the current word with single quote
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
" Wrap the selected text with single quote
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>
" Wrap the current word with grave accent
nnoremap <leader>` viw<esc>a`<esc>bi`<esc>lel
" Use 'jk' to switch from normal mode to insert mode
" inoremap jk <esc>
" Disable escape and arrows keys in insert mode
" inoremap <esc> <nop>
nnoremap <leader>p :set paste<CR>"+p:set nopaste<CR>
" Location list mappings {{{1
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lp :lprevious<CR>
nnoremap <leader>lc :lclose<CR>
" }}}
" Arrow keys mappings {{{
" Map arrow keys in the use of windows navigation in normal mode
nnoremap <Up>    <C-w><up>
nnoremap <Down>  <C-w><down>
nnoremap <Left>  <C-w><left>
nnoremap <Right> <C-w><right>
" Map arrow keys in the use of windows navigation in insert mode.
" This require -- in terminal -- to map arrow keys to them corresponding code (?) which depend the using terminal.
if !has("gui_running")
    inoremap <Up>    <Esc>OA
    inoremap <Down>  <Esc>OB
    inoremap <Left>  <Esc>OD
    inoremap <Right> <Esc>OC
    inoremap <Esc>OA <Esc><C-W><Up>i
    inoremap <Esc>OB <Esc><C-W><Down>i
    inoremap <Esc>OD <Esc><C-W><Left>i
    inoremap <Esc>OC <Esc><C-W><Right>i
else
    inoremap <Up>    <Esc><C-W><Up>i
    inoremap <Down>  <Esc><C-W><Down>i
    inoremap <Left>  <Esc><C-W><Left>i
    inoremap <Right> <Esc><C-W><Right>i
endif
" }}}

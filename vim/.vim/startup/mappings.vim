" set leader key to '\'
let mapleader = "\\"
" set local leader key to ';'
let maplocalleader = ";"
" move line upward or downward
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP
"设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR> 
nnoremap <C-P> :bp<CR>
" Remap P to pasting above
nnoremap P :put!<cr>
" Delete line in insert mode inoremap <c-d> <esc>ddi
" inoremap <c-u> <esc>gUiW
" nnoremap <c-u> gUiW
" To make sure that c-q is available, add `stty -ixon` in .*shrc
nnoremap <c-q> ZZ
inoremap <c-q> <esc>ZZ
" 'E'dit 'v'imrc
nnoremap <leader>ev :vsplit $HOME/dotfiles/vim/<cr>
" 'S'ource 'v'imrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" Wrap the current word with quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
" Wrap the current word with single quote
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
" Wrap the selected text with single quote
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>
" Wrap the current word with grave accent
nnoremap <leader>` viw<esc>a`<esc>bi`<esc>lel
" Use 'jk' to switch from normal mode to insert mode
inoremap jk <esc>
" Disable escape and arrows keys in insert mode
inoremap <esc> <nop>
nnoremap <leader>p :set paste<CR>"+p:set nopaste<CR>

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

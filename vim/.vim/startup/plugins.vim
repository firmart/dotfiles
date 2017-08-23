" ====================== Vim airline ======================

let g:airline_theme="wombat" 
let g:airline_powerline_fonts = 1
"打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
"我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" 关闭状态显示空白符号计数,这个对我用处不大"
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'


" ====================== nerd tree ========================

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nnoremap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1


" ====================== vimwiki ==========================

" maxhi show link without file
let g:vimwiki_list = [{
\ 'path': '~/vimwiki',
\ 'maxhi': 1, 'auto_toc': 1,
\ 'nested_syntaxes' : {'python' : 'python', 'c' : 'c', 'cpp' : 'cpp', 'java' : 'java'}
\ }]

let g:vimwiki_CJK_length = 1


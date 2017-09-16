" Plugin: vim airline {{{1

let g:airline_theme="wombat" 
let g:airline_powerline_fonts = 1
"打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
"我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" 关闭状态显示空白符号计数,这个对我用处不大"
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

" Plugin: Nerd tree {{{1

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

" Plugin: vimwiki {{{1
" maxhi show link without file created
let g:vimwiki_list = [{
\ 'path': '~/vimwiki',
\ 'maxhi': 1, 'auto_toc': 1,
\ 'template_path': '/home/firmart/.vim/bundle/vimwiki/autoload/vimwiki/template',
\ 'template_default' : 'default',
\ 'template_ext' : '.htm',
\ 'nested_syntaxes' : {'python' : 'python', 'c' : 'c', 'cpp' : 'cpp', 'java' : 'java'},
\ 'auto_tags': 1
\ }, { 
\ 'path': '~/proj/git_proj/my_project/PAD/wiki',
\ 'maxhi': 1, 'auto_toc': 1,
\ 'nested_syntaxes' : {'python' : 'python', 'c' : 'c', 'cpp' : 'cpp', 'java' : 'java'},
\ 'auto_tags': 1
\ }]
let g:vimwiki_table_mappings = 0
let g:vimwiki_CJK_length = 1
" SuperTab settings {{{1
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabRetainCompletionType=2
" }}}
" YouCompleteMe {{{1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py' 
"python解释器路径"
let g:ycm_python_binary_path='/usr/bin/python3'
"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2
"补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
"离开插入模式后自动关闭预览窗口"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" }}}


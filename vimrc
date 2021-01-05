set number
set ruler
set autoindent
set cursorline
set tabstop=4
set expandtab
set smartindent
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start



" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on



" NERDTree map
map <C-\> :NERDTreeToggle<CR>
let g:NERDTreeNodeDelimiter = "\u00a0"



" vim-colors-solarized
syntax enable

set background=dark

let g:solarized_termcolors=256
let g:solarized_termtrans=1

colorscheme solarized



" YouCompleteMe
"默认配置文件路径"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'       "配置全局路径
"log"
"let g:ycm_server_keep_logfiles=1
"let g:ycm_sever_log_level='debug'
"打开vim时不再询问是否加载ycm_extra_conf.py配置"
"let g:ycm_confirm_extra_conf=0
"set completeopt=longest,menu
"python解释器路径"
let g:ycm_path_to_python_interpreter= '/usr/bin/python3'
"python 环境
let g:ycm_python_binary_path = '/usr/bin/python3'   
"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2
"补全后自动关机预览窗口"
"let g:ycm_autoclose_preview_window_after_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
let g:ycm_seed_identifiers_with_syntax=1 "补全关键字 
"离开插入模式后自动关闭预览窗口"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"回车即选中当前项"
"inoremap <expr> <CR>       pumvisible() ? '<C-y>' : '\<CR>'     
"上下左右键行为"
"inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
"inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
"inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
"inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'\

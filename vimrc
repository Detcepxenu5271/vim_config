set number
set relativenumber

set wrap

" 状态栏，0 不显示，1 只在多窗口时显示，2 一直显示
" set laststatus=2

" 缩进
set smartindent
set tabstop=4
" 使得缩进大小是 shiftwidth 的倍数
set shiftround
set shiftwidth=4

" 输入括号时，会暂时跳转到匹配的括号
" set showmatch
" set matchtime=5

" 搜索
set hlsearch
set incsearch

" 不创建备份文件和交换文件，理解原理后再设置回来
set nobackup
set noswapfile

" 多窗口下光标移动到其他窗口时自动切换工作目录
set autochdir

" 文件自动检测外部更改
set autoread

" 显示命令
set showcmd

" Colorscheme
syntax on
set encoding=utf-8
" set t_Co=256
colorscheme gruvbox
set background=dark

" 命令行模式
set wildmode=list:longest

"""""""""""""""""""""""""""""""
" Change cursor shape in different modes
" For the Gnome-Terminal (version ≥3.16)
""""""""""""""""""""""""""""""""
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

""""""""""""""""""""""""""""""""
" 按键映射
""""""""""""""""""""""""""""""""
let mapleader="\<space>"
let maplocalleader="\\"

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

inoremap jk <esc>
inoremap <esc> <nop>
inoremap <c-[> <nop>

""""""""""""""""""""""""""""""""
" 插件
""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
call plug#end()

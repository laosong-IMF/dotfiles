set nocompatible

"显示行号
set nu!

"用空格代替tab
set expandtab
"一个tab是4个字符
set tabstop=4
"缩进的字符个数
set shiftwidth=4
"自动缩进
set autoindent

":N    Place case labels N characters from the indent of the switch().
set cinoptions+=:0

"显示隐藏字符
set list
"set listchars=tab:>-,trail:-
set listchars=tab:>-

"set guifont=Consolas:h13:cANSI
set textwidth=78
set formatoptions+=t
set wrap
"set lines=44 columns=125
set colorcolumn=80

set encoding=utf-8
"fileencodings需要注意顺序，前面的字符集应该比后面的字符集大
set fileencodings=ucs-bom,utf-8,chinese,gbk
let $LANG = 'en'  "set message language
set langmenu=en   "set menu's language of gvim. no spaces beside '='

"语法高亮
syntax on

set hlsearch

"自动加载tags文件
"set tags=tags;/

"The default key for <leader> is \
let mapleader = ","
set showcmd

"执行 Vim 缺省提供的 .vimrc 文件的示例，包含了打开语法加亮显示等最常用的功能
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"设置鼠标运行模式为WINDOWS模式
"behave mswin

"缺省不产生备份文件
set nobackup
"no undo file .un~
set noundofile

"color scheme
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
"colorscheme desert
colorscheme molokai

"unmap <C-Y>
"unmap <C-V>

"if exists('$TMUX')
"    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
"    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
"else
"    let &t_SI = "\e[5 q"
"    let &t_EI = "\e[2 q"
"endif
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"


"Put this at the top of your .vimrc to use Vundle.
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
"let NERDTreeWinSize=30
map <F8> :NERDTreeToggle<CR>

Bundle 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_simple_conf_active = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_echo_current_diagnostic = 1
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

Bundle 'tdcdev/ycm_simple_conf'
"Bundle 'rdnetto/YCM-Generator'

"Plugin 'Lokaltog/vim-powerline'
"let g:Powerline_symbols = 'fancy'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
"let g:airline#extensions#tabline#show_tab_nr = 1
"let g:airline#extensions#tabline#formatter = 'default'
"let g:airline#extensions#tabline#buffer_nr_show = 0
"let g:airline#extensions#tabline#fnametruncate = 16
"let g:airline#extensions#tabline#fnamecollapse = 2
"let g:airline#extensions#tabline#buffer_idx_mode = 1

Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

Plugin 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'
cnoreabbrev ag Ack

Bundle 'bronson/vim-trailing-whitespace'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
"Plugin 'taglist.vim'
"Plugin 'cscope.vim'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


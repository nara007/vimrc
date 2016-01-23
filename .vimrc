set nocompatible " be iMproved
filetype on " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"插件
Bundle 'gmarik/vundle'
Bundle 'AutoComplPop'
Bundle 'The-NERD-tree'
Bundle 'Tagbar'
Bundle 'minibufexpl.vim'
Bundle 'molokai'
Bundle 'ZenCoding.vim'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'WebAPI.vim'
Bundle 'Gist.vim'
Bundle 'git@github.com:InfoGeeker/html5.vim.git'
Bundle 'git@github.com:lepture/vim-javascript.git'
Bundle 'lervag/vimtex'
Bundle 'https://github.com/vim-scripts/Latex-Text-Formatter.git'
Bundle 'Chiel92/vim-autoformat'
Bundle 'StanAngeloff/php.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
"Bundle 'vim-Ruby'
Bundle 'radovskyb/vim-rubyformat'
Bundle 'tpope/vim-surround'


filetype plugin indent on " required!
set ignorecase
set showcmd
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  

"vim powerline
"set laststatus=2
"set t_Co=256
"let g:Powerline_symbols='unicode'
"set encoding=utf8
"set nocompatible
"set laststatus=2
"set t_Co=256
"let g:Powerline_symbols = "fancy"


set hlsearch "搜索高亮
set t_Co=256 "颜色主题设置
colorscheme molokai
set mouse=a
set nu "显示行数
set guifont=Monospace\ 18
syn on " 打开语法高亮
"set cursorline  " 突出显示当前行  
"基本设置
set encoding=utf-8
set fileencoding=english
set fileencodings=ucs-bom,utf-8,english
set ambiwidth=double
set ts=4
set sw=4
set wrap "自动换行
set cursorline
"设置无备份
set nobackup
set nowritebackup
"vim配置自动生效
autocmd! bufwritepost _vimrc source %
"语法高亮
syntax enable
"自动缩进
set ai
"智能缩进
set si
" Put at the very end of your .vimrc file.

"设置NERDTree的宽度,默认为30  

let NERDTreeWinSize=6
"NERDTree 显示/收起 Tree控件
map <F2> :NERDTree<CR>  


function! PhpSyntaxOverride()
	hi! def link phpDocTags  phpDefine
	hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
	autocmd!
	autocmd FileType php call PhpSyntaxOverride()
augroup END
" ctrl + s = save file linux
":imap   <C-S>   <ESC>:w<CR>
":map    <C-S>   :w<CR>

"mac save file
"Works in normal mode, must press Esc first"
:map <C-s> :w<kEnter> 
"Works in insert mode, saves and puts back in insert mode"
:imap <C-s> <Esc>:w<kEnter>i 

"nerdtree
:map <F2> :NERDTreeToggle<CR>
"Autoformat 如果文件是php格式，可以输入:set filetype=html 来格式化

"buffer next,buffer previous
:map <C-h> :bp<kEnter>
":imap <C-h> <Esc>:w!<kEnter> :bp<kEnter>i 

:map <C-l> :bn<kEnter>
":imap <C-l> <Esc>:w!<kEnter> :bn<kEnter>i 

:noremap <F3> :Autoformat<CR>
"修改注释插件nerdcommenter的命令前缀'\'为 ','
let g:mapleader = ","

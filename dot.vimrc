"""""""" 更改 vim 自身的特性
set nocompatible
set hidden        "" 隐藏 buffers，而不是关闭他们，很有用
""set nowrap
set backspace=indent,eol,start
set autoindent
set copyindent
set number
"set expandtab 
set tabstop=4
set shiftwidth=4
set shiftround
set showmatch     " 显示匹配的括号，不包括尖括号
set ignorecase    " 搜索时忽略大小写
set smartcase     " 搜索时如果有大写，则大小写敏感
set hlsearch      " 高亮搜索结果
set incsearch

set history=1000  " 记住更多的命令和搜索结果
set undolevels=1000  " 更多的 undo 空间
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell    " 不要 beep
set noerrorbells  " 不要 beep

set encoding=utf-8   " 设置文件编码
set fileencodings=utf-8,ucs-bom,gb2312,default
set fileencoding=utf-8

"setlocal textwidth=90
colorscheme desert


"" 自定义 mapleader，自定义按键的前缀
let mapleader = ","
let g:EasyMotion_leader_key = "\\"

"" 映射：快速编辑和重新加载(source) vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nnoremap ; :

"" 屏蔽掉上下左右方向键
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"" 多窗口间的切换
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"" 消除高亮搜索 
nmap <silent> ,/ :nohlsearch<CR>

" cmap w!! w !sudo tee % > /dev/null   " sudo 权限编辑

"" plugin:pathogen
"" 修改 runtime path，把所有的插件放在 ~/.vim/bundle 目录中
"call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()
call pathogen#infect()


"" 自动检测文件类型并加载相应的设置
filetype plugin indent on
autocmd filetype python set expandtab

"" key binding 
map <F12> :r /home/roamin9/.vim/python_head<CR>ggdd
map <F11> :r /home/roamin9/.vim/html_template<CR>ggdd
map <F10> :!fab -f % -H localhost 
map <F9> :!python %

"" 标签页的操作
"" gt 转到下一个标签页
map gn :tabnew 
map gc :tabclose<CR>

"" VIM打开多个文件时，buff之间简单的切换
"" Ctrl+l---> buff列表中的下一个buff  :bn
"" Ctrl+h---> buff列表中的上一个buff  :bp
"" 上一次的buff文件  :b#
"" 空格键---> 查看buff中的文件
"map <C-l> :bn<CR>
"map <C-h> :bp<CR>
"map <SPACE> :ls<CR>

""利用nomal mode下的映射，通过tab和Shift+tab来做缩进
""从以前的i tab Esc，缩减为tab，减少了Esc病症的几率 ;)
nmap <tab> v>
nmap <s-tab> v<

""nmap <-> :tabnext<CR>
""nmap <=> :tabprevious<CR>

""利用command mode下的映射，让vim的命令行也拥有键绑定
""Emacs风格的键绑定 Orz ...
cmap <C-a> <home>
cmap <C-e> <end>

"" TagBar taglist 
let g:tagbar_left = 0
let g:tagbar_sort = 0
let g:tagbar_width = 30
let g:tagbar_compact = 1
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
""nmap <silent> <F3> :TagbarToggle<CR>
nmap <silent> <F3> :TlistToggle<CR>

"" NERDCommenter comment
"" <mapleader>cc 注释
"" <mapleader>c<space> 切换注释开关

"" Calendar calendar diary
"" <mapleader>cal
"" <mapleader>caL
""let g:calendar_navi = ''
let g:calendar_navi_label = '过去,今天,未来'
let g:calendar_monday = 1

"" autherinfo 自动插入作者信息
let g:vimrc_author='roamin9'
let g:vimrc_email='zhoo.xuan@gmail.com'
let g:vimrc_homepage='http://roamin9.me'
nmap <F4> :AuthorInfoDetect<cr>

"" CommandT
nmap <silent> <leader>t :CommandT<CR>
nmap <silent> <leader>b :CommandTBuffer<CR>
nmap <silent> <leader>p :CommandT 

"" BufExplorer
nmap <space> :BufExplorer<CR>


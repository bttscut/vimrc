set nocompatible

colorscheme desert
"colorscheme torte

"Set mapleader
let mapleader = ","
let g:mapleader = ","

set nu

"显示tab和行尾空白字符
"set list
"set listchars=tab:\| ,trail:~

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

" 自动切换主目录
set autochdir

"禁止生成临时文件
set nobackup
set noswapfile

"搜索忽略大小写
set ic smartcase

"增量搜索
set incsearch " do incremental searching
"高亮搜索结果
set hlsearch
"set showmatch


""""""""""""""""""""""""""""""
" Statusline
""""""""""""""""""""""""""""""f
"Always hide the statusline
set laststatus=2

"Format the statusline
set statusline=\ %F%m%r%h\ %w\ Line:\ %l/%L:%c

" wim swttch
map <C-j> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

"搜索忽略大小写
set ic smartcase

" 快速执行lua
au FileType lua nmap <leader><space> :w<esc>:!lua %<cr>
au FileType python nmap <leader><space> :w<esc>:!python %<cr>
au FileType sh nmap <leader><space> :w<esc>:!sh %<cr>

filetype off
"config vundldde
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
filetype plugin indent on

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

Bundle 'scrooloose/nerdtree'
map <leader>nd :NERDTreeToggle<CR>

Bundle 'minibufexpl.vim'
let g:miniBufExplForceSyntaxEnable=1 
nmap <leader><tab> :bn<CR>
nmap <leader>k :bp<CR>
nmap <leader><leader><leader> :b1<CR>
nmap <leader>2 :b2<CR>
nmap <leader>3 :b3<CR>
nmap <leader>4 :b4<CR>
nmap <leader>5 :b5<CR>
nmap <leader>6 :b6<CR>
nmap <leader>7 :b7<CR>
nmap <leader>8 :b8<CR>
nmap <leader>9 :b9<CR>
nmap <leader>10 :b10<CR>
nmap <leader>11 :b11<CR>
nmap <leader>12 :b12<CR>
nmap <leader>13 :b13<CR>
nmap <leader>14 :b14<CR>
nmap <leader>15 :b15<CR>
nmap <leader>16 :b16<CR>
nmap <leader>17 :b17<CR>
nmap <leader>18 :b18<CR>
nmap <leader>19 :b19<CR>

Bundle 'grep.vim'

Bundle 'a.vim'

" google protobuf syntax
Bundle  'jboyens/vim-protobuf'
augroup filetype
    au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

Bundle 'motemen/git-vim.git'

Bundle 'scrooloose/nerdcommenter'

Bundle 'kien/ctrlp.vim'

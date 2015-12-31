set autoindent
set nocompatible
set hidden
set incsearch
set hlsearch
set number
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set showmatch
set smarttab
set whichwrap=b,s,<,>,[,]
set nowrapscan
set scrolloff=4
set wildmenu
set backspace=indent,eol,start
set history=4096
set ignorecase
set smartcase
set formatoptions+=mM
set backspace=indent,eol,start
set ambiwidth=double
set shortmess+=I
set cmdheight=1
set laststatus=2
set showcmd
set display=lastline
set noswapfile
set ic
set statusline=[%{&fileencoding}][%F]%m%r%=[%l,%v]
set tags+=.git/tags

syntax on

nnoremap j gj
nnoremap k gk
nnoremap <C-c><C-c> :<C-u>nohlsearch<cr><Esc>

inoremap <C-n> <esc>

set t_Co=256

colorscheme gruvbox
set background=dark

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'vim-scripts/AnsiEsc.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'soramugi/auto-ctags.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------
"
nmap <silent> <C-t> :NERDTreeToggle<CR>
" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1

" tagsファイル生成
let g:auto_ctags = 1
let g:auto_ctags_directory_list = ['.git']

""""""""""""""""""""""""""""""
" 最後のカーソル位置を復元する
""""""""""""""""""""""""""""""
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
"""""""""""""""""""""""""""""""


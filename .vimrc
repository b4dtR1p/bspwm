filetype plugin on
filetype indent on

" Some options
set showmatch
set wildmenu
set number
set ttyfast
set cmdheight=2
set backspace=eol,start,indent
set ignorecase
set incsearch
set magic
set background=dark
set t_Co=256
set shell=/bin/zsh
set mouse=a

" Don't save nothing
set noswapfile
set nobackup
set nowb

" Encoding
set termencoding=utf-8
set encoding=utf-8
scriptencoding utf-8
set ffs=unix

set noerrorbells
map <C-n> :NERDTreeToggle<CR>

" Vundle Shit here
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Bundle 'itchyny/lightline.vim'
call vundle#end()

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"***":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

syntax enable
colorscheme jellybeans

" Some indent commands
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai 
set si 
set wrap 
set laststatus=2



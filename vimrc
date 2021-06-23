set colorcolumn=100
set background=dark

highlight Normal guifg=white guibg=black

filetype plugin indent on
syntax on

set clipboard=unnamedplus

set noerrorbells
set hidden

set smartindent
set autoindent
set noexpandtab
set shiftwidth=8

set encoding=utf-8
set scrolloff=3

set mouse=a

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set wildmenu
set wildmode=list:longest
set number
set path+=**
set nohlsearch
set incsearch
set noshowmatch
set smartcase

set nowrap
set rnu

set laststatus=2
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set title

let mapleader = " "

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_sort_sequence="[\/]$,*"

set updatetime=40

nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>b :buffers<CR>:buffer<Space>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

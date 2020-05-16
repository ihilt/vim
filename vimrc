call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
"Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'jwalton512/vim-blade'
call plug#end()

colorscheme peachpuff
set background=dark

filetype plugin indent on
syntax on
set noerrorbells
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set hidden
set wildmenu
set wildmode=list:longest
set ttyfast
set ruler
set laststatus=1
set number
set noundofile
set path+=**
set incsearch
set hlsearch
set wrap
set linebreak
set breakindent
set breakindentopt=shift:2
set nolist

let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

set signcolumn=yes
set updatetime=40
set term=screen-256color
set t_ut=
"set mouse=a

autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ -std=c++11 -O2 -Wall '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype python nnoremap <F4> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype php nnoremap <F4> :w <bar> exec '!php -f '.shellescape('%')<CR>

let mapleader = " "

nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles<CR>

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
"Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'jwalton512/vim-blade'
"Plug 'git@github.com:ctrlpvim/ctrlp.vim.git'
Plug 'git@github.com:ludovicchabant/vim-gutentags.git'
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
call plug#end()

"colorscheme peachpuff
colorscheme gruvbox
set background=dark

set colorcolumn=80

filetype plugin indent on
syntax on
set noerrorbells

set nocompatible
"set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
"set showmode
"set showcmd
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
"set hidden

set wildmenu
set wildmode=list:longest
set ttyfast
"set laststatus=1
set number
set path+=**
set incsearch
"set hlsearch
set wrap
set linebreak
set breakindent
set breakindentopt=shift:2
set nolist

let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=2  " open in prior window
let g:netrw_winsize=25
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

set signcolumn=yes
set updatetime=40
set mouse=a

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_user_caching=0
let g:gitgutter_map_keys=0

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ -std=c++11 -O2 -Wall '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype python nnoremap <F4> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype php nnoremap <F4> :w <bar> exec '!php -f '.shellescape('%')<CR>

let mapleader = " "

nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>b :ls<CR>:b
nnoremap <c-n> :bn<CR>
nnoremap <c-p> :bp<CR>
nmap <leader>] <Plug>(GitGutterNextHunk)
nmap <leader>[ <Plug>(GitGutterPrevHunk)

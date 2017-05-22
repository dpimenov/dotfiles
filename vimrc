set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-scripts/xorium.vim'

call vundle#end()
filetype plugin indent on

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set ffs=unix
set number
set wildmenu

set t_Co=256

syntax on
set background=dark
:silent! colorscheme xorium
hi Normal ctermbg=none

set laststatus=2
set showtabline=2
set encoding=utf-8
set colorcolumn=80

match ErrorMsg '\s\+$'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set nocompatible

let g:auto_save = 1

filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'jnurmine/Zenburn'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin '907th/vim-auto-save'

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
hi Normal ctermbg=none
colorscheme zenburn

set laststatus=2
set showtabline=2
set encoding=utf-8
set colorcolumn=80

match ErrorMsg '\s\+$'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

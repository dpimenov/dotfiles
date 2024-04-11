set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'arcticicestudio/nord-vim'

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

syntax on

set t_Co=256
set background=dark

colorscheme nord

hi Normal ctermbg=none

set laststatus=2
set showtabline=2
set encoding=utf-8
set colorcolumn=80

let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

match ErrorMsg '\s\+$'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-X> <C-W><C-X>

if executable('gopls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'gopls',
        \ 'cmd': {server_info->['gopls', '-remote=auto']},
        \ 'allowlist': ['go', 'gomod', 'gohtmltmpl', 'gotexttmpl'],
        \ })
    autocmd BufWritePre *.go
        \ call execute('LspDocumentFormatSync') |
        \ call execute('LspCodeActionSync source.organizeImports')
endif


""""""""""""""""""""""""""""""
" Stephen Feagin's .vimrc file
""""""""""""""""""""""""""""""

set nocompatible
set encoding=utf-8

" Packages
set runtimepath+=~/.vim/pack

" Remap Esc to ;; to exit normal mode
imap ;; <Esc>

" Splits
set splitright
set splitbelow
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tabs
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Code folding
set foldmethod=indent
set foldlevel=99
" Enable folding with spacebar
nnoremap <space> za

" Visuals
set number
highlight BadWhitespace ctermbg=9
colorscheme torte
let g:airline_theme='luna'

" Python config
let python_highlight_all=1
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set colorcolumn=80 |
    \ match BadWhitespace /\s\+$/

" Webdev config
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" YAML config
au BufNewFile *.{yaml,yml} set filetype=yaml foldmethod=indent
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab autoindent



set nocompatible               " be iMproved

set encoding=utf-8
set fileencodings=ucs_bom,utf8,ucs-2le,ucs-2
set fileformats=unix,dos,mac

set backspace=indent,eol,start
set expandtab
set tabstop=2
set shiftwidth=2
set number
set hlsearch
set ruler
set cursorline
set list
set listchars=tab:>-

au FileType ruby setlocal makeprg=ruby\ -c\ %
au FileType ruby setlocal errorformat=%m\ in\ %f\ on\ line\ %l
autocmd BufWritePre * :%s/\s\+$//ge

filetype off

filetype plugin indent on     " required!
filetype indent on
syntax on

autocmd BufRead,BufNewFile *.php setfiletype php
autocmd BufRead,BufNewFile *.rb setfiletype ruby

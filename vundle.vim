" -------------------------------
" Vundle 
" http://github.com/gmarik/vundle
" -------------------------------
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'guns/vim-clojure-static'

filetype plugin indent on

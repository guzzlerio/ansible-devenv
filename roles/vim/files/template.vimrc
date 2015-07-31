" put this line first in ~/.vimrc
set nocompatible | syn on
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle Plugins
"End of Vundle Plugins
"
call vundle#end()
filetype plugin indent on    " required
syntax on

set t_Co=256
set t_ut=
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set number
set showcmd
set cursorline
set showmatch
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set laststatus=2
set encoding=utf-8


"Settings
"End of Settings

"Keybindings
"End of Keybindings


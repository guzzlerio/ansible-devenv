" put this line first in ~/.vimrc
set nocompatible | syn on
filetype off
filetype plugin indent on    " required

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

syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle Plugins
"End of Vundle Plugins

"Settings
"End of Settings

"Keybindings
"End of Keybindings

call vundle#end()

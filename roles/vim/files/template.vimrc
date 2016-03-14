" put this line first in ~/.vimrc
set nocompatible | syn on
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-dispatch'
Plugin 'kristijanhusak/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
Plugin 'janko-m/vim-test'
"End of Vundle Plugins
"
call vundle#end()
filetype plugin indent on    " required
syntax on
filetype on

colorscheme jellybeans

let mapleader = "\<Space>"

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
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set laststatus=2
set encoding=utf-8

"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

"END of Syntastic
 
""NERD Tree

let NERDTreeDirArrows=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

nmap <silent> <C-D> :NERDTreeToggle<CR>

"END of NERD Tree
 
"TagBar

nmap <F8> :TagbarToggle<CR>

"END of TagBar
 
source /usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/plugin/powerline.vim

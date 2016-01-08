" put this line first in ~/.vimrc
set nocompatible | syn on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
Plugin 'fatih/vim-go'

call vundle#end()

filetype plugin indent on
syntax on
filetype on

colorscheme jellybeans

" General Settings

set t_Co=256
set t_ut=
set number
set showcmd
set cursorline
set showmatch
set foldenable
set laststatus=2
set encoding=utf-8

"END of General Settings


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

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:syntastic_mode_map = { 'mode': 'active' }

"END of Syntastic


""NERD Tree

let NERDTreeDirArrows=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"
""-------------------Key Bindings
nmap <silent> <C-D> :NERDTreeToggle<CR>

"END of NERD Tree

"TagBar

nmap <F8> :TagbarToggle<CR>

"END of TagBar


" Vim-Go

map <C-n> :lne<CR>
map <C-m> :lp<CR>

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1

verbose au FileType go nmap <c-f> :GoFmt<cr>

" END of Vim-GO

source /usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/plugin/powerline.vim

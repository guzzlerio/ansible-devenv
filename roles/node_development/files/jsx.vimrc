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
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-dispatch'
Plugin 'janko-m/vim-test'
Plugin 'kristijanhusak/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'

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

let mapleader = "\<Space>"
"
"END of General Settings


"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"END of Syntastic
"
"JSX
let g:syntastic_javascript_checkers = ['eslint']
"END of JSX

"JsBeautify
map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

au BufWrite *.js :call JsBeautify()
"
""END of JsBeautify

"AutoFormat
"END of AutoFormat

"
""NERD Tree
let NERDTreeDirArrows=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"
""-------------------Key Bindings
nmap <silent> <C-D> :NERDTreeToggle<CR>

"END of NERD Tree

"Vim Test
let test#javascript#mocha#options = '--harmony -R tap'
let test#strategy = "dispatch"

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
"END Vim Test

"TagBar
nmap <F8> :TagbarToggle<CR>
"END of TagBar

source /usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/plugin/powerline.vim

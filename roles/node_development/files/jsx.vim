"JSX
let g:syntastic_javascript_checkers = ['eslint']
"END of JSX

"JsBeautify

"au BufWrite *.js :call JsBeautify()
nnoremap <leader>ff :%!js-beautify -n -P -E -a -j -q -B -k -s 2 --good-stuff -f -<CR>


let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

"Vim Test
let test#javascript#mocha#options = '--harmony -R tap'
let test#strategy = "dispatch"

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
"END Vim Test

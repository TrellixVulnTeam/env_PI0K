""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f # --- <esc>a
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def
au FileType python set cindent
au FileType python set cinkeys-=0#
au FileType python set indentkeys-=0#

au FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>

au BufNewFile,BufRead *.py
    \ set textwidth=79
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal indentkeys-=0# indentkeys-=<:>

" json indent
command! -range -nargs=0 -bar IndentJson <line1>,<line2>!python -m json.tool
command! -range -nargs=0 -bar JsonIndent <line1>,<line2>!python -m json.tool

"xml indent
command! IndentXml :silent %!xmllint --encode UTF-8 --format -
command! XmlIndent :silent %!xmllint --encode UTF-8 --format -"

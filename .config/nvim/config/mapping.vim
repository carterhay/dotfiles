"""""""""""""""""""""""""
" Universal Editor
"""""""""""""""""""""""""
nnoremap : ;
nnoremap ; :

set rnu
set nu

inoremap <S-Tab> <C-d>

" Use C-c as an Esc equivalent in these modes
inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>

nnoremap <Leader>s :vimgrep! <cword> ./*<CR>:copen<CR><C-w>T

nnoremap <Leader>cd :cd %:p:h<CR>

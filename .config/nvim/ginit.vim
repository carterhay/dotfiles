Guifont Consolas:h10
colorscheme NeoSolarized

" Paste os clipboard
inoremap <S-Insert> <C-r>*

" Copy vim primary buffer to os clipboard
nnoremap <C-y> :let @*=@"<CR>

" Change colorscheme to light neon
nnoremap <silent> ,w :colorscheme neon<CR>:set background=light<CR>

" Change font to 'projector font (pf)' ie: h12
nnoremap <Leader>pf :set guifont=Consolas:h12<CR>


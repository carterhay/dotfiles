
iabbrev <buffer> print System.out.println();<esc>hi
nnoremap <buffer> <leader>c I//<esc>
nnoremap <buffer> <leader>doc O/**<cr>*<space><cr>*/<esc>kA
vnoremap <buffer> <leader>c :<left><left><left><left><left><del><del><del><del><del>execute<space>"'<normal I/*"<space><bar><space>execute "'>normal A*/"<cr>


iabbrev <buffer> if if<Space>()<Space>{<CR><esc>kA<left><left><left>
iabbrev <buffer> while while<Space>()<Space>{<cr><esc>kA<left><left><left>
iabbrev <buffer> for for<Space>()<Space>{<cr><esc>kA<left><left><left>

iabbrev <buffer> main public<space>static<space>void<space>main<space>(String[]<space>args)<space>{<cr>
iabbrev <buffer> pub <esc>Ipublic<space><esc>A<left>()<right>{<cr><esc>kO/**<cr>*<cr>*/<esc>kA
iabbrev <buffer> priv <esc>Iprivate<space><esc>A<left>()<right>{<cr><esc>kO/**<cr>*<cr>*/<esc>kA



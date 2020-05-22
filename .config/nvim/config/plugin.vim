
call plug#begin('$SOURCE_PATH/plugins')
Plug 'scrooloose/nerdtree'
Plug 'raimondi/delimitmate'
Plug 'iCyMind/NeoSolarized'
Plug 'elmcast/elm-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'sainnhe/neon'
Plug 'jnurmine/Zenburn'
call plug#end()


""""""""""""""""""""
" NERDTree
""""""""""""""""""""
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>

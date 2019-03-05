" Vundle
"------------------------------------------------------
set nocompatible
filetype off
set rtp+=~/dotfiles/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin on
set rtp+=~/dotfiles/.vim
" Everything not-vundle after this line
"------------------------------------------------------

let mapleader = ","

set nocp
set backspace=2

"This is for vim-airline to work
set laststatus=2

nnoremap <Leader>n :NERDTreeToggle<CR>


"------------------------------------------------------
"UI Setup
"------------------------------------------------------
set colorcolumn=80
set relativenumber
set nu
syntax enable
set background=dark
colorscheme solarized

inoremap <C-c> <esc>
nnoremap <C-c> <esc>
vnoremap <C-c> <esc>


"------------------------------------------------------
"ctags
"------------------------------------------------------
set tags=./tags;/
nnoremap <C-Enter> <C-w><C-]><C-w>T
nnoremap <Leader>lt :set tags=./tags;/<CR>

"------------------------------------------------------
"vimgrep
"------------------------------------------------------
nnoremap <C-space> :vimgrep <cword> *<CR>:copen<CR><C-w>TgT<C-o>gt

"------------------------------------------------------
"Searching
"------------------------------------------------------
set incsearch
set hlsearch
nnoremap <space> :nohlsearch<CR>
nnoremap <Leader>fr :%s/\<\>//g<Left><Left><Left><Left><Left>

"------------------------------------------------------
"Tabs
"------------------------------------------------------
set autoindent
set tabstop=2 shiftwidth=2 expandtab
inoremap <S-Tab> <C-d>

"------------------------------------------------------
"Auto Complete
"------------------------------------------------------
"Auto Complete braces and parens
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap {<CR> {<CR>}<esc>kA<CR>


"Ignore the closing brace if its already there
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"


"TODO:Delete both braces or parens if they are empty

"-------------------------------------------------------
"Auto Insertion on new files
"-------------------------------------------------------

"Java
autocmd BufNewFile *.java :execute ";put =expand('%:t')"
autocmd BufNewFile *.java :execute "normal! ggi/**\<cr>* @Author Carter Hay \<cr>* \<cr>*/\<esc>j"
autocmd BufNewFile *.java :execute "normal! Ipublic class \<esc>A\<esc>bbdwdwA {\<cr>\<cr>}\<esc>"
autocmd BufNewFile *.java :execute "normal! ki\<tab>"

"Javascript
autocmd BufNewFile *.js :execute "normal! ggi/**\<cr>* @Author Carter Hay \<cr>* \<cr>*/\<cr>\<cr><!--\<cr>\<cr>-->\<esc>k"

"Html
autocmd BufNewFile *.html :execute "normal! ggi<!--\<cr>Author:\<space>Carter Hay\<cr>-->\<esc>o\<cr><html>\<cr><head>\<cr><title><\\title>\<cr><\\head>\<cr>\<cr><body>\<cr>\<cr><\\body>\<cr></html>\<esc>ggjjj"

"------------------------------------------------------
"Typo Repair
"------------------------------------------------------
iabbrev waht what
iabbrev tehn then
iabbrev adn and
iabbrev ot to
iabbrev imprt import
iabbrev impotr import

"------------------------------------------------------
"Other Custom Mappings
"------------------------------------------------------

nnoremap <leader>rc :split $MYVIMRC<CR>
nnoremap <leader>rl :source $MYVIMRC<CR>

nnoremap ; :
nnoremap : ;

"This is for the Explorer split thing
let g:netrw_liststyle=3
nnoremap <leader>e <c-w>v<esc>:E<CR>:vertical<space>resize<space>35<CR><esc>



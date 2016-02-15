let mapleader = "."

set nocompatible
set nocp
set backspace=2

"This is for vim-airline to work
set laststatus=2

"------------------------------------------------------
"For Vundle
"------------------------------------------------------
"filetype off

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"
"" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"
"Bundle 'bling/vim-airline'
"
"" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"------------------------------------------------------
"UI Setup
"------------------------------------------------------
colorscheme koehler

set nu
syntax on
"set cursorline


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



"Java
"""""""
autocmd FileType java :iabbrev <buffer> print System.out.println();<esc>hi
autocmd FileType java :iabbrev <buffer> iff if<Space>()<Space>{<CR><esc>kA<left><left><left>
autocmd FileType java :nnoremap <buffer> <leader>c I//<esc>
autocmd FileType java :nnoremap <buffer> <leader>doc O/**<cr>*<space><cr>*/<esc>kA
autocmd FileType java :vnoremap <buffer> <leader>c :<left><left><left><left><left><del><del><del><del><del>execute<space>"'<normal I/*"<space><bar><space>execute "'>normal A*/"<cr>
"TODO: add one for while and for

autocmd FileType java :iabbrev <buffer> main public<space>static<space>void<space>main<space>(String[]<space>args)<space>{<cr>
autocmd FileType java :iabbrev <buffer> pub <esc>Ipublic<space><esc>A<left>()<right>{<cr><esc>kO/**<cr>*<cr>*/<esc>kA
autocmd FileType java :iabbrev <buffer> priv <esc>Iprivate<space><esc>A<left>()<right>{<cr><esc>kO/**<cr>*<cr>*/<esc>kA

autocmd BufNewFile *.java :execute ";put =expand('%:t')"
autocmd BufNewFile *.java :execute "normal! ggi/**\<cr>* @Author Carter Hay \<cr>* \<cr>*/\<esc>j"
autocmd BufNewFile *.java :execute "normal! Ipublic class \<esc>A\<esc>bbdwdwA {\<cr>\<cr>}\<esc>"
autocmd BufNewFile *.java :execute "normal! ki\<tab>"

"Javascript
""""""""""""""
autocmd FileType javascript :nnoremap <buffer> <leader>c I//<esc>
autocmd FileType javascript :vnoremap <buffer> <leader>c :<left><left><left><left><left><del><del><del><del><del>execute<space>"'<normal I/*"<space><bar><space>execute "'>normal A*/"<cr>

autocmd BufNewFile *.js :execute "normal! ggi/**\<cr>* @Author Carter Hay \<cr>* \<cr>*/\<cr>\<cr><!--\<cr>\<cr>-->\<esc>k"

"HTML
""""""""""""""
autocmd FileType html :nnoremap <buffer> <leader>c I<!--<esc>A-->
"autocmd FileType html :vnoremap <buffer> <leader>c :<left><left><left><left><left><del><del><del><del><del>execute<space>"'<normal I/*"<space><bar><space>execute "'>normal A*/"<cr>

"autocmd BufNewFile *.html :execute "normal! ggi/**\<cr>* @Author Carter Hay \<cr>* \<cr>*/\<cr>\<cr><!--\<cr>\<cr>-->\<esc>k


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



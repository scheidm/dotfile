set shellcmdflag=-Iic
set shell=/bin/bash\ --rcfile\ ~/.bash_profile
"VUNDLE CONFIG DO NOT CHANGE
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on 
"END VUNDLE SETUP

Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/sudo.vim'
Bundle 'skalnik/vim-vroom'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
"Powerline setup
"Bundle 'Lokaltog/powerline'
"set rtp+={repository_root}/powerline/bindings/vim

au FileType c,cpp,java set cindent
let mapleader = ","

"disable arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"CamelCase movement in visual and insert
set foldmethod=syntax
set foldcolumn=3
set foldlevel=1
set nocompatible
set guifont=Lucida_console:h12:cANSI
syntax enable
colorscheme pablo


"compile function
function!  CC()
	let fName=expand("%:r")
	exe ":!g++ " . fName . ".cpp -o " . fName . ".run"
	exe ":!" . fName . ".run"
endfunction
"4 way split
function! XX()
  vnew
  new
  winc l
  new
  winc l
  winc j
endfunction
map mm ;call XX()<cr>
"nnoremap <C-Left> :call search('\<\<Bar>\u', 'bW')<CR>
"nnoremap <C-Right> :call search('\<\<Bar>\u', 'W')<CR>
inoremap <Leader>h <C-o>:call search('\<\<Bar>\u', 'bW')<CR>
inoremap <Leader>l <C-o>:call search('\<\<Bar>\u', 'W')<CR>
"vnoremap <C-Left> <C-o>:call search('\<\<Bar>\u', 'bW')<CR>
"vnoremap <C-Right> <C-o>:call search('\<\<Bar>\u', 'W')<CR>

"Directional movement between buffers
nnoremap <silent> <C-l> <c-w>l
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-j> <c-w>j

map <Leader>y :.w !pbcopy<cr><cr>
vmap <Leader>y :w !pbcopy<cr><cr>
vmap <Leader>p ;call PP()<cr>
map <Leader>p ;call PP()<cr>
function! PP()
  set paste
  .!pbpaste
  set nopaste
endfunction

"quick config
map <Leader>v ;tabnew ~/.vimrc<cr>
map <Leader>b ;tabnew ~/.bash_profile<cr>
map <Leader>V ;source $MYVIMRC<cr>
map <Leader>B ;!source ~/.bash_profile<cr>

map tt /tags="\(\S*\s*)*

"nnoremap : ;
nnoremap ; :
"vnoremap : ;
vnoremap ; :
inoremap jj <Esc>
nnoremap JJJJ <Nop>
highlight matchParen ctermbg=4

set smartindent
set autoindent
"don't jump over text wrapped lines
map j gj
map k gk

"backup options
"set backupdir=~/temp
"`set backup

"map compiler
"map mm ;call CC()<cr>

set backspace=indent,eol,start
set scrolloff=5

set number
set ignorecase
set smartcase
set incsearch
set expandtab
set tabstop=2
set shiftwidth=2
set showmode
set showmatch
set textwidth=80
set pastetoggle=<f2>
set backspace=2
set hlsearch
set ruler
if &t_Co > 1
	syntax enable
endif

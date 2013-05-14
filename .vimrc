set shellcmdflag=-Iic

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
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-powerline'
"Powerline setup
set nocompatible " Disable vi-compatibility
set laststatus=2 " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
"Bundle 'Lokaltog/powerline'
"set rtp+={repository_root}/powerline/bindings/vim

au FileType c,cpp,java set cindent
let mapleader = ","

"disable arrows
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set foldmethod=syntax
set foldcolumn=3
set foldlevel=6
set foldnestmax=5
set nocompatible
set guifont=Lucida_console:h12:CANSI
syntax enable
colorscheme pablo


"compile function
function!  CC()
	let fName=expand("%:r")
	exe ";!g++ " . fName . ".cpp -o " . fName . ".run"
	exe ";!" . fName . ".run"
endfunction
"4 way split
function! XX()
  vnew
  new
  winc l
  new
  winc l
endfunction

"Custom maps"
nmap <C-x> ;call XX()<cr>
map <Leader>t ;tabnew<cr>;e 

"CamelCase movement in visual and insert
"nnoremap <C-Left> ;call search('\<\<Bar>\u', 'bW')<CR>
"nnoremap <C-Right> ;call search('\<\<Bar>\u', 'W')<CR>
"inoremap <Leader>h <C-o>;call search('\<\<Bar>\u', 'bW')<CR>
"inoremap <Leader>l <C-o>;call search('\<\<Bar>\u', 'W')<CR>
"vnoremap <C-Left> <C-o>;call search('\<\<Bar>\u', 'bW')<CR>
"vnoremap <C-Right> <C-o>;call search('\<\<Bar>\u', 'W')<CR>

"Directional movement between buffers
nnoremap <silent> <Leader>l <c-w>l
nnoremap <silent> <Leader>h <c-w>h
nnoremap <silent> <Leader>k <c-w>k
nnoremap <silent> <Leader>j <c-w>j

"Folding tricks
map <Leader>o ggzo''
map <Leader>c ggzc''


map <Leader>Y ;.w !pbcopy<cr><cr>
vmap <Leader>Y ;w !pbcopy<cr><cr>
vmap <Leader>p ;call PP()<cr>
map <Leader>p ;call PP()<cr>
function! PP()
  set paste
  .!pbpaste
  set nopaste
endfunction

map <Leader>L gg$p
map <Leader>d ggdd

"quick config
map <Leader>v ;tabnew ~/.vimrc<cr>
map <Leader>V ;source $MYVIMRC<cr>

map tt /tags="\(\S*\s*)*

nnoremap : ;
nnoremap ; :
vnoremap : ;
vnoremap ; :
inoremap jj <Esc>
nnoremap JJJJ <Nop>
highlight matchParen ctermbg=4

set smartindent
set autoindent
"don't jump over text wrapped lines
map j gj
map k gk

map <Leader>D ;mapclear<cr>:map <Leader>V :source $MYVIMRC<cr>
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

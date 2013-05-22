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
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'kana/vim-textobj-entire'
"Powerline setup
Bundle 'Lokaltog/vim-powerline'
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
nnoremap <C-b> :call XX()<cr>
nnoremap <Leader>t :tabnew<cr>:e 

"CamelCase movement in visual and insert
nnoremap <Leader>h :call search('\<\<Bar>\u', 'bW')<CR>
nnoremap <Leader>l :call search('\<\<Bar>\u', 'W')<CR>
"inoremap <Leader>h <C-o>:call search('\<\<Bar>\u', 'bW')<CR>
"inoremap <Leader>l <C-o>:call search('\<\<Bar>\u', 'W')<CR>
vnoremap <Leader>h <C-o>:call search('\<\<Bar>\u', 'bW')<CR>
vnoremap <Leader>l <C-o>:call search('\<\<Bar>\u', 'W')<CR>

"Directional movement between buffers
nnoremap <silent> gl <c-w>l
nnoremap <silent> gh <c-w>h
nnoremap <silent> gk <c-w>k
nnoremap <silent> gj <c-w>j

"Folding tricks
nnoremap <Leader>o ggzo''
nnoremap <Leader>c ggzc''


nnoremap <Leader>Y :.w !pbcopy<cr><cr>
vnoremap <Leader>Y :w !pbcopy<cr><cr>
vnoremap <Leader>p :call PP()<cr>
nnoremap <Leader>p :call PP()<cr>
function! PP()
  set paste
  .!pbpaste
  set nopaste
endfunction

nnoremap <Leader>L gg$p
nnoremap <Leader>d ggdd
vnoremap <Leader>w <c-w>
vnoremap <Leader>- <c-w>_
vnoremap <Leader>= <c-w>=
nnoremap <Leader>w <c-w>
nnoremap <Leader>- <c-w>_
nnoremap <Leader>= <c-w>=
nnoremap <Leader>n :nohl<cr>

nnoremap gw gT
nnoremap ge gt

"quick config
nnoremap <Leader>v :tabnew ~/.vimrc<cr>
nnoremap <Leader>V :source $MYVIMRC<cr>

nnoremap tt /tags="\(\S*\s*)*

nnoremap : ;
nnoremap ; :
vnoremap : ;
vnoremap ; :
inoremap jj <Esc>
highlight matchParen ctermbg=4

set smartindent
set autoindent
"don't jump over text wrapped lines
nnoremap j gj
nnoremap k gk

nnoremap <Leader>D :mapclear<cr>:map <Leader>V :source $MYVIMRC<cr>
"backup options
"set backupdir=~/temp
"`set backup

"map compiler
"map mm :call CC()<cr>

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

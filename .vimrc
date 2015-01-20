set shellcmdflag=-Iic
set nocompatible " Disable vi-compatibility

"VUNDLE CONFIG DO NOT CHANGE
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ardagnir/vimbed'
Plugin 'gmarik/Vundle.vim'
"END VUNDLE SETUP

Plugin 'tpope/vim-obsession'
Plugin 'vim-scripts/sudo.vim'
Plugin 'skalnik/vim-vroom'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
"Powerline setup
Plugin 'Lokaltog/vim-powerline'
set laststatus=2 " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
"Plugin 'Lokaltog/powerline'
"set rtp+={repository_root}/powerline/bindings/vim
call vundle#end()
filetype plugin indent on 

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


"redraw screen with ctrl-l
nnoremap <silent> <C-l> :nohl<CR><C-l>
"Custom maps"
nnoremap <Leader>p :CtrlP<cr>

"no more accidental :wq
nnoremap <Leader>w :w<cr>
nnoremap <Leader>s :w<cr>
nnoremap <Leader>e :e 
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

"(un)fold at line specified by count without changing cursor location`
nnoremap <Leader>o ggzo''
nnoremap <Leader>c ggzc''

"yank and put from system clipboard
nnoremap <Leader>Y :.w !pbcopy<cr><cr>
vnoremap <Leader>Y :w !pbcopy<cr><cr>
vnoremap <Leader>P :call PP()<cr>
nnoremap <Leader>P :call PP()<cr>

"with counts, paste at the end of specified line, cursor unchanged
nnoremap <Leader>L gg$p''
"with counts, delete specified line #, cursor unchanged
nnoremap <Leader>d ggdd''
"Move within splits
vnoremap <Leader>w <c-w>
nnoremap <Leader>w <c-w>
"Maximize current split
vnoremap <Leader>- <c-w>_
nnoremap <Leader>- <c-w>_
"equalize all splits space on screen
vnoremap <Leader>= <c-w>=
nnoremap <Leader>= <c-w>=

"move between tabs without shift keys
nnoremap gw gT
nnoremap ge gt

"quick config
nnoremap <Leader>v :tabnew ~/.vimrc<cr>
nnoremap <Leader>V :source $MYVIMRC<cr>

nnoremap tt /tags="\(\S*\s*)*

inoremap jj <Esc>
"don't jump over text wrapped lines
nnoremap j gj
nnoremap k gk

"reset to defaults, for when you share your PC with another programmer
nnoremap <Leader>D :mapclear<cr>:map <Leader>V :source $MYVIMRC<cr>

"allow visual mode searches to span multiple words
vnoremap * y/<C-r>"<cr>

nnoremap <Leader>t :tabnew<cr>:e 

set smartindent
set autoindent
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
set foldmethod=syntax
set foldcolumn=3
set foldlevel=6
set foldnestmax=5
set guifont=Lucida_console:h12:CANSI

"language highlighting
syntax enable
highlight matchParen ctermbg=4
autocmd BufEnter *.m*   set syntax=perl
autocmd BufEnter * colorscheme pablo
autocmd BufEnter *.js colorscheme nicotine
autocmd BufEnter *.[mp]* colorscheme Tomorrow-Night

"backup options
set backup
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set writebackup

"compile function
function!  CC()
	let fName=expand("%:r")
	exe ";!g++ " . fName . ".cpp -o " . fName . ".run"
	exe ";!" . fName . ".run"
endfunction

function! PP()
  set paste
  .!pbpaste
  set nopaste
endfunction
"
"4 way split
function! XX()
  vnew
  new
  winc l
  new
endfunction

"
"map compiler
"map mm :call CC()<cr>

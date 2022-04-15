set shellcmdflag=-Iic
set nocompatible " Disable vi-compatibility
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

"VUNDLE CONFIG DO NOT CHANGE
""git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ardagnir/vimbed'
"END VUNDLE SETUP

Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-abolish'
Plugin 'vim-scripts/sudo.vim'
Plugin 'skalnik/vim-vroom'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'digitaltoad/vim-jade'
Plugin 'alfredodeza/jacinto.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'leshill/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'twerth/ir_black'
Plugin 'tyru/open-browser.vim'
"Powerline setup
Plugin 'Lokaltog/vim-powerline'
set laststatus=2 " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
"Plugin 'Lokaltog/powerline'
"set rtp+={repository_root}/powerline/bindings/vim
call vundle#end()
filetype plugin indent on 
let g:netrw_nogx = 1 " disable netrw's gx mapping. 
nnoremap gx <Plug>(openbrowser-smart-search) 
vnoremap gx <Plug>(openbrowser-smart-search) 

au FileType c,cpp,java set cindent
let mapleader = ","
nnoremap <leader>n :next<CR>
"highlight all characters matching the one under the cursor
nnoremap <leader>z xhp/<C-R>-<CR>
"highlight all non-ascii characters
nnoremap <leader>a /[^\x00-\x7F]<CR>
"nnoremap + /\$\w\+_<CR>
nnoremap Q <NOP>
nnoremap _ f_x~

"redraw screen with ctrl-l
nnoremap <silent> <C-l> :nohl<CR><C-l>
"Custom maps"
nnoremap <Leader>p :CtrlP<cr>

"no more accidental :wq
nnoremap <Leader>w :w<cr>
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
vnoremap <Leader>m <c-w>
nnoremap <Leader>m <c-w>
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

nnoremap <Leader>t :tabnew<cr>:CtrlP<cr> 

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
set textwidth=120
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
autocmd BufEnter *.m*   set syntax=mason
autocmd BufEnter *.vue   set syntax=html
autocmd BufEnter *.t   set syntax=perl
autocmd BufEnter *.jade set syntax=jade
autocmd BufEnter * colorscheme pablo
"autocmd BufEnter *.js colorscheme nicotine
autocmd BufEnter *.j* colorscheme ubloh
autocmd BufEnter *.[mpt]* colorscheme Tomorrow-Night

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
nnoremap <Leader>4 :call XX()<cr>


"
"map compiler
"map mm :call CC()<cr>

"Ctrlp
"use gitignore to filter
"let g:ctrlp_user_command = 'cd %s && git ls-files -co --exclude-standard'
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

"Config to allow for buffers to linger and easy switching
set hidden
"NEVER jump to an open version of the file
let g:ctrlp_switch_buffer = 0
function! DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction
nnoremap <leader>B :call DeleteHiddenBuffers()<cr>

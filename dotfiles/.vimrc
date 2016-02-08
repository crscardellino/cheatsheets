"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Creator:
"       Cristian A. Cardellino
"       http://crscardellino.me
"
" Version:
"       1.0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" =============
" Preconditions
" =============

" use vim settings, not vi settings (needed)
set nocompatible

" filetype detection off for Vundle
filetype off

" =======================
" Vundle (plugin manager)
" =======================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle start
call vundle#begin()

" Vundle plugin, required
Plugin 'VundleVim/Vundle.vim'

" personal plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'lervag/vimtex'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Vundle end
call vundle#end()

" required for Vundle
filetype plugin indent on

" =======
" General
" =======

" keep 500 lines of command line history
set history=100

" use 100 levels of undo
set undolevels=100

" change the terminal's title
set title

" <leader> and <localleader>
let mapleader = ","
let maplocalleader = "\\"

" Capital "Q" to quit all
command Q :qall

" Capital "W" to write all
command W :wall

" Capital "WQ" to write and quit all
command WQ :wall | :qall

" =================
" Buffers & Windows
" =================

" don't force close of buffers
set hidden

" Buffer switching
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>

" ==============
" Edition & Text
" ==============

" syntax highlighting
syntax on

" word wrap
set textwidth=0

" wrap paragraph
nmap <c-q> {gq}

" insert newline character
nmap <c-o> O<Esc>j
nmap <CR> o<Esc>k

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

" don't wrap lines
set nowrap

" always set autoindenting on
set autoindent

" copy the previous indentation on autoindenting
set copyindent

" toggle pastemode
set pastetoggle=<F2>

" ===================
" Files & Directories
" ===================

" change the dir
set autochdir

" Remove temp files created by vim
set nobackup
set noundofile

" set to auto read when a file is changed from the outside
set autoread

" set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

set wildignore=*.swp,*.bak,*.pyc,*.class,.git/,tmp/

" =========
" Interface
" =========

" show the cursor position all the time
set ruler

" display incomplete commands
set showcmd

" show line number
set number

" solarized dark theme setup
set background=dark
colorscheme solarized

" show matching brackets when text indicator is over them
set showmatch

" remove trailing whitespaces with <F5>
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" ======
" Moving
" ======

" treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" strict to vim mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" continue to next and previous line when moving with 'h' and 'l'
set whichwrap+=h,l 

" ======
" Search
" ======

" do incremental searching
set incsearch

" highlight search results
set hlsearch

" ignore case while searching
set ignorecase

" case-sensitive is patter is not all-lowercase
set smartcase

" =======
" Plugins
" =======

" Airline
set laststatus=2
set ttimeoutlen=50

let g:airline#extensions#tabline#enabled        = 1
let g:airline#extensions#branch#enabled         = 1
let g:airline#extensions#branch#empty_message   = ''
let g:airline#extensions#syntastic#enabled      = 1
let g:airline_powerline_fonts                   = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" vimtex
let g:vimtex_latexmk_continuous = 0
let g:vimtex_quickfix_mode = 0

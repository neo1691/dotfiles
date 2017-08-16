set nocompatible
filetype off
syntax on

set number	
set linebreak	
set textwidth=100	
set showmatch	
set visualbell	
 
set hlsearch	
set smartcase	
set ignorecase	
set incsearch	
 
set autoindent	
set shiftwidth=4
set smartindent	
set smarttab	
set softtabstop=4
 
set ruler	
 
set undolevels=1000	
set backspace=indent,eol,start

" Plugin Manager
call plug#begin('~/.vim/plugged')

" Insert mode autocomplete for brackets, quotes, braces etc
Plug 'Raimondi/delimitMate'

" vim tmux navigator
Plug 'christoomey/vim-tmux-navigator'

" vim Airline for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" tmuxline for vim
Plug 'edkolev/tmuxline.vim'

" gruvbox - Retro groove color scheme for Vim
Plug 'morhetz/gruvbox'

" Add plugins to &runtimepath
call plug#end()

" Colorscheme
let base16colorspace=256  " Access colors present in 256 colorspace
set t_Co=256 " 256 color mode
set background=dark
colorscheme gruvbox

" Airline
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme='gruvbox'

" Enable truecolors to vim. Only works for vim 8+
set termguicolors

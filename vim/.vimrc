set nocompatible
filetype off
syntax on

set number	
set linebreak
set relativenumber
set showmatch	
 
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

" Enable folding
set foldmethod=indent
set foldlevel=99

" Plugin Manager
call plug#begin('~/.vim/plugged')

" Insert mode autocomplete for brackets, quotes, braces etc
Plug 'jiangmiao/auto-pairs'

" vim tmux navigator
Plug 'christoomey/vim-tmux-navigator'

" vim Airline for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" tmuxline for vim
Plug 'edkolev/tmuxline.vim'

" Light mode solarized
Plug 'lifepillar/vim-solarized8'

" Handle vim sessions appropriately
Plug 'tpope/vim-obsession'

" Fugitive for vim
Plug 'tpope/vim-fugitive'

" Fold them
Plug 'tmhedberg/SimpylFold'

" Autoidentation for python
Plug 'vim-scripts/indentpython.vim'

" Markdown for vim
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Colorschemes for vim
" Plug 'flazz/vim-colorschemes'
Plug 'dracula/vim'

" Add plugins to &runtimepath
call plug#end()

" Colorscheme
set background=dark
colorscheme dracula

" Airline
let g:airline_powerline_fonts = 1
set laststatus=2
"let g:airline_theme='monochrome'

" Settings for vim-powerline. In hope that airline picks this up
let g:Powerline_symbols = 1

" docstrings for folded code
let g:SimpylFold_docstring_preview=1

" Set the encoding to UTF-8
set encoding=utf-8

" Use fzf in vim
set rtp+=/usr/local/opt/fzf

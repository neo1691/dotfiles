set nocompatible
filetype off
syntax on

set number	
set relativenumber
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

" Fzf - Search in a flash
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Fugitive for vim
Plug 'tpope/vim-fugitive'

" Fold them
Plug 'tmhedberg/SimpylFold'

" Autoidentation for python
Plug 'vim-scripts/indentpython.vim'

" Add plugins to &runtimepath
call plug#end()

" Colorscheme
colorscheme solarized8_dark

" Airline
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme='solarized'

" Settings for vim-powerline. In hope that airline picks this up
let g:Powerline_symbols = 'fancy'
let g:Powerline_dividers_override = [[0xe0b0], [0xe0b1], [0xe0b2], [0xe0b3]]
let g:Powerline_symbols_override = {
  \ 'BRANCH': [0xe238],
  \ 'RO'    : [0xe0a2],
  \ 'FT'    : [0xe1f6],
  \ 'LINE'  : [0xe0a1],
\ }

" docstrings for folded code
let g:SimpylFold_docstring_preview=1

" Set the encoding to UTF-8
set encoding=utf-8

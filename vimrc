"===========================================================
" Plugins
"===========================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Solarized color scheme
Bundle 'altercation/vim-colors-solarized'
" Git plugin 
Plugin 'tpope/vim-fugitive'
"CtrlP plugin
Plugin 'kien/ctrlp.vim'
"Vim clojure stuff
Bundle 'tpope/vim-fireplace'
Bundle 'guns/vim-clojure-static'
Bundle 'kien/rainbow_parentheses.vim'

Plugin 'Chiel92/vim-autoformat'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'claco/jasmine.vim'
" syntastic
Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

Bundle 'burnettk/vim-angular'
Bundle 'pangloss/vim-javascript'
let javascript_enable_domhtmlcss=1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"===========================================================
"Color scheme
"===========================================================
syntax enable
set background=dark
colorscheme solarized
"===========================================================
" Clojure and lisp specifics
"===========================================================
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"===========================================================
" Install powerline
"===========================================================
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
"===========================================================
"Powerline settings 
"===========================================================
set guifont=InputMono:h12
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=screen-256color
set termencoding=utf-8
"let g:airline_powerline_fonts = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Basic VIM stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Allow unsaved background buffers and remember marks/undo for them
set hidden
" Remember more commands and search history
set history=10000
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
"make searches case-sensitive only if they contain uppercase characters
set ignorecase smartcase
" highlight current line
set cursorline
set switchbuf=useopen
set showtabline=1
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" If a file is changed outside of vim, automatically reload it without asking
set autoread
" Add line number to buffers
set number
"Use undo file
set undofile
" set a directory to store the undo history
set undodir=/~/.vimundo/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM config autoreload
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup reload_vimrc " {
   autocmd!
   autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>

nmap <c-s> :w<cr>
imap <c-s> <esc>:w<cr>a

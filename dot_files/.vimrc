" Required configurations first
set nocompatible
filetype off
filetype plugin indent on


""" BEGIN Vundle Setup

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all plugins here
" NOTE: older versions of Vundle used Bundle instead of Plugin
Bundle 'Valloric/YouCompleteMe'

Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'morhetz/gruvbox'

call vundle#end()	" Required
""" END Vundle Setup

""" BEGIN Auto Complete Me Configuration
let g:ycm_auto_hover = ''
set completeopt-=preview

let g:ycm_autoclose_preview_window_after_completion=1
map g	:YcmCompleter GoToDefinitionElseDeclaration
""" END Auto Complete Me Configuration

""" BEGIN Python Files Configuration
au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix
""" END Python Files Configuration

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
highlight BadWhitespace ctermbg=red guibg=darkred

let python_highlight_all=1
let g:airline_theme='one'
syntax on

" Files indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
" Files extra setup
set number
set showmatch
set encoding=utf-8
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc
set visualbell
set noerrorbells
set background=dark
" Enable folding
set foldmethod=indent
set foldlevel=99

colorscheme evening

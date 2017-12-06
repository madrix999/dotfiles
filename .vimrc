set nocompatible              " be iMproved, required
filetype on                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let base16colorspace=256

Plugin 'VundleVim/Vundle.vim'

" Open files and stuff?
" Plugin 'wincent/command-t'
"Plugin 'kien/ctrlp.vim'

" Git wrapper (gotta figure it out)
Plugin 'tpope/vim-fugitive'
" CTRL+N to open filetree
Plugin 'scrooloose/nerdtree'
" Syntax stuff?
" Plugin 'vim-syntastic/syntastic'
" Nice looking bottom bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Better syntax highlighting
Plugin 'justinmk/vim-syntax-extra'
" Toggle between header and source
Plugin 'ericcurtin/CurtineIncSw.vim'
" Extend split to longest line using <leader>m
Plugin 'blarghmatey/split-expander'
" i3 config syntax highlighting
Plugin 'mboughaba/i3config.vim'
" Colors
Plugin 'ap/vim-css-color'
" Compile and run single file C program
Plugin 'gccsingle.vim'

" C vim stuff
" Plugin 'c.vim' " learn later


" Themes
Plugin 'marciomazza/vim-brogrammer-theme'
"Plugin 'ayu-theme/ayu-vim'
"Plugin 'agude/vim-eldar'
"Plugin 'broduo/broduo-color-scheme'
Plugin 'chriskempson/base16-vim' " to learn how to use
"Plugin 'morhetz/gruvbox' " to learn how to use
Plugin 'vim-scripts/dante.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Plugins stuff

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Switch between hader and source file
au FileType c nmap <C-y>h :call CurtineIncSw()<CR>

" Map controls
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
let mapleader = "/"
map <F5> :call CurtineIncSw()<CR>

" Settings
colorscheme default
let g:airline_theme='term'
syntax on
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set number
"set relativenumber
set splitbelow
set splitright

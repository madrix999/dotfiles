set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Git wrapper (gotta figure it out)
Plugin 'tpope/vim-fugitive'
"
Plugin 'wincent/command-t'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'kien/ctrlp.vim'

" CTRL+N to open filetree
Plugin 'scrooloose/nerdtree'
" Syntax stuff?
Plugin 'vim-syntastic/syntastic'
" Nice looking bottom bar
Plugin 'vim-airline/vim-airline'
" Better syntax highlighting
Plugin 'justinmk/vim-syntax-extra'
" Toggle between header and source
Plugin 'ericcurtin/CurtineIncSw.vim'

" Themes
Plugin 'marciomazza/vim-brogrammer-theme'
Plugin 'ayu-theme/ayu-vim'
Plugin 'agude/vim-eldar'
Plugin 'broduo/broduo-color-scheme'

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

" 

" Settings
colorscheme eldar
set t_Co=256
syntax on
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set number

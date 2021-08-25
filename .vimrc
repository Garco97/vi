set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'mileszs/ack.vim'

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



" PLUG

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
call plug#end()
"PLUG ENDS

"EASYMOTION CONF
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
"END EASYMOTION CONF


syntax on
set nu
set shiftwidth=4
filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set mouse=a
set cindent
set smartindent
set autoindent
set tabstop=4
set hlsearch
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
colorscheme morning
map <F2> :NERDTreeToggle<cr> 
map <F3> :TlistToggle<cr>
map <F4> :term<cr>


packadd! dracula
syntax enable 
colorscheme gruvbox
set bg=dark
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
set guifont=Monospace\ Bold\ 17
set nu rnu
set laststatus=2

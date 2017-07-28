set nocompatible	" be iMproved, required
filetype off		" required

" Setting up Vundle 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" Addes a bunch of color schemes
Plugin 'flazz/vim-colorschemes'

" Fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'

" Support for toggling comments
Plugin 'tpope/vim-commentary'

" Git wrapper for Vim
Plugin 'tpope/vim-fugitive'

" Filesystem tree
Plugin 'scrooloose/nerdtree'

" Vim/Ruby Configuration Files 
Plugin 'vim-ruby/vim-ruby'

" Code-completion engine for Vim
Plugin 'Valloric/YouCompleteMe'

" Emmet-vim
Plugin 'mattn/emmet-vim'

" JavaScript Linter
Plugin 'Shutnik/jshint2.vim'

" Tern-based JavaScript editing support
Plugin 'ternjs/tern_for_vim'

call vundle#end()

filetype plugin indent on 	" Filetype auton-detection
syntax on 			" Syntax highlighting

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab			" use spaces instead of tabs
set smarttab			" let's tab key inster 'tabstops', and bksp deletes tabs
set shiftround 			" tab / shifting moves to the closest tab stop
set autoindent			" Match indents on new lines
set smartindent			" Intellegently deden / indent new lines based on rules

" Dont need this because of VCS
set nobackup
set nowritebackup
set noswapfile

set hidden 			" allow buffers with unsaved changes
set autoread			" when a file has changed on disk, just load it

" Better search
set ignorecase 			" case insensitive search
set smartcase 			" If there are uppercase letters, become case-sensitive
set incsearch			" live incremental searching
set showmatch			" live match highlight
set hlsearch			" highlight matches
set gdefault			" use the 'g' flag by default

" allow the cursor to go anywhere in visual block moded
set virtualedit+=block

let mapleader = ","

" Don't need to press shift to get into command mode
nnoremap ; :
vnoremap ; :

" Remap the escape from esc to capslk
inoremap jj <Esc>

" Remap the keys need to move tabs, so just need to use ctr + movement key
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_

" Hybrid line number (both relative and absolute)
set relativenumber
set number

colorscheme wombat256mod

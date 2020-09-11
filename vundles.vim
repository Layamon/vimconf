set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/vundle'

" Code Completions
Plugin 'Valloric/YouCompleteMe'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'

" Fast editing
Plugin 'scrooloose/nerdcommenter'

" IDE features
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Yggdroot/LeaderF'
Plugin 'itchyny/lightline.vim'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'rhysd/vim-clang-format'

" Other Utils
Plugin 'morhetz/gruvbox'
Plugin 'ayu-theme/ayu-vim'
Plugin 'drewtempelmeyer/palenight.vim'

" Golang
" Plugin 'fatih/vim-go'
" Plugin 'dgryski/vim-godef'
" Plugin 'nsf/gocode'
" Plugin 'jstemmer/gotags'
" Plugin 'bradfitz/goimports'

call vundle#end()
filetype plugin indent on     " required!

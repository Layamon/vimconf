set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/vundle'

" Code Completions
Plugin 'Valloric/YouCompleteMe'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'

" IDE features
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Yggdroot/LeaderF'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'rhysd/vim-clang-format'
Plugin 'tpope/vim-fugitive'

" Schema
Plugin 'morhetz/gruvbox'
Plugin 'drewtempelmeyer/palenight.vim'

" Golang Plugin
" Plugin 'fatih/vim-go'
" Plugin 'dgryski/vim-godef'
" Plugin 'nsf/gocode'
" Plugin 'jstemmer/gotags'
" Plugin 'bradfitz/goimports'

call vundle#end()
filetype plugin indent on     " required!

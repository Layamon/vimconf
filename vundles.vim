set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/vundle'

" Code Completions
"Plugin 'Valloric/YouCompleteMe'
Plugin 'honza/vim-snippets'
"Plugin 'SirVer/ultisnips'

" Fast editing
Plugin 'scrooloose/nerdcommenter'
"Plugin 'vim-scripts/AuthorInfo'

" IDE features
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/LeaderF'
Plugin 'itchyny/lightline.vim'

" Other Utils
Plugin 'bronson/vim-trailing-whitespace' "<leader>+space 一键删除行尾空格
Plugin 'morhetz/gruvbox'

" Golang
" Plugin 'fatih/vim-go'
" Plugin 'dgryski/vim-godef'
" Plugin 'nsf/gocode'
" Plugin 'jstemmer/gotags'
" Plugin 'bradfitz/goimports'

call vundle#end()
filetype plugin indent on     " required!

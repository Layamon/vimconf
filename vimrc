" =============================================================================
"      FileName: vimrc
"          Desc: my vimrc
"        Author: LiuYangming
"         Email: sdwhlym@gmail.com
"      HomePage: http://yummyliu.github.io
"       Version: 0.5.1
"    LastChange: 2019-08-01 18:12:08
"       History:
" =============================================================================
source ~/.vim/vundles.vim
syntax on

""""""""""""""""""""""""""""""""""Vim Basic Settings""""""""""""""""""""""""""""""
" UI
" ------
"set background=light
set background=dark
"let ayucolor="mirage" " for mirage version of theme
"colorscheme palenight
colorscheme gruvbox
set langmenu=en_US
let $LANG = 'en_US'
"
" Basic Keybinding
" ------
" clear default keybinding
map <F1> :echo<CR>
imap <F1> <C-o>:echo<CR>
" key map
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l
" new leader keybinding
let mapleader=";"
map <leader>a :Ack
map <leader>h :noh<cr>
map <leader><space> :FixWhitespace<cr>
map <leader>n :silent! NERDTreeToggle<CR>
map <leader>t :silent! TagbarToggle<CR>
map <leader>i :rightb vert term <CR>
map <leader>g :Gdb <CR>
map <leader>s :shell <CR>
map <leader>p :w <CR>
"map <c-m> :Leaderf mru

" Basic Setting
" ------
let filetype_i = "cpp" " change progress filetype to cpp for mysql code
set pastetoggle=<F10>
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set clipboard=unnamed " OSX copy to os clipboard
if exists('$TMUX')
  set term=screen-256color
endif
set incsearch
set ignorecase
set hlsearch
set smartcase
set history=1000
set nocompatible
set nofoldenable               " disable folding"
set confirm                    " prompt when existing from an unsaved file
set backspace=indent,eol,start " More powerful backspacing
set t_Co=256                   " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                    " use mouse in all modes
set report=0                   " always report number of lines changed                "
set nowrap                     " dont wrap lines
set scrolloff=3                " 20 lines above/below cursor when scrolling
set number                     " show line numbers
" set relativenumber           " show relativenumber
"set showmatch                  " show matching bracket (briefly jump)
set showcmd                    " show typed command in status bar
set title                      " show file in titlebar
set laststatus=2               " use 2 lines for the status bar
set matchtime=2                " show matching bracket for 0.2 seconds
set directory=~/.vim/tmp       " move swp file to /tmp
set autoindent
"set expandtab				   " expand tab to space
set smartindent     		   " indent when
set tabstop=2       		   " tab width
set softtabstop=2   		   " backspace
set shiftwidth=2    		   " indent width
" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

""""""""""""""""""""""""""""""""""Plugins Settings""""""""""""""""""""""""""""""""""

" Tagbar
" ------
let g:tagbar_left=0
let g:tagbar_width=50
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1
" ------

" Ack
" ------
let g:ackprg = 'ack -s -H --nogroup --column'
" ------

" Nerd Tree
" ------
let NERDTreeWinSize=40
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeWinPos = "right"
" ------

" lightline
" ------
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'relativepath', 'modified', 'method' ] ]
      \ },
      \ }
" ------

" autosave
" ------
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
let g:auto_save_events = ["InsertLeave", "TextChanged", "BufWrite"]
let g:auto_save_no_updatetime = 1
" ------

"----------------------------------+--"
"----------  YouCompleteMe  -------|--"
"----------------------------------v--"
set completeopt=longest,menuone

let g:ycm_auto_hover=''
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:syntastic_cpp_compiler = 'g++' " change the compiler to g++ to support c++11.
let g:ycm_global_ycm_extra_conf = '/data02/lym-workspace/dev/.vim/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter='/data02/lym-workspace/dev/.pyenv/shims/python'
let g:ycm_python_binary_path='/data02/lym-workspace/dev/.pyenv/shims/python'
let g:ycm_use_clangd=1
let g:ycm_clangd_uses_ycmd_caching = 0 " Let clangd fully control code completion
let g:ycm_clangd_args = ['-log=verbose', '-pretty', '--background-index', '-header-insertion-decorators']
let g:ycm_clangd_binary_path = exepath("clangd") " Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:syntastic_cpp_compiler_options = '-std=c++14 -stdlib=libc++' " set the options of g++ to suport c++14.
let g:ycm_filetype_whitelist = {
    \ 'c': 1,
    \ 'cpp': 1,
    \ 'python': 1,
    \ 'sh':1
      \}
let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'notes': 1,
      \ 'markdown': 1,
      \ 'netrw': 1,
      \ 'unite': 1,
      \ 'text': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'ctrlp': 1,
      \ 'nerdtree': 1,
      \ 'vim': 1,
      \ 'mail': 1
      \}

nmap <C-\>s :YcmCompleter GoToSymbol <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>r :YcmCompleter GoToReferences <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>i :YcmCompleter GoToImprecise <C-R>=expand("<cword>")<CR><CR>
nmap <C-]> :YcmCompleter GoToDefinition <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :YcmCompleter GoToDeclaration <C-R>=expand("<cword>")<CR><CR>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp> pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
nmap <F5> :YcmForceCompileAndDiagnostics<CR>

"----------------------------------+--"
"------------    Termdebug     ----|--"
"----------------------------------v--"
packadd termdebug
let g:termdebug_wide = 1 " debug vertical split

"----------------------------------+--"
"-------------    LeaderF  --------|--"
"----------------------------------v--"
" don't show the help in normal mode
set ambiwidth=double

let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_ShortcutF = "<C-P>"
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
let g:Lf_ShowDevIcons = 1
let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}

noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <C-K> :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

"----------------------------------+--"
"------------- ClangFormat --------|--"
"----------------------------------v--"
let g:clang_format#command=exepath("clang-format")
let g:clang_format#code_style='google'
let g:clang_format#style_options = {
            \ 'IndentWidth' : '2',
            \ 'AllowShortIfStatementsOnASingleLine': 'true',
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "IndentCaseLabels" : "false",
            \ "Standard" : "C++11"}

autocmd FileType c,cpp,objc nnoremap <buffer><Leader>f :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>f :ClangFormat<CR>
nmap <Leader>C :ClangFormatAutoToggle<CR>

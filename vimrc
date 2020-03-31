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

" UI
" ------
set background=dark
colorscheme gruvbox
"colorscheme isotake

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
map <leader><space> :FixWhitespace<cr>
"map <leader>f :CtrlPMRU<CR>
"map <leader>p :CtrlP<CR>
map <leader>n :silent! NERDTreeToggle<CR>
"map <leader>t :silent! TagbarToggle<CR>
map <leader>i :rightb vert term <CR>

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
set showmatch                  " show matching bracket (briefly jump)
set showcmd                    " show typed command in status bar
set title                      " show file in titlebar
set laststatus=2               " use 2 lines for the status bar
set matchtime=2                " show matching bracket for 0.2 seconds
set directory=~/.vim/tmp       " move swp file to /tmp
set autoindent
"set expandtab				   " expand tab to space
set smartindent     		   " indent when
set tabstop=4       		   " tab width
set softtabstop=4   		   " backspace
set shiftwidth=4    		   " indent width
" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" Auto Command
" ------
augroup filetypedetect
    autocmd BufRead,BufNewFile *.ic  setf cpp
    autocmd BufRead,BufNewFile *.i  setf cpp
augroup END
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口

""""""""""""""""""""""""""""""""""Plugins Settings""""""""""""""""""""""""""""""""""

" rainbow_parentheses
" ------
let g:rbpt_colorpairs = [
    \ ['red',         'firebrick3'],
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" ------

"" Tagbar
"" ------
"let g:tagbar_left=1
"let g:tagbar_width=40
"let g:tagbar_sort = 0
"let g:tagbar_compact = 1
"let g:tagbar_autoclose=1
"let g:tagbar_autofocus=1
"" ------

" Ack
" ------
let g:ackprg = 'ack -s -H --nogroup --column'
" ------

" Nerd Tree
" ------
let NERDTreeWinSize=20
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeWinPos = "right"
" ------

" Nerd Commentor
" ------
let NERDSpaceDelims=0
let g:NERDCustomDelimiters = { 'cpp': { 'left': '/** ', 'right': ' */', 'leftAlt': '// ' }, 'c': { 'left': '/**', 'right': '*/' }}
" ------

" Authorinfo
" ------
let g:vimrc_author='LiuYangming'
let g:vimrc_email='liuyangming@kingsoft.com'
" let g:vimrc_homepage='http://yummyliu.github.io'
nmap <F4> :AuthorInfoDetect<cr>
" ------

" powerline
" ------
let g:Powerline_theme = 'solarized256'
let g:Powerline_colorscheme = 'solarized256'
" ------

" autosave
" ------
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
let g:auto_save_events = ["InsertLeave", "TextChanged", "BufWrite"]
let g:auto_save_no_updatetime = 1
" ------

" ctrlp
" ------
"set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll)$',
"  \ 'link': 'some_bad_symbolic_links',
"  \ }
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode=0
"let g:ctrlp_match_window_bottom=1
"let g:ctrlp_max_height=16
"let g:ctrlp_match_window_reversed=0
"let g:ctrlp_mruf_max=15
"let g:ctrlp_follow_symlinks=1
"let g:ctrlp_user_command = 'find . -type f -name %s'
" ------

"----------------------------------+--"
"------------代码阅读配置----------|--"
"----------------------------------v--"

" cscope
" ------
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>a :cs find a <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
set cst " 同时搜索ctags标签文件和cscope数据库
set cscopetagorder=1
cs add ./cscope.out
" ------

"----------------------------------+--"
"------------自动补全配置----------|--"
"----------------------------------v--"
set completeopt=longest,menuone "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)

" UltiSnips
" ------
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
" ------

" YouCompleteMe
" ------
" 默认的tab/s-tab和UltiSnips冲突
" 使用Ctrl-n（或者方向键）触发YCM的补全。
" 使用tab触发snippet的补全。
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp> pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
nmap <F5> :YcmForceCompileAndDiagnostics<CR>
let g:ycm_show_diagnostics_ui = 0 " 关闭ycm错误检查
let g:ycm_max_diagnostics_to_display = 0
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'cpp' : ['->', '.', '::'],
  \ }
let g:ycm_complete_in_comments = 1 "在注释输入中也能补全
let g:ycm_complete_in_strings = 1 "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0  "注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0 " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1 " 语法关键字补全
let g:syntastic_cpp_compiler = 'g++' " change the compiler to g++ to support c++11.
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++' " set the options of g++ to suport c++11.
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter='/home/liuyangming/.pyenv/shims/python'
let g:ycm_python_binary_path='/home/liuyangming/.pyenv/shims/python'
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


"----------------------------------+--"
"------------代码语法检查----------|--"
"----------------------------------v--"

" syntastic
" ------
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0



"----------------------------------+--"
"------------内嵌Termdebug调试-----|--"
"----------------------------------v--"
packadd termdebug
let g:termdebug_wide = 1 " debug vertical split


"----------------------------------+--"
"------------LeaderF 查找----------|--"
"----------------------------------v--"
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" should use `Leaderf gtags --update` first
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

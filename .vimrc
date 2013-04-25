"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins repos
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" repos on github
Bundle 'alexbel/YankRing.vim'
Bundle 'bitc/vim-bad-whitespace'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'chrisbra/NrrwRgn'
Bundle 'duff/vim-scratch'
Bundle 'einars/js-beautify'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'gorkunov/smartpairs.vim'
Bundle 'gregsexton/gitv'
Bundle 'gregsexton/MatchTag'
Bundle 'int3/vim-extradite'
Bundle 'janx/vim-rubytest'
Bundle 'jszakmeister/vim-togglecursor'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'mileszs/ack.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'Rykka/trans.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'
Bundle 'sunaku/vim-ruby-minitest'
Bundle 'szw/vim-dict'
Bundle 'terryma/vim-multiple-cursors'
"Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'vim-scripts/JSON.vim'
Bundle 'vim-scripts/nginx.vim'
Bundle 'vim-scripts/vimwiki'
Bundle 'Yggdroot/indentLine'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General behaviour
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" Look ahead as search pattern is specified
set incsearch
" Ignore case
set ignorecase
"...unless uppercase letters used
set smartcase
"Highlight all matches
"set hlsearch
" don't wait ESC-sequences
set ttimeoutlen=100
" more commands history
set history=100
" ... and more undolevels
set undolevels=2048
" reload buffer when external changes detected
set autoread
" allow backspace in insert mode
set backspace=2
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif
" Open new window at the bottom
set splitbelow

set clipboard=unnamed,exclude:cons\\\|linux
" fix for russian keys
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Indent settings
" ---------------
set tabstop=2
set shiftwidth=2
" Default to 2 spaces as tabs
set softtabstop=2
" replace tabs by spaces
set expandtab

" Backup and swap settings
" ------------------------
set backup
set backupdir=~/tmp,/tmp " store backups
set dir=~/tmp,/tmp       " files in RAM


" Filetypes and encoding
" ----------------------
" utf-8 by default
set encoding=utf-8
" the order of enumeration encoding
set fileencodings=utf-8,windows-1251,iso-8859-15,koi8-r


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User interface setings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

set cursorline
" more colors
set t_Co=256
" colorscheme lucius
color lucius
hi Normal           guifg=#e0e0e0           guibg=#202020
hi Normal           ctermfg=253             ctermbg=16
hi CursorLineNr     ctermfg=253             ctermbg=237

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" always show statusline
set laststatus=2

" show non-printing characters
"set list listchars=tab:··,trail:·,extends:»,precedes:«

" show line numbers
set number
set numberwidth=3
" set indentation as previous line
set autoindent
" Turn on autoindenting of blocks
set smartindent
" Show name of buffer in terminal title
set title

set nolazyredraw

" show incomplete cmds down the bottom
set showcmd
" search and highlighting for brackets
set showmatch

set matchpairs+=<:>
" use wildmenu
set wildmenu
set wildcharm=<TAB>
" wrap long lines
set wrap

"
" Highlighting settings
"
" PHP
let g:php_smart_members      = 1
let g:php_alt_properties     = 1
let g:php_show_semicolon     = 1
let g:php_smart_semicolon    = 1
let g:php_folding            = 0
let g:php_html_in_strings    = 1
let g:php_parent_error_close = 1
let g:php_parent_error_open  = 1
let g:php_no_shorttags       = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vars
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let javascript_fold = 0
let mapleader       = ","
let g:mapleader     = ","
" disable matchparens
let loaded_matchparen = 1
" disable underline, bold, italic styling for html files
let html_no_rendering = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins settings and plugins mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntastic
let g:syntastic_javascript_checkers = ["jshint"]
let g:syntastic_auto_loc_list      = 1
let g:syntastic_loc_list_height    = 3
let g:syntastic_csslint_options    ="--ignore=adjoining-classes,floats,font-faces,shorthand,font-sizes,regex-selectors,important"
" syntastic can't find right rvm version of ruby
let g:syntastic_ruby_exec = $HOME.'/.rvm/bin/ruby-1.9.3-p374'

" NERDTree
let g:NERDTreeWinSize           = 40
let g:NERDTreeChristmasTree     = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeQuitOnOpen        = 0
let g:NERDTreeWinPos            = 'left' "by default
let g:NERDTreeShowBookmarks     = 1
let g:NERDTreeDirArrows         = 0

" ctrlp
set wildignore+=*/.git/*,*/tmp/*,*.zip,*.gz

" yankring
let g:yankring_manual_clipboard_check = 0
let g:yankring_history_dir    = '~/tmp,/tmp,/var/tmp' " store history in RAM
let g:yankring_history_file   = '.yankring_history'
let g:yankring_replace_n_pkey = '' " no cycle, bacause to long and
let g:yankring_replace_n_nkey = '' " conflict with ctrlp plugin
nnoremap <silent> <F4> :YRShow<CR>

" Ack
let g:ackprg = "ack -Ha --nocolor --nogroup --column --smart-case --ignore-dir=vendor --ignore-dir=log --ignore-dir=cache"
" grep word under cursor in current directory
nnoremap <Leader>vv :Ack <cword><cr>

" vim-rubytests
let g:rubytest_in_quickfix  = 0
let g:rubytest_cmd_test     = "turn -Itest %p"
let g:rubytest_cmd_testcase = "turn -Itest %p -n /%c/"
let g:rubytest_cmd_feature  = "bundle exec cucumber %p"
let g:rubytest_cmd_story    = "bundle exec cucumber %p -n '%c'"

map <F3>      <Plug>RubyTestRun
map <Leader>t <Plug>RubyFileRun

" gist-vim
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_post_private = 1

" vimwiki
let g:vimwiki_list = [{'path': '~/.vimwiki/'}]

" extradit.vim
map <F2> :Extradit<CR>

" Trans.vim
let g:trans_default_lang = 'ru'
"let g:trans_map_trans = '<leader>tt' by default

" AutoClose
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'}

" Surround
" remap surround key mapprings
" t+s(ingle) quotes, t+d(ouble) quotes
nmap ts csw'El
nmap td csw"El
nmap <leader>- yss-
nmap <leader>= yss=

" indentLine
let g:indentLine_color_term = 236
let g:indentLine_noConcealCursor = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands and mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -nargs=* Find :call Find(<f-args>)
command! Vimrc e ~/.vimrc
command! -bar -nargs=1 OpenURL :call OpenURLInBrowser(<q-args>)

" Key mappings
nnoremap          <F5> :GundoToggle<CR>
map               <F8> :BufExplorer<cr>
nmap              <F9>       :NERDTreeToggle<cr>
vmap              <F9>  <esc>:NERDTreeToggle<cr>i
imap              <F9>  <esc>:NERDTreeToggle<cr>i
map      <silent> <F10> :wall<CR>:call FormatAll()<CR> :w<CR>
nmap     <silent> <F12> :TagbarToggle<CR>


" switch to the last file
nnoremap <leader><leader>l <c-^>

" write as sudo
cnoremap w!! w !sudo tee % >/dev/null

" Visual Block mode is far more useful that Visual mode (so swap the commands)...
nnoremap v <C-V>
nnoremap <C-V> v

vnoremap v <C-V>
vnoremap <C-V> v

" resize window CTRL+(h|j|k|l)
noremap <C-j> :resize +1<CR>
noremap <C-k> :resize -1<CR>
noremap <C-h> :vertical resize -1<CR>
noremap <C-l> :vertical resize +1<CR>

" Make vaa select the entire file...
vmap aa VGo1G

" When shifting, retain selection over multiple shifts
vmap <expr> > KeepVisualSelection(">")
vmap <expr> < KeepVisualSelection("<")

"
" Autocommands
"
augroup general
  autocmd!

  " reload .vimrc after saving
  au BufWritePost $MYVIMRC source $MYVIMRC

  "and reload vim-powerline plugin after that
  au BufWritePost .vimrc call Pl#Load()

  " Save if focus lost
  au BufLeave,FocusLost * silent! wall

  au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
  au BufRead,BufNewFile *.coffee set ft=coffee syntax=coffee
  au BufRead,BufNewFile /etc/nginx/* set ft=nginx
  au BufRead,BufNewFile *.json set ft=json
  au BufNewFile,BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn set ft=markdown

  " Make .sh files executable on write
  au BufWritePost *.sh silent !chmod a+x %

  " Restore cursor position
  au BufReadPost *   if line("'\"") > 1 && line("'\"") <= line("$") |
                   \   exe "normal! g`\"" |
                   \ endif

  " hide cursorline when focus is on other window
  au VimEnter,WinEnter,BufwinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline

augroup END

" Enable filetype detection
filetype plugin on
filetype plugin indent on

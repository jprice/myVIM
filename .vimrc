"
"
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" repos on github
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'einars/js-beautify'
Bundle 'alexbel/jslint.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'godlygeek/tabular'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'sjl/gundo.vim'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/nginx.vim'
Bundle 'vim-scripts/YankRing.vim'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General behaviour
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use Vim settings, rather then Vi settings (much better!). This must be first, because it changes other options as a side effect.
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

" Indent settings
" ---------------
set tabstop=2
set shiftwidth=2
" Default to 2 spaces as tabs
set softtabstop=2
" replace tabs by spaces
set expandtab

" Backup and swap settings
" -----------------------
set backup
set backupdir=~/.vim/backups
set dir=~/.vim/swp


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

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" always show statusline
set laststatus=2

" show non-printing characters
"set list listchars=tab:··,trail:·,extends:»,precedes:«

set number
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
" переносить длинные строки
set wrap
" GUI
" ---
if has("gui_running")
  " удалить всё меню в GUI
  aunmenu *
  " размеры окна при открытии
  set lines=50 columns=120
  " основные параметры отображения
  set guioptions=aci
  " использовать контекстное меню
  "set mousemodel=popup
  " разрешить фокусу прыгать за мышью между окнами
  "set mousefocus
  " не скрывать указатель при печати
  "set nomousehide
  " начинать обзор с каталога текущего буфера
  "set browsedir=buffeset 
  set guifont=Monospace\ 11
  set background=dark
endif

"
" Highlighting settings
"
" PHP
let g:php_smart_members = 1
let g:php_alt_properties = 1
let g:php_show_semicolon = 1
let g:php_smart_semicolon = 1
let g:php_folding = 0
let g:php_html_in_strings = 1
let g:php_parent_error_close = 1
let g:php_parent_error_open = 1
let g:php_no_shorttags = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vars
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let javascript_fold=0
let mapleader = ","
let g:mapleader = ","
" disable matchparens
let loaded_matchparen = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
let g:NERDTreeWinSize=40
let g:NERDTreeChristmasTree = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeWinPos = 'left' "by default
let g:NERDTreeShowBookmarks = 1

" jslint
let g:JSLintHighlightErrorLine = 0 " don't show error in the main window

" pathogen
call pathogen#infect()

" ctrlp 
set wildignore+=*/.git/*,*/tmp/*,*.zip,*.gz

" neocomplcache 
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3

" yankring
let g:yankring_manual_clipboard_check = 0
let g:yankring_history_dir = expand('$HOME').'/.vim/backups'
let g:yankring_history_file = '.yankring_history'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands and mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -nargs=* Find :call Find(<f-args>)
command! Vimrc e ~/.vimrc
command! -bar -nargs=1 OpenURL :call OpenURLInBrowser(<q-args>)

" Key mappings
map               <F3> <Esc>:setlocal nospell<CR>
nnoremap <silent> <F4> :YRShow<CR>
nnoremap          <F5> :GundoToggle<CR>
map               <F8> :BufExplorer<cr>
nmap              <F9>      :NERDTreeToggle<cr>
vmap              <F9> <esc>:NERDTreeToggle<cr>i
imap              <F9> <esc>:NERDTreeToggle<cr>i
map     <silent>  <F10> :wall<CR>:call FormatAll()<cr>:JSLintUpdate<cr>:cw<CR>
nmap    <silent>  <F12> :TagbarToggle<CR>

" write as sudo
cnoremap w!! w !sudo tee % >/dev/null
 
" SuperTab like snippets behavior.
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Visual Block mode is far more useful that Visual mode (so swap the commands)...
nnoremap v <C-V>
nnoremap <C-V> v

vnoremap v <C-V>
vnoremap <C-V> v

" Make vaa select the entire file...
vmap aa VGo1G

" When shifting, retain selection over multiple shifts
vmap <expr> > KeepVisualSelection(">")
vmap <expr> < KeepVisualSelection("<")

" Use space to jump down a page (like browsers do)
nnoremap <Space> <PageDown>

"
" Autocommands
"
augroup general 
  autocmd!
  " Source .vimrc on write
  au BufWritePost .vimrc source ~/.vimrc
  "and reload vim-powerline plugin after that
  au BufWritePost .vimrc call Pl#Load()

  " Save if focus lost
  au BufLeave,FocusLost * silent! wall

  au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
  au BufRead,BufNewFile /etc/nginx/* set ft=nginx 

  " php syntax bug. 
  "au BufRead *.php setlocal nocursorline

  " Make .sh files executable on write
  au BufWritePost *.sh silent !chmod a+x %
augroup END
"
" reload .vimrc after saving
augroup VimReload
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END


if has("autocmd")
  " Restore cursor position
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
  augroup php
  augroup END
endif

" Enable filetype detection
filetype plugin on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General behaviour
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use Vim settings, rather then Vi settings (much better!). This must be first, because it changes other options as a side effect.
set nocompatible
" do incremental searching
set incsearch
" don't wait ESC-sequences
set ttimeoutlen=100
" more commands history
set history=100
" ... and more undolevels
set undolevels=2048
" reread the changed files automatically
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
hi StatusLine guifg=White guibg=Blue gui=NONE ctermfg=White ctermbg=Blue

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" Using plugin "vim-powerline" instead of standart status line
"set statusline=%1*%m%*%2*%r%*%F%=\ Col:%3*%03c%*\ Ln:%3*%03l%*/%3*%03L%*\ File:%15*%{&filetype}%*/%3*%{&fileformat}%*/%3*%{&fileencoding}%*%<
" always show statusline
set laststatus=2

" show non-printing characters
"set list listchars=tab:··,trail:·,extends:»,precedes:«

set number
" set indentation as previous line
set autoindent
set smartindent
" Show name of buffer in terminal title
set title

set nolazyredraw
" show incomplete cmds down the bottom
set showcmd
" search and highlighting for brackets
set showmatch
" show brackets for HTML-tags
"set hlsearch
set ignorecase

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vars
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let javascript_fold=0
let g:NERDTreeWinSize=40
let mapleader = ","
let g:mapleader = ","
let g:yankring_manual_clipboard_check = 0
let g:yankring_history_dir = expand('$HOME').'/.vim/backups'
let g:yankring_history_file = '.yankring_history'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jslint
let g:JSLintHighlightErrorLine = 0 " don't show error in the main window
"
call pathogen#runtime_append_all_bundles()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands and mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -nargs=* Find :call Find(<f-args>)
command! Vimrc e ~/.vimrc
command! -bar -nargs=1 OpenURL :call OpenURLInBrowser(<q-args>)

" Key mappings
nnoremap <silent> <F2> :YRShow<CR> 
map <F3> <Esc>:setlocal nospell<CR>
map <F8> :BufExplorer<cr>
nmap <F9> :NERDTreeToggle<cr>
vmap <F9> <esc>:NERDTreeToggle<cr>i
imap <F9> <esc>:NERDTreeToggle<cr>i
map <silent> <F10> :wall<CR>:call FormatAll()<cr>:JSLintUpdate<cr>:cw<CR>



if has("autocmd")
  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
    augroup php
      autocmd BufRead *.php setlocal nocursorline
    augroup END
endif

" Enable filetype detection
filetype plugin on
filetype plugin indent on

autocmd BufLeave,FocusLost * silent! wall
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufRead,BufNewFile /etc/nginx/* set ft=nginx 

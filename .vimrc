" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set cursorline

" Включаем подсветку синтаксиса
syntax on
		
" do incremental searching
set incsearch

" не ждать завершения ESC-последовательностей
set ttimeoutlen=100

" читать параметры конфигурации из открытого файла
set modeline

" перечитывать изменённые файлы автоматически
set autoread

" использовать больше цветов в терминале
set t_Co=256

" разрешить backspace в режиме вставки
set backspace=2

" Копирует отступ от предыдущей строки
set autoindent
" Включаем 'умную' автоматическую расстановку отступов
set smartindent

set clipboard=unnamed,exclude:cons\\\|linux

"  заменять табы пробелами
set expandtab
" использовать табуляцию в 2 пробела
"set softtabstop=2
set shiftwidth=2
set tabstop=2
set smarttab

" расстояние до края при вертикальной прокрутке
set scrolloff=5
" размер прыжка при вертикальной прокрутке
set scrolljump=10

" открывать новое окно снизу
set splitbelow

" не вставлять лишних пробелов при объединении строк
set nojoinspaces

" строка статуса
set statusline=%1*%m%*%2*%r%*%F%=\ Col:%3*%03c%*\ Ln:%3*%03l%*/%3*%03L%*\ File:%15*%{&filetype}%*/%3*%{&fileformat}%*/%3*%{&fileencoding}%*%<
set laststatus=2

" показывать непечатаемые символы
"set list listchars=tab:··,trail:·,extends:»,precedes:«

" кодировка по-умолчанию
set encoding=utf-8
"порядок переборы кодировок
set fileencodings=utf-8,windows-1251,iso-8859-15,koi8-r

" больше истории команд
set history=50		
" ... и правок
set undolevels=2048

"  показывать строку с позицией курсора
set ruler

set number

" показывать имя буфера в заголовке терминала
set title

" перерисовывать буфер менее плавно
set nolazyredraw

" показывать буфер вводимой команды
set showcmd

" показывать первую парную скобку после ввода второй ...
"set showmatch

" показывать совпадающие скобки для HTML-тегов
set matchpairs+=<:>

" использовать wildmenu ...
set wildmenu
" ... с авто-дополнением
set wildcharm=<TAB>

" Отключаем создание бэкапов
"set nobackup
set backup

" Все swap файлы будут помещаться в эту папку
set dir=~/.vim/swp

" показывать строку статуса всегда
set laststatus=2

" включим автозамену по умолчанию
set et

" удалять лишние пробелы при отступе
set shiftround

" переносить длинные строки
set wrap

" автоотступы для новых строк
" set ai
"
" отступы в стиле Си
" set cin

" поиск и подсветка результатов и совпадения скобок
 set showmatch
 "set hlsearch
 set ignorecase

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
 set mouse=a
endif

"}}}

" Color settings {{{
"colorscheme lucius
color lucius
hi Normal           guifg=#e0e0e0           guibg=#202020
hi Normal           ctermfg=253             ctermbg=16
hi StatusLine guifg=White guibg=Blue gui=NONE ctermfg=White ctermbg=Blue
" }}}

" настройки для GUI {{{
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
" }}}
"
" {{{ Commands
command! -nargs=* Find :call Find(<f-args>)
command! Vimrc e ~/.vimrc
command! Medapp :call OpenProject('webmedapp')
command! -bar -nargs=1 OpenURL :call OpenURLInBrowser(<q-args>)
" }}} Commands

" {{{ Key mappings
map <F2> <Esc>:setlocal spell spelllang=en_gb<CR>
map <F3> <Esc>:setlocal nospell<CR>

map <F8> :BufExplorer<cr>

nmap <F9> :NERDTreeToggle<cr>
vmap <F9> <esc>:NERDTreeToggle<cr>i
imap <F9> <esc>:NERDTreeToggle<cr>i

map <silent> <F10> :w<CR>:make<CR>:call FormatAll()<cr>:cw<CR>

"set hidden

if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on
 
  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
    augroup php
      autocmd BufRead *.php setlocal nocursorline
    augroup END

endif

call pathogen#runtime_append_all_bundles() 
" }}}

" {{{ vars
let javascript_fold=0
let g:NERDTreeWinSize=40
let g:rails_mappings=0
let g:dojo_root='public/ria/src'
"With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
" }}} vars

" определять подсветку на основе кода файла
filetype plugin on
filetype plugin indent on

function! SKEL_spec()
	0r /usr/share/vim/current/skeletons/skeleton.spec
	language time en_US
	if $USER != ''
	    let login = $USER
	elseif $LOGNAME != ''
	    let login = $LOGNAME
	else
	    let login = 'unknown'
	endif
	let newline = stridx(login, "\n")
	if newline != -1
	    let login = strpart(login, 0, newline)
	endif
	if $HOSTNAME != ''
	    let hostname = $HOSTNAME
	else
	    let hostname = system('hostname -f')
	    if v:shell_error
		let hostname = 'localhost'
	    endif
	endif
	let newline = stridx(hostname, "\n")
	if newline != -1
	    let hostname = strpart(hostname, 0, newline)
	endif
	exe "%s/specRPM_CREATION_DATE/" . strftime("%a\ %b\ %d\ %Y") . "/ge"
	exe "%s/specRPM_CREATION_AUTHOR_MAIL/" . login . "@" . hostname . "/ge"
	exe "%s/specRPM_CREATION_NAME/" . expand("%:t:r") . "/ge"
	setf spec
endfunction

autocmd BufLeave,FocusLost * silent! wall
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

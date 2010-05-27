" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set cursorline

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set number
set expandtab
"set softtabstop=0
set shiftwidth=4
set shiftround
set tabstop=4
set scrolloff=5
set clipboard=unnamed,exclude:cons\\\|linux

set laststatus=2
set statusline=%1*%m%*%2*%r%*%F%=\ Col:%3*%03c%*\ Ln:%3*%03l%*/%3*%03L%*\ File:%15*%{&filetype}%*/%3*%{&fileformat}%*/%3*%{&fileencoding}%*%<


map <F9> :NERDTreeToggle<cr>
map <c-s> :w<cr>
map <c-tab> :BufExplorer<cr>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Включаем подсветку синтаксиса
syntax on

" определять подсветку на основе кода файла
filetype plugin on
filetype plugin indent on


" показывать непечатаемые символы
"set list listchars=tab:··,trail:·,extends:»,precedes:«

" кодировка по-умолчанию
set encoding=utf-8

" порядок перебора кодировок
set fileencodings=utf-8,windows-1251,iso-8859-15,koi8-r
 
color lucius
hi Normal           guifg=#e4e4e4           guibg=#000000

nnoremap <c-f> :FuzzyFinderFile \*\*/<cr>
" использовать wildmenu ...
set wildmenu

" ... с авто-дополнением
set wildcharm=<TAB>

" настройки сессий
set viminfo='128,/32,:32,<64,@32,s10,h,n~/.vim/viminfo

" настройки файлов с сессиями
set sessionoptions=curdir,buffers,tabpages

" Отключаем создание бэкапов
"set nobackup
set backup

" Отключаем создание swap файлов
"set noswapfile

" Все swap файлы будут помещаться в эту папку
set dir=~/.vim/swp

" показывать строку статуса всегда
set laststatus=2


set wm=0      " wrapmargin
set bs=2      " backspace

" Просмотр нетекстовых файлов в Vim -->
    au BufReadPost *.pdf silent %!pdftotext -nopgbrk "%" - |fmt -csw78
    au BufReadPost *.doc silent %!antiword "%"
    au BufReadPost *.odt silent %!odt2txt "%"
" Просмотр нетекстовых файлов в Vim <--


" --- настройки для GUI ---
if has("gui_running")

	" удалить всё меню в GUI
	aunmenu *

	" размеры окна при открытии
	set lines=75 columns=250

	" основные параметры отображения
	set guioptions=aci

	" использовать контекстное меню
	set mousemodel=popup

	" разрешить фокусу прыгать за мышью между окнами
	set mousefocus

	" не скрывать указатель при печати
	"set nomousehide

	" начинать обзор с каталога текущего буфера
	set browsedir=buffer

endif


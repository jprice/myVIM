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

" определять подсветку на основе кода файла
filetype plugin on
filetype plugin indent on

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
set showmatch

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
 set hlsearch
 set ignorecase

" ленивая перерисовка экрана при выполнении скриптов
" set lz

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
 set mouse=a
endif

"}}}


" тема, цвета {{{
"colorscheme lucius
color lucius
"hi Normal           guifg=#e4e4e4           guibg=#000000
"set background=dark
"highlight Normal ctermbg=0
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

endif
" }}}

" {{{ Key mappings
"map <c-s> :w<cr>
map <s-tab> :BufExplorer<cr>
map <F9> :NERDTreeToggle<cr>

map <F5> :! ./%<cr>

"
" }}}
"
" {{{ vars
let g:dojo_root='/home/al/projects/webmedapp/public/ria/src'
" }}}

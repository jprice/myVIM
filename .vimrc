" Setup Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins repos
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'alexbel/vim-rubygems'
Plugin 'alexbel/vim-whisper-theme'
Plugin 'AutoTag'
Plugin 'morhetz/gruvbox'
Plugin 'beloglazov/vim-online-thesaurus'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'bling/vim-airline'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'chrisbra/NrrwRgn'
Plugin 'danchoi/ri.vim'
Plugin 'duff/vim-scratch'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'gorkunov/smartpairs.vim'
Plugin 'gregsexton/gitv'
Plugin 'gregsexton/MatchTag'
Plugin 'IndexedSearch'
Plugin 'int3/vim-extradite'
Plugin 'ivalkeen/nerdtree-execute'
Plugin 'janx/vim-rubytest'
Plugin 'JSON.vim'
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'kana/vim-smartinput'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'mephux/vim-jsfmt'
Plugin 'mileszs/ack.vim'
Plugin 'nginx.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'Rykka/trans.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'slim-template/vim-slim'
Plugin 'smancill/conky-syntax.vim'
Plugin 'szw/vim-dict'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vimwiki'
Plugin 'wting/rust.vim'
Plugin 'YankRing.vim'
Plugin 'Yggdroot/indentLine'

" finishing setup vundle
call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General behaviour
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" vundle required
filetype off
" Look ahead as search pattern is specified
set incsearch
" Ignore case
set ignorecase
"...unless uppercase letters used
set smartcase

"Highlight all matches
"set hlsearch
" don't wait ESC-sequences
set ttimeoutlen=50
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

" fold based on indent
set foldmethod=manual
" don't fold by default
set nofoldenable

" Indent settings
" ---------------
set tabstop=2
set shiftwidth=2
" Default to 2 spaces as tabs
set softtabstop=2
" replace tabs by spaces
set expandtab
" Enable syntax coloring only for short lines
set synmaxcol=200

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

" more colors
set t_Co=256

" colors and theme overrides
set cursorline
let g:gruvbox_italic=0
let g:gruvbox_underline=0
set background=dark
colorscheme gruvbox

hi Boolean   ctermfg=73
hi Constant  ctermfg=73
hi CursorLineNr ctermfg=223 ctermbg=237
hi Directory ctermfg=107
hi Function  ctermfg=173 cterm=none
hi Type  ctermfg=179
hi Typedef  ctermfg=179
hi LineNr    ctermfg=243 ctermbg=237
hi Normal                ctermbg=black
hi Number    ctermfg=73
hi String    ctermfg=107

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

set lazyredraw

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
let g:syntastic_javascript_checkers    = ['jshint']
let g:syntastic_scss_checkers          = ['scss_lint']
let g:syntastic_auto_loc_list          = 1
let g:syntastic_loc_list_height        = 3
let g:syntastic_enable_highlighting    = 0
let g:syntastic_error_symbol           = '☠'
let g:syntastic_style_error_symbol     = '✘'
let g:syntastic_warning_symbol         = '⚠'
let g:syntastic_style_warning_symbol   = '≈'
let g:syntastic_css_csslint_args       = "--ignore= adjoining-classes,floats,font-faces,shorthand,font-sizes,regex-selectors,important"
" syntastic can't find right rvm version of ruby
let g:syntastic_ruby_exec = $HOME.'/.rvm/rubies/ruby-2.1.2/bin/ruby'

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
let g:ctrlp_map = 's'

" YankRing
let g:yankring_manual_clipboard_check = 0
let g:yankring_history_dir    = '~/tmp,/tmp,/var/tmp' " store history in RAM
let g:yankring_history_file   = '.yankring_history'
let g:yankring_replace_n_pkey = '<C-P>' " define again b/c of conflicts
let g:yankring_replace_n_nkey = '<C-B>' " with some other plugin
nnoremap <silent> <F4> :YRShow<CR>

" Ack
" grep word under cursor in current directory
nnoremap <Leader><Leader>g :Ack <cword><cr>

" vim-rubytests
let g:rubytest_in_quickfix  = 0
let g:rubytest_cmd_test     = "turn -Itest %p"
let g:rubytest_cmd_testcase = "turn -Itest %p -n /%c/"
let g:rubytest_cmd_spec     = "spring rspec %p"
let g:rubytest_cmd_example  = "spring rspec %p:'%c'"
let g:rubytest_cmd_feature  = "bundle exec cucumber %p"
let g:rubytest_cmd_story    = "bundle exec cucumber %p -n '%c'"

map <F3>      <Plug>RubyTestRun
map <Leader>t <Plug>RubyFileRun

" gist-vim
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_post_private = 1

" vimwiki
let g:vimwiki_list = [{'path': '~/.vimwiki/'}]

" Trans.vim
let g:trans_default_lang = 'ru'
"let g:trans_map_trans = '<leader>tt' by default

" Surround
" remap surround key mappings
" t+s(ingle) quotes, t+d(ouble) quotes
nmap ts csw'El
nmap td csw"El
nmap <leader>- yss-
nmap <leader>= yss=

" jdaddy
nnoremap <Leader>j :exe jdaddy#reformat('jdaddy#outer_pos', v:count1)<cr>

" indentLine
let g:indentLine_color_term = 236
let g:indentLine_noConcealCursor = 1

" vim-airline
let g:airline_symbols = {}
let g:airline_left_sep          = ''
let g:airline_right_sep         = ''
let g:airline_symbols.linenr    = '¶'
let g:airline_symbols.branch    = '⎇'
let g:airline#extensions#branch#enabled = 1
let g:airline_symbols.paste     = '⇲'
let g:airline_theme             = 'whisper'
let g:airline_symbols.space     = ' '

" emmet
let g:user_emmet_expandabbr_key = '<c-e>'

" vim-online-thesaurus
let g:online_thesaurus_map_keys = 0
nnoremap <Leader><Leader>r :OnlineThesaurusCurrentWord<CR>

" vim-jsfmt
let g:js_fmt_autosave = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands and mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Easy window navigation
noremap <space>h <C-w>h
noremap <space>j <C-w>j
noremap <space>k <C-w>k
noremap <space>l <C-w>l

command! Vimrc e ~/.vimrc

" Key mappings
map               <F1> <C-]>
imap              <F1> <Esc><C-]>
nmap              <F2> <C-O>
nnoremap          <F5>  :GundoToggle<CR>
map      <silent> <F9> :wall<CR>:call FormatAll()<CR> :w<CR>
nmap              <F10>       :NERDTreeToggle<cr>
vmap              <F10>  <esc>:NERDTreeToggle<cr>i
imap              <F10>  <esc>:NERDTreeToggle<cr>i
nmap     <silent> <F11> :BufExplorer<CR>
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

" swap : ;
nnoremap ; :

" remap esc
inoremap jj <Esc>

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

  " Save if focus lost
  au BufLeave,FocusLost * silent! wall

  au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
  au BufRead,BufNewFile *.coffee set ft=coffee syntax=coffee
  au BufRead,BufNewFile *.scss set ft=scss syntax=scss
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

  " open nerdtree when vim starts
  au vimenter * if !argc() | NERDTree | endif

augroup END

" Enable filetype detection
filetype plugin on
filetype plugin indent on

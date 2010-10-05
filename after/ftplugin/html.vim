" needs xmllint installed
" sudo apt-get install libxml2-utils

setlocal makeprg=xmllint\ --html\ --noout\ --valid\ %
setlocal errorformat=%f:%l:\ HTML\ parser\ error\ :\ %m
setlocal equalprg=js\ ~/.vim/plugin/beautify-cl.js\ html\ 'options={indent_size:2,indent_char:\"\ \"}'

map <buffer> <c-s> :call FormatAll()<cr>:call MakeSave()<cr>
imap <buffer> <c-s> <esc>:call FormatAll()<cr>:call MakeSave()<cr>

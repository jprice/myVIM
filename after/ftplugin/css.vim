setlocal makeprg=csslint\ %
setlocal errorformat=parsing\ error:\ %l:%c:%m

map <buffer> <c-s> :call FormatAll()<cr>:call MakeSave()<cr>
imap <buffer> <c-s> <esc>:call FormatAll()<cr>:call MakeSave()<cr>

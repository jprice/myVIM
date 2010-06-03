setlocal makeprg=xmllint\ %

map <buffer> <c-s> :call FormatHtml()<cr>:call MakeSave()<cr>
imap <buffer> <c-s> <esc>:call FormatHtml()<cr>:call MakeSave()<cr>


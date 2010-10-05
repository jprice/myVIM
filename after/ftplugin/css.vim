" needs css lint installed
" sudo apt-get install libccss-tools 
setlocal makeprg=csslint-0.6\ %\ 2>&1\ \\\|\ awk\ \'/^parsing\ error/{print(\"%\:\"$0)}\'\
setlocal errorformat=%f:parsing\ error:\ %l:%c:%m

map <buffer> <c-s> :call FormatAll()<cr>:call MakeSave()<cr>
imap <buffer> <c-s> <esc>:call FormatAll()<cr>:call MakeSave()<cr>

setlocal makeprg=cat\ %\ \\\|\ js\ ~/.vim/plugin/runjslint.js\ %
setlocal noexpandtab

map <buffer> <s-f> :call FormatJs()<cr>
map <buffer> <c-s> :call FormatJs()<cr>:call MakeSave()<cr>
imap <buffer> <c-s> <esc>:call FormatJs()<cr>:call MakeSave()<cr>

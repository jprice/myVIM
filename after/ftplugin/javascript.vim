setlocal makeprg=cat\ %\ \\\|\ js\ /home/al/.vim/plugin/runjslint.js\ %
setlocal noexpandtab

map <buffer> <s-f> :call FormatJs()<cr>
map <buffer> <c-s> :call FormatJs()<cr>:call MakeSave()<cr>
imap <buffer> <c-s> <esc>:call FormatJs()<cr>:call MakeSave()<cr>

noremap <buffer> <c-o> :call DojoOpenClassUnderCursor()<cr>

setlocal makeprg=cat\ %\ \\\|\ js\ /home/al/.vim/plugin/runjslint.js\ %
setlocal noexpandtab

map <buffer> <c-f> :call FormatJs()<cr>
map <buffer> <F2> :call FormatJs()<cr>:call MakeSave()<cr> :redraw!<cr>
imap <buffer> <c-s> <esc>:call FormatJs()<cr>:call MakeSave()<cr> :redraw!<cr>

noremap <buffer> <c-o> :call DojoOpenClassUnderCursor()<cr>

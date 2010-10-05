setlocal makeprg=cat\ %\ \\\|\ js\ ~/.vim/plugin/runjslint.js\ %
setlocal equalprg=js\ ~/.vim/plugin/beautify-cl.js\ js\ null
setlocal noexpandtab

map <buffer> <s-f> :call FormatAll()<cr>
map <buffer> <F2> :call FormatAll()<cr>:call MakeSave()<cr>
"imap <buffer> <F2> <esc>:call FormatAll()<cr>:call MakeSave()<cr>

noremap <buffer> gf :call DojoOpenClassUnderCursor()<cr>

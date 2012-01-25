setlocal equalprg=node\ ~/.vim/plugin/jsbeautify.js\ -n\ -i\ 1
setlocal noexpandtab

noremap <buffer> gf :call DojoOpenClassUnderCursor()<cr>

function! FormatAll()
  normal mp
  normal gg=G
  normal `p
  redraw!
endfun

function! MakeSave()
  w
  silent!make>/dev/null
  cw
  redraw!
endfunction

function! KeepVisualSelection(cmd)
  set nosmartindent
  if mode() ==# "V"
    return a:cmd . ":set smartindent\<CR>gv"
  else
    return a:cmd . ":set smartindent\<CR>"
  endif
endfunction

function! s:ChangeHashSyntax(line1,line2)
    let l:save_cursor = getpos(".")
    silent! execute ':' . a:line1 . ',' . a:line2 . 's/:\([a-z0-9_]\+\)\s\+=>/\1:/g'
    call setpos('.', l:save_cursor)
endfunction

command! -range=% ChangeHashSyntax call <SID>ChangeHashSyntax(<line1>,<line2>)

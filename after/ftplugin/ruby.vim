setlocal makeprg=ruby\ -c\ %
setlocal equalprg=rbeautify\ -\ 2>/dev/null

" requires rbeaurify gem for formatting
map <buffer> <c-s> :call FormatAll()<cr>:call MakeSave()<cr>
imap <buffer> <c-s> <esc>:call FormatAll()<cr>:call MakeSave()<cr>

nmap <buffer> gf              <Plug>RailsFind
nmap <buffer> <C-W>f          <Plug>RailsSplitFind
nmap <buffer> <C-W>gf         <Plug>RailsTabFind
nmap <buffer> [f              <Plug>RailsAlternate
nmap <buffer> ]f              <Plug>RailsRelated
imap <buffer> <C-CR> <C-O><Plug>RailsFind
imap <buffer> <M-[>  <C-O><Plug>RailsAlternate
imap <buffer> <M-]>  <C-O><Plug>RailsRelated

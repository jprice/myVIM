" Find file in current directory and edit it.
function! Find(...)
	let path="."
	if a:0==2
		let path=a:2
	endif
	let l:list=system("find ".path. " -name '*".a:1."*' | grep -v .svn ")
	let l:num=strlen(substitute(l:list, "[^\n]", "", "g"))
	if l:num < 1
		echo "'".a:1."' not found"
		return
	endif
	if l:num != 1
		let tmpfile = tempname()
		exe "redir! > " . tmpfile
		silent echon l:list
		redir END
		let old_efm = &efm
		set efm=%f

		if exists(":cgetfile")
			execute "silent! cgetfile " . tmpfile
		else
			execute "silent! cfile " . tmpfile
		endif

		let &efm = old_efm

		" Open the quickfix window below the current window
		botright copen

		call delete(tmpfile)
	endif
endfunction


" set showrt tab labels
function! ShortTabLine()
	let ret = ''
	for i in range(tabpagenr('$'))
		" select the color group for highlighting active tab
		if i + 1 == tabpagenr()
			let ret .= '%#errorMsg#'
		else
			let ret .= '%#TabLine#'
		endif
		" find the buffername for the tablabel
		let buflist = tabpagebuflist(i+1)
		let winnr = tabpagewinnr(i+1)
		let buffername = bufname(buflist[winnr-1])
		let filename = fnamemodify(buffername,':t')
		" check if there is no name
		if filename == ''
			let filename = 'noname'
		endif
		" only show the first 20 letters of the name and
		" .. if the filename is more than 18 letters long
		if strlen(filename) >= 20
			let ret .= '['. filename[0:18].'..]'
		else
			let ret .= '['.filename.']'
		endif
	endfor
	" after the last tab fill with TabLineFill and reset tab page #
	let ret .= '%#TabLineFill#%T'
	return ret
endfunction

function! FormatAll()
	normal mp
	normal gg=G
	normal `p
endfun

function! FormatJs()
  normal mp
  execute  "%!rhino ~/.vim/plugin/beautify-cl.js -a"
  normal `p
endfunction

function! FormatHtml()
  normal mp
  execute  "%!rhino ~/.vim/plugin/beautify-cl.js"
  normal `p
endfunction

function! MakeSave()
	w
	silent!make
	cw
endfunction

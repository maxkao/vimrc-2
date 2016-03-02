" ============================================================
"  Author: chusiang / chusiang.lai (at) gmail.com
"  Blog: http://note.drx.tw
"  Filename: 80-column-layout.vim
"  Modified: 2014-12-30 17:12
"  Description: 80 column layout setting.
"  Reference: 
" =========================================================== 

"set columns=80
""set textwidth=80
"
"if exists('+colorcolumn')
"	set colorcolumn=81
"	"hi	 ColorColumn	ctermfg=248		ctermbg=232		guifg=#a8a8a8  guibg=#080808
"	hi ColorColumn	ctermbg=232		guibg=#121212
"	let &colorcolumn="80,".join(range(120,999),",")
"else
"	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
"endif

function! HightLightOverLength()
	hi OverLength	ctermfg=white	ctermbg=darkred	guifg=white    guibg=#cc0000
    match OverLength /\%>80v.\+/
endfunction


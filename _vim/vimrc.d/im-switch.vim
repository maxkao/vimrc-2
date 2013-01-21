" = IM switch Environment =

if has('gui')
	" disable IM while leaving insert mode
	autocmd InsertEnter * set noimdisable
	autocmd InsertLeave * set imdisable
endif

" -----------------------------------
"  Author : Chu-Siang Lai
"  E-mail : jonny (at) drx.tw
"  Blog : http://note.drx.tw
" -----------------------------------

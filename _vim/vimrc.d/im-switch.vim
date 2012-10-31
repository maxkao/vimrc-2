" = IM switch Environment =

if has('gui')
	" disable IM while leaving insert mode
	autocmd InsertEnter * set noimdisable
	autocmd InsertLeave * set imdisable
endif

" -----------------------------------
"  Author : Chu-siang Lai
"  E-mail : jonny (at) ubuntu-tw.org
"  Blog : http://jonny.ubuntu-tw.net
" -----------------------------------

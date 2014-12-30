" ============================================================
"  Author: 凍仁翔 / chusiang.lai (at) gmail.com
"  Blog: http://note.drx.tw
"  Filename: blogger-template-fold.vim
"  Modified: 2014-12-30 17:24
"  Description: Blogger Template Fold
"  Reference: 
" =========================================================== 

function! GetBTFold() 
	if getline(v:lnum) =~ '\v\<(b:widget|b:includable|b:section|b:skin).{-}(\/)@<!\>'
		return 'a1'
	elseif getline(v:lnum) =~ '</\v(b:widget|b:includable|b:section|b:skin)\>'
		return 's1'
	else
		return "="
	endif
endfunction

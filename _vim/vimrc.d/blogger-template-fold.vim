" Blogger Template Fold

function! GetBTFold() 
	if getline(v:lnum) =~ '\v\<(b:widget|b:includable|b:section|b:skin).{-}(\/)@<!\>'
		return 'a1'
	elseif getline(v:lnum) =~ '</\v(b:widget|b:includable|b:section|b:skin)\>'
		return 's1'
	else
		return "="
	endif
endfunction

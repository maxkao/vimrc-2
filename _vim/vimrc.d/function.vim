" ============================================================
"  Author: 凍仁翔 / chusiang.lai (at) gmail.com
"  Blog: http://note.drx.tw
"  Filename: function.vim
"  Modified: 2014-12-30 17:22
"  Description: vim function sandbox. 
"  Reference: 
" =========================================================== 

function! SetTimeOfDayColors()
	let currenHour = strftime("%H")
	echo "currenHour is " . currenHour 

	if currenHour < 6 + 0
		let colorScheme = "darkblue"
	elseif currenHour < 12 + 0
		let colorScheme = "morning"
	elseif currenHour < 18 + 0
		let colorScheme = "shine"
	else
		let colorScheme = "evening"
	endif

	echo "setting color scheme to" . colorScheme
	execute "colorscheme " . colorScheme
endfunction

set dictionary-=~/.vim/vimrc.d/php-funclist.txt"

" vim`s function. 

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

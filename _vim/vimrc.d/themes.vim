" = Themes Environment =

set cursorline
set nocompatible

if has('gui')
	set number
	set guifont=Monospace\ 12
	set guioptions+=m	" add Menu.
	set guioptions-=e	" add Tab-Page.
	set guioptions-=T	" remove Toolbar.
	set guioptions-=b	" remove Scroll (Below).
	set guioptions-=l 	" remove Scroll (Left of Split window).
	set guioptions-=L 	" remove Scroll (Left).
	set guioptions-=r 	" remove Scroll (Right of Split window).
	set guioptions-=R 	" remove Scroll (Right).
	set t_Co=256		" support 256 color.

	" == Favorites Color ==
	colorscheme fu
	"colorscheme ir_black
	"colorscheme peaksea
	"colorscheme risto
	"colorscheme zenburn
	"colorscheme xterm16

endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
if !has('gui')
	set background=dark
endif

" -----------------------------------
"  Author : Chu-siang Lai
"  E-mail : jonny (at) ubuntu-tw.org
"  Blog : http://jonny.ubuntu-tw.net
" -----------------------------------

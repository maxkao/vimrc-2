" = Themes Environment =

set cursorline		"highlight line.
set cursorcolumn	"highlight colimn.
set nocompatible	" 不要向下相同。

" - always show the tab bar.
"set showtabline=2

" - Status Line
"set laststatus=2
" - [filetype] filename \t encoding file-format AscII Hex Line
"set statusline=%y\ %t\%r%h%w\ %m%=\ %{&fileencoding}\ [%{&ff}]\ [AscII=\%03.3b]\ [Hex=\%02.2B]\ [LINE=%L]\ [Pos=%l,%v,%p%%]
"set statusline=%y\ %t\%r%h%w\ %m%=\ %{&fileencoding}\ [%{&ff}]\ [AscII=\%03.3b]\ [LINE=%L]\ [Pos=%l,%v,%p%%]

if has('gui')
	set number
	set guioptions-=m	" remove Menu.
	set guioptions-=e	" remove Tab-Page.
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
	"set background=dark
	set t_Co=256		" support 256 color.
	colorscheme jellybeans
endif

" - font type and size setting.
if has('win32')
	set guifont=Consolas:h12
else
	set guifont=Monospace\ 14
endif

" -----------------------------------
"  Author : Chu-Siang Lai
"  E-mail : jonny (at) drx.tw
"  Blog : http://note.drx.tw
" -----------------------------------

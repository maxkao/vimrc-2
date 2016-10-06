" ============================================================
"  Author: chusiang / chusiang (at) drx.tw
"  Blog: http://note.drx.tw
"  Filename: im-switch.vim
"  Modified: 2016-10-06 19:00
"  Description: IM switch Environment
"  Reference: 
" =========================================================== 

if has('gui_macvim')
  " not thing.
elseif has('gui')
	" disable IM while leaving insert mode
	autocmd InsertEnter * set noimdisable
	autocmd InsertLeave * set imdisable
endif


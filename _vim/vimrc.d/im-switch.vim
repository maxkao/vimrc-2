" ============================================================
"  Author: 凍仁翔 / chusiang.lai (at) gmail.com
"  Blog: http://note.drx.tw
"  Filename: im-switch.vim
"  Modified: 2014-12-30 17:22
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


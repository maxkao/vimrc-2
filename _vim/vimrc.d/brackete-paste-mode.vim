
" ============================================================
"  Author: chusiang / chusiang.lai (at) gmail.com
"  Blog: http://note.drx.tw
"  Filename: brackete-paste-mode.vim
"  Description: Auto change to the paste mode at paste text from clipboard.
"  Modified: 2014-12-25 09:41
"  Reference: 
"   1. Auto change the Vim to paste mode in Linux, Mac, Putty | Tsung's blog
"     - http://blog.longwin.com.tw/2014/12/vim-linux-mac-putty-paste-mode-change-2014/'
" =========================================================== 

if &term =~ "xterm.*"
  let &t_ti = &t_ti . "\e[?2004h"
  let &t_te = "\e[?2004l" . &t_te
  function XTermPasteBegin(ret)
    set pastetoggle=<Esc>[201~
    set paste
    return a:ret
  endfunction
  map <expr> <Esc>[200~ XTermPasteBegin("i")
  imap <expr> <Esc>[200~ XTermPasteBegin("")
  cmap <Esc>[200~ <nop>
  cmap <Esc>[201~ <nop>
endif

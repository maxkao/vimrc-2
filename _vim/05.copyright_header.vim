" =============================================================================
"  Author: Chu-Siang Lai / chusiang (at) drx.tw
"  Blog: http://note.drx.tw
"  Filename: 05.copyright_header.vim
"  Modified: 2018-03-18 23:16
"  Description: Copyright Declare.
"  Reference: https://github.com/chusiang/vimrc/blob/master/_vim/05.copyright_header.vim
" =============================================================================

" Add and update declare.
map <leader>a :call TitleDet()<cr>'s
function! AddTitle()
  call append(1,"# =============================================================================")
  call append(2,"#  Author: Chu-Siang Lai / chusiang (at) drx.tw")
  call append(3,"#  Blog: http://note.drx.tw")
  call append(4,"#  Filename: ".expand("%:t"))
  call append(5,"#  Modified: ".strftime("%Y-%m-%d %H:%M"))
  call append(6,"#  Description: ")
  call append(7,"#  Reference:")
  call append(8,"# =============================================================================")
  echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf

" Update/modify time and Filename.
function! UpdateTitle()
  normal m'
  execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
  normal ''
  normal mk
  execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
  execute "noh"
  normal 'k
  echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction

" If the first seven lines of code in Last modified only updated, if not then
" declare new information.

function! TitleDet()
  let n=1
  " New information is expected to be declared.
  while n < 7
    let line = getline(n)
    if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
      call UpdateTitle()
      return
    endif
    let n = n + 1
  endwhile
  call AddTitle()
endfunction

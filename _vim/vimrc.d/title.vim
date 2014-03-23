" = 版權宣告的設定 =

" 新增或更新宣告。
map <leader>a :call TitleDet()<cr>'s
function! AddTitle()
  call append(1,"# ============================================================")
  call append(2,"#  Author: 凍仁翔 / chusiang.lai (at) gmail.com")
  call append(3,"#  Blog: http://note.drx.tw")
  call append(4,"#  Filename: ".expand("%:t"))
  call append(5,"#  Description: ")
  call append(6,"#  Last modified: ".strftime("%Y-%m-%d %H:%M"))
  call append(7,"# =========================================================== ")
  echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf

" 更新修改時間和檔名。
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

" 若前 7 行程式碼中有 Last modified 則只更新時間，若無則新增宣告資訊。
function! TitleDet()
  let n=1
  " 預計為新增宣告資訊。
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


" Source a global configuration file if available
for CONFIG in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
   exe 'source' CONFIG
endfor

" ------------------------------------
" Author : Chu-Siang Lai
" E-mail : jonny (at) drx.tw
" Blog : http://note.drx.tw
" ------------------------------------


" Source a global configuration file if available
for CONFIG in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
   exe 'source' CONFIG
endfor

" ------------------------------------
" Author : Chu-siang Lai
" E-mail : jonny (at) ubuntu-tw.org
" Blog : http://jonny.ubuntu-tw.net
" ------------------------------------

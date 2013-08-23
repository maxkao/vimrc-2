" Source a global configuration file if available
for CONFIG in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
   exe 'source' CONFIG
endfor

" = NeoBundle (Vim plugin manager) =

filetype off                   " required!

"use git:// as bundle default protocal
"let g:vundle_default_git_proto = 'git'

if has('win32')
    set rtp+=%UserProfile%\vimfiles/bundle/neobundle.vim/
else
    set rtp+=~/.vim/bundle/neobundle.vim/
endif


call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundle 'Shougo/neobundle.vim'

source ${HOME}/.vim/bundle-list.vim


filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif

" ------------------------------------
" Author : Chu-Siang Lai
" E-mail : jonny (at) drx.tw
" Blog : http://note.drx.tw
" ------------------------------------

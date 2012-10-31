" = Vundle (VIM model tool) =

filetype off                   " required!

"use git:// as bundle default protocal
"let g:vundle_default_git_proto = 'git'

if has('win32')
    set rtp+=%UserProfile%\vimfiles/bundle/vundle/
else
    set rtp+=~/.vim/bundle/vundle/
endif

call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

filetype plugin indent on     " required! 


""" snipMate 
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"
""" End snipMate 

""" NERDTree
Bundle "scrooloose/nerdtree"
nmap <leader>e :<C-u>NERDTree<CR>
""" End NERDTree

""" TagList
""Bundle 'taglist.vim'
""nmap <leader>t :<C-u>Tlist<CR>
""" End TagList

""" Tagbar
Bundle "majutsushi/tagbar"
nmap <leader>t :<C-u>TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0

if has('win32')
    let g:tagbar_ctags_bin='C:\ctags.exe'
endif

""" Omni Complete
set ofu=syntaxcomplete#Complete

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

"" OmniCppComplete
Bundle 'OmniCppComplete'

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags+=~/vimfiles/tags/tags
set tags+=~/vimfiles/tags/c++.tags
set tags+=~/vimfiles/tags/stl-3.3.tags
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
"" pythoncomplete
Bundle 'pythoncomplete'
""" End Omni Complete

""" VST :Vim reStructured Text 
Bundle 'VST'
""" End VST

""" c.vim
" Bundle 'vim-scripts/c.vim'
""" End c.vim

""" vim-surround
"Bundle 'tpope/vim-surround'
""" end vim-surround

""" numbers.vim
"Bundle "myusuf3/numbers.vim"
"nnoremap <F3> :NumbersToggle<CR>
""" end numbers.vim

""ctrlp.vim
Bundle 'kien/ctrlp.vim.git'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

""let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
""end ctrlp.vim

"" easymotion
"Bundle 'Lokaltog/vim-easymotion'
""end easymotion

""" Vimwiki
Bundle 'vimwiki.vim'

""" Gitv
"Bundle 'gitv.vim'				" need the fugitive plugin.
Bundle 'gregsexton/gitv'		" need the fugitive plugin.
Bundle 'tpope/vim-fugitive.vim'

""" Color
Bundle 'flazz/vim-colorschemes'

""" Fold
Bundle 'phpfolding.vim'

Bundle 'calendar.vim'

""" Start Syntax
Bundle 'vim-scripts/Python-Syntax'
Bundle 'php.vim'
Bundle 'jQuery'
Bundle 'css_color.vim'
"Bundle 'cpp.vim'
"Bundle 'django.vim'
Bundle 'plasticboy/vim-markdown'
"Bundle 'rest.vim'
"set syntax=rest

""" End Syntax

" Sample Bundles here:
"
"" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'rails.vim'
"" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
"
"
"""" Init Env""""

command InitENV call InitBundleEnv()

fun! InitBundleEnv()
   BundleInstall
   quit
   quit
endf

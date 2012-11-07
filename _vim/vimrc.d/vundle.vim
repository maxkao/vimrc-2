" = Plugin =

" == Vundle ==
" Vim plugin manager with Vundle [2].
"
" - Sample Bundles here:
"
"  - original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"
"  - vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'rails.vim'
"
"  - non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...
"
" - Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: [1] comments after Bundle command are not allowed..
" NOTE: [2] Github - https://github.com/gmarik/vundle
"

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

" == calendar.vim ==
Bundle 'calendar.vim'

" == Colorscheme ==
Bundle 'flazz/vim-colorschemes'

" == ctrlp.vim ==
Bundle 'kien/ctrlp.vim.git'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

""let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows


" == easymotion ==
"Bundle 'Lokaltog/vim-easymotion'
""end easymotion

" == Gitv - need the fugitive plugin ==
"Bundle 'gregsexton/gitv'
Bundle 'gitv'				
Bundle 'tpope/vim-fugitive'

" == Global Session ==
Bundle 'c9s/gsession.vim'
"Bundle 'gsession.vim'
let g:session_dir				= '$HOME/.vim/session'
"let g:local_session_filename	= '.session.vim'
let g:autoload_session = 0
let g:autosave_session = 0
"let g:gsession_non_default_mapping = 1

" == Matchit ==
Bundle 'matchit.zip'

" == NERDTree ==
Bundle 'scrooloose/nerdtree'

" == numbers.vim ==
"Bundle 'myusuf3/numbers.vim'

" == Omni Complete ==
set ofu=syntaxcomplete#Complete

" - Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" - Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif

let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" - OmniCppComplete
Bundle 'OmniCppComplete'

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

" == phpfolding.vim ==
Bundle 'phpfolding.vim'

" == Powerline for Vim ==
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
set fillchars+=stl:\ ,stlnc:\ 
"let g:Powerline_symbols = 'fancy'
"set -g default-terminal "screen-256color"

" == pythoncomplete ==
"Bundle 'pythoncomplete'

" == snipMate  ==
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'
Bundle 'garbas/vim-snipmate'

" == Ragtag =="
Bundle 'tpope/vim-ragtag'
" Ctrl x Enter = 產生對應的 tag，而且中間會加上斷行
" Ctrl x Space = 同上，但不會加上斷行

" == surround =="
" ex. [chusiang] → 'chusiang', <b>chusiang</b> → <u>chusiang</u>
Bundle 'tpope/vim-surround'
"Bundle 'surround'

" == Tagbar ==
Bundle 'majutsushi/tagbar'

let g:tagbar_autofocus = 1
let g:tagbar_sort = 0

if has('win32')
    let g:tagbar_ctags_bin='C:\ctags.exe'
endif

" == vim-indent-object ==
"Bundle 'michaeljsmith/vim-indent-object'
" v i i - 選取相同縮排層級的文字
" v a i - 同上，但會連帶上一層級也一併選取
" 


" == Vimwiki ==
Bundle 'vimwiki'

" - g:vimwiki_list* *vimwiki-multiple-wikies*.
let g:vimwiki_list = [
	\ {'path': '~/vimwiki/', 'index': 'index', 'path_html': '~/vimwiki/public_html/'},
	\ {'path': '~/vimwiki/diary/', 'index': 'gtd'},
	\ {'path': '~/vimwiki/csu/', 'index': 'index_csu'},
	\ {'path': '/media/data_ext3/home.d/vim/vimwiki-secret', 'index': 'secret'},
	\ {'path': '~/vimwiki/vim-like/', 'index': 'vim-like'},
	\ {'path': '~/vimwiki/radtek/',	'index': 'radtek'} ]

" - Header level color.
:hi VimwikiHeader1 guifg=#FF0000	" Red
:hi VimwikiHeader2 guifg=#FFDB00	" Yellow
:hi VimwikiHeader3 guifg=#9C9CE0	" Light Purple 
:hi VimwikiHeader4 guifg=#91B9E0	" Light Blue
:hi VimwikiHeader5 guifg=#999999	" Light Grey
:hi VimwikiHeader6 guifg=#49D432	" Light Green

" - Default Browser.
let g:vimwiki_browsers=['/usr/bin/firefox']

" == VST - Vim reStructured Text ==
Bundle 'VST'
let g:vst_write_export=1	" plugin of vst default export html.

" == Start Syntax ==
Bundle 'vim-scripts/Python-Syntax'
Bundle 'php.vim'
Bundle 'jQuery'
Bundle 'css_color.vim'
"Bundle 'cpp.vim'
"Bundle 'django.vim'
Bundle 'plasticboy/vim-markdown'
"Bundle 'rest.vim'
"set syntax=rest

" ----

" == Init Env ==
command InitENV call InitBundleEnv()

fun! InitBundleEnv()
   BundleInstall
   quit
   quit
endf

" -----------------------------------
"  Author : Chu-siang Lai
"  E-mail : jonny (at) ubuntu-tw.org
"  Blog : http://jonny.ubuntu-tw.net
" -----------------------------------


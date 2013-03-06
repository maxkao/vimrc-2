" = Plugin =

" == NeoBundle ==
" NeoBundle is Vim plugin manager based on Vundle [1].
"
" === Quick start ===
" 1. Configure bundles:
"	
"	Sample .vimrc:
"
"	set nocompatible               " Be iMproved
"	filetype off                   " Required!
"
"	if has('vim_starting')
"       set runtimepath+=~/.vim/bundle/neobundle.vim/
"	endif
"
"   call neobundle#rc(expand('~/.vim/bundle/'))
"
"   " Let NeoBundle manage NeoBundle
"   "NeoBundle 'Shougo/neobundle.vim'
"
"   " Recommended to install
"   " After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
"   NeoBundle 'Shougo/vimproc'
"
"   " My Bundles here:
"   "
"   " Note: You don't set neobundle setting in .gvimrc!
"   " Original repos on github
"   NeoBundle 'tpope/vim-fugitive'
"   NeoBundle 'Lokaltog/vim-easymotion'
"   NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"   " vim-scripts repos
"   NeoBundle 'L9'
"   NeoBundle 'FuzzyFinder'
"   NeoBundle 'rails.vim'
"   " Non github repos
"   NeoBundle 'git://git.wincent.com/command-t.git'
"   " Non git repos
"   NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
"   NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'
"
"   " ...
"
"   filetype plugin indent on     " Required!
"   "
"   " Brief help
"   " :NeoBundleList          - list configured bundles
"   " :NeoBundleInstall(!)    - install(update) bundles
"   " :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
"   " Installation check.
"   if neobundle#exists_not_installed_bundles()
"     echomsg 'Not installed bundles : ' .
"           \ string(neobundle#get_not_installed_bundle_names())
"     echomsg 'Please execute ":NeoBundleInstall" command.'
"     "finish
"   endif
"
" 2. Install configured bundles:
"
"   Launch vim, run :NeoBundleInstall, or :Unite neobundle/install (required unite.vim)
"
" === Docs ===
" see :h neobundle
"
" NOTE:
"  [1] Vundle on Github - https://github.com/gmarik/vundle
"  [2] NeoBundle.vim on Github - https://github.com/Shougo/neobundle.vim
"

" === Base configure ===
set nocompatible               " Be iMproved
filetype off                   " required!

if has('vim_starting')
endif


if has('win32')
    set runtimepath+=%UserProfile%\vimfiles/bundle/neobundle.vim/
else
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundle 'Shougo/neobundle.vim'

" === Recommended to install ===
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile

" - calendar.vim
"NeoBundle 'calendar.vim'
NeoBundle 'calendar.vim--Matsumoto'

" - Colorscheme
"NeoBundle 'flazz/vim-colorschemes'

" - ctrlp.vim
NeoBundle 'kien/ctrlp.vim.git'

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

" - easymotion
"NeoBundle 'Lokaltog/vim-easymotion'
""end easymotion

" - Gitv (need the fugitive plugin)
"NeoBundle 'gitv'				
NeoBundle 'gregsexton/gitv'
NeoBundle 'tpope/vim-fugitive'

" - Global Session
NeoBundle 'c9s/gsession.vim'
"NeoBundle 'gsession.vim'
let g:session_dir				= '$HOME/.vim/session'
"let g:local_session_filename	= '.session.vim'
let g:autoload_session = 0
let g:autosave_session = 0
"let g:gsession_non_default_mapping = 1

" -  Vim Git Gutter
NeoBundle 'airblade/vim-gitgutter'

" - Matchit
NeoBundle 'matchit.zip'

" - NERDTree
NeoBundle 'scrooloose/nerdtree'

" - numbers.vim
"NeoBundle 'myusuf3/numbers.vim'

" - Omni Complete
set ofu=syntaxcomplete#Complete

"  - Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"  - Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
	let g:neocomplcache_omni_patterns = {}
endif

"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
"let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" - OmniCppComplete
"NeoBundle 'OmniCppComplete'
"
"set tags+=~/vimfiles/tags/tags
"set tags+=~/vimfiles/tags/c++.tags
"set tags+=~/vimfiles/tags/stl-3.3.tags
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"let OmniCpp_MayCompleteDot = 1 " autocomplete with .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
"let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
"let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files

" - phpfolding.vim
NeoBundle 'phpfolding.vim'

" - Powerline for Vim
NeoBundle 'Lokaltog/vim-powerline'
set laststatus=2
set fillchars+=stl:\ ,stlnc:\ 
"let g:Powerline_symbols = 'fancy'
"set -g default-terminal "screen-256color"

" - pythoncomplete
"NeoBundle 'pythoncomplete'

" - snipMate
"  - Install dependencies:
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'honza/snipmate-snippets'

" - Install
NeoBundle 'garbas/vim-snipmate'

" - Ragtag
NeoBundle 'tpope/vim-ragtag'
" Ctrl x Enter = 產生對應的 tag，而且中間會加上斷行
" Ctrl x Space = 同上，但不會加上斷行

" - surround
" ex. [chusiang] → 'chusiang', <b>chusiang</b> → <u>chusiang</u>
NeoBundle 'tpope/vim-surround'
"NeoBundle 'surround'

" - Tagbar
NeoBundle 'majutsushi/tagbar'

let g:tagbar_autofocus = 1
let g:tagbar_sort = 0

if has('win32')
	let g:tagbar_ctags_bin='C:\ctags.exe'
endif

" - vim-indent-object
"NeoBundle 'michaeljsmith/vim-indent-object'
" v i i - 選取相同縮排層級的文字
" v a i - 同上，但會連帶上一層級也一併選取

" - Vimwiki
NeoBundle 'vimwiki'

"  - g:vimwiki_list* *vimwiki-multiple-wikies*.
let g:vimwiki_list = [
			\ {'path': '~/vimwiki/', 'index': 'index', 'path_html': '~/vimwiki/public_html/'},
			\ {'path': '~/vimwiki/diary/', 'index': 'gtd'},
			\ {'path': '~/vimwiki/csu/', 'index': 'index_csu'},
			\ {'path': '/media/data_ext3/home.d/vim/vimwiki-secret', 'index': 'secret'},
			\ {'path': '~/vimwiki/vim-like/', 'index': 'vim-like'},
			\ {'path': '~/vimwiki/radtek/',	'index': 'radtek'} ]

"  - Header level color.
:hi VimwikiHeader1 guifg=#FF0000	" Red
:hi VimwikiHeader2 guifg=#FFDB00	" Yellow
:hi VimwikiHeader3 guifg=#9C9CE0	" Light Purple 
:hi VimwikiHeader4 guifg=#91B9E0	" Light Blue
:hi VimwikiHeader5 guifg=#999999	" Light Grey
:hi VimwikiHeader6 guifg=#49D432	" Light Green

"  - Default Browser.
let g:vimwiki_browsers=['/usr/bin/firefox']

" - VST (Vim reStructured Text)
NeoBundle 'VST'
let g:vst_write_export=1	" plugin of vst default export html.

" - Start Syntax
NeoBundle 'Python-Syntax'
NeoBundle 'php.vim'
NeoBundle 'jQuery'
NeoBundle 'css_color.vim'
"NeoBundle 'cpp.vim'
"NeoBundle 'django.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'rest.vim'
"set syntax=rest

" ----

filetype plugin indent on     " required! 
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" === Installation check ===
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif

" -----------------------------------
"  Author : Chu-Siang Lai
"  E-mail : jonny (at) drx.tw
"  Blog : http://note.drx.tw
" -----------------------------------


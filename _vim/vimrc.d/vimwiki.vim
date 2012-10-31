" = VimWiki Environment =

" == g:vimwiki_list* *vimwiki-multiple-wikies* ==
"let wiki_1 = {}
"let wiki_1.path = '~/vimwiki/'
"let wiki_1.index = 'index'
"
"let wiki_2 = {}
"let wiki_2.path = '~/vimwiki/radtek/'
"let wiki_2.index = 'radtek'
"
""let wiki_3 = {'path': '~/vimwiki/vim-like/','index': 'vim-like' , 'path_html': '~/vimwiki/vim-like/public_html/'}
"let wiki_3 = {}
"let wiki_3.path = '~/vimwiki/vim-like/'
"let wiki_3.index = 'vim-like'
"let wiki_3.path_html = '~/vimwiki/vim-like/public_html/'
"
"let g:vimwiki_list = [wiki_1, wiki_2, wiki_3]

let g:vimwiki_list = [
	\ {'path': '~/vimwiki/', 'index': 'index', 'path_html': '~/vimwiki/public_html/'},
	\ {'path': '~/vimwiki/diary/', 'index': 'gtd'},
	\ {'path': '~/vimwiki/csu/', 'index': 'index_csu'},
	\ {'path': '/media/data_ext3/home.d/vim/vimwiki-secret', 'index': 'secret'},
	\ {'path': '~/vimwiki/vim-like/', 'index': 'vim-like'},
	\ {'path': '~/vimwiki/radtek/',	'index': 'radtek'} ]

" == Header level color ==
" Red
:hi VimwikiHeader1 guifg=#FF0000

" Yellow
:hi VimwikiHeader2 guifg=#FFDB00

" Light Purple 
:hi VimwikiHeader3 guifg=#9C9CE0

" Light Blue
:hi VimwikiHeader4 guifg=#91B9E0

" Light Grey
:hi VimwikiHeader5 guifg=#999999

" Light Green
:hi VimwikiHeader6 guifg=#49D432

" == Default Browser ==
let g:vimwiki_browsers=['/usr/bin/firefox']

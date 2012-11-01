" = Plugin =

" === Gitv ===
"nmap <leader>gv :Gitv --all<CR>
"nmap <leader>gV :Gitv! --all<CR>
"vmap <leader>gV :Gitv! --all<CR>

" === phpfolding.vim ===
" - keymap.
autocmd FileType php noremap <F4> :!php -l % <CR>
autocmd FileType php noremap <F5> <Esc>:EnableFastPHPFolds<Cr>
autocmd FileType php noremap <F6> <Esc>:EnablePHPFolds<Cr>
autocmd FileType php noremap <F7> <Esc>:DisablePHPFolds<Cr> 

" == Trinity ==
" - keymap.
"nmap <leader>ta	:TrinityToggleAll <CR>
"nmap <leader>l	:TrinityToggleTagList <CR>
"nmap <leader>e	:TrinityToggleNERDTree <CR>	 
"nmap <leader>b	:TrinityToggleSourceExplorer <CR>
"nmap <leader>d	:Calendar <CR>

" == Vimwiki ==
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

" - keymap.
autocmd BufRead,BufNewFile *.wiki noremap	<leader>wtb	:VimwikiTable <CR>
autocmd BufRead,BufNewFile *.wiki noremap	<leader>wj	:VimwikiDiaryNextDay <CR>
autocmd BufRead,BufNewFile *.wiki noremap	<leader>wk	:VimwikiDiaryPrevDay <CR>
autocmd BufRead,BufNewFile *.wiki noremap	<leader>wo	<C-Space> <CR>
autocmd BufRead,BufNewFile *.wiki noremap	<leader>wtm	:r /home/jonny/vimwiki/time-management-for-system-administrators.wiki <CR>
autocmd BufRead,BufNewFile *.wiki noremap	<C-j>		:VimwikiDiaryNextDay <CR>
autocmd BufRead,BufNewFile *.wiki noremap	<C-k>		:VimwikiDiaryPrevDay <CR>
"autocmd BufRead,BufNewFile *.wiki nmap		<C-o>		<C-Space> <CR>
"nmap <C-J>		:VimwikiDiaryNextDay <CR>	" old syntax.
"nmap <C-K>		:VimwikiDiaryPrevDay <CR>

"  - GTD.
nmap <leader>g	2<leader>ww:Calendar<CR><C-w>w<C-w>s<leader>w<leader>wgg
"nmap <leader>g	2<leader>ww:Calendar<CR><C-w>wgg

" == VST (Vim reStructured Text) ==
let g:vst_write_export=1	" plugin of vst default export html.


" -----------------------------------
"  Author : Chu-siang Lai
"  E-mail : jonny (at) ubuntu-tw.org
"  Blog : http://jonny.ubuntu-tw.net
" -----------------------------------

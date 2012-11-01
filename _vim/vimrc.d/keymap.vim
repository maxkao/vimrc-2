" = Cutsom hotkey Environment =
"imap <C-I>	<ESC>

" Re-Read vim Configure.
nmap <leader>s		:source $HOME/.vimrc <CR>

" quick quit vim.
nmap <C-d>	:x <CR>

" == Save ==
"imap <C-S> <ESC>:w <CR>i
"nmap <C-S> :w <CR>
cmap WW	:w <CR>

" == Copy ==
" - Copy the characters under the cursor until the end
imap <leader>y	<C-o>y$<ESC>
nmap <leader>y	y$

vmap <C-c>	y <CR>
vmap <S-c>	"+y <CR>

" == Command Mode ==
"cmap <C-e> <end>
"cnoremap <C-b> <home>
"cnoremap <C-f> (history)

" == Paste ==
"imap <C-B>	<ESC>p
"nmap <S-V>	<ESC>"+gp
nmap <leader>v	<ESC>"+gp
"nmap <S-B>	<ESC>"+gP
nmap <leader>p	:set paste <CR>
nmap <leader>np	:set nopaste <CR>

" == Tabs ==
nmap tt		:tabnew <CR>
nmap td		:tabclose <CR>
nmap tj		:tabnext <CR>
nmap tk	 	:tabprev <CR>
"nmap tn		:tabnext <CR>
"nmap tp	 	:tabprev <CR>
nmap te		:Texplore <CR>

" == Indent ==
"imap <S-tab> <esc>m`<<``i
nmap <TAB> v>
nmap <S-TAB> v<
"xnoremap <tab> >gv
"vmap <tab> >gv
"xnoremap <s-tab> <gv

" == Scroll ==
" - hide scroll of split windows mode.
nmap +b		:set guioptions+=b <CR>
nmap +l		:set guioptions+=L <CR>
nmap +r		:set guioptions+=r <CR>
nmap -b		:set guioptions-=b <CR>
nmap -l		:set guioptions-=L <CR>
nmap -r		:set guioptions-=r <CR>

" == Split ==
nmap <C-tab>	<C-w>w
imap <C-tab>	<C-o><C-w>w
nmap <C-h>		<C-w>h
nmap <C-l>		<C-w>l

" == Folding ==
inoremap <F9> <C-o>za
nnoremap <F9> za
onoremap <F9> <C-c>za
"vnoremap <F9> zf

" == Font Size ==
nmap <leader>f0	:set guifont=Monospace\ 14 <CR>
nmap <leader>f`	:set guifont=Monospace\ 10 <CR>
nmap <leader>f1	:set guifont=Monospace\ 12 <CR>
nmap <leader>f2	:set guifont=Monospace\ 14 <CR>
nmap <leader>f3	:set guifont=Monospace\ 16 <CR>
nmap <leader>f4	:set guifont=Monospace\ 20 <CR>

" == 補齊括弧 ==
" inoremap  triger_char  mapping_str
" 映射指令     觸發字元     映射字串
"
" 註：<LEFT> 為向右鍵字元。
inoremap ( ()<LEFT>
"inoremap < <><LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
"inoremap " ""<LEFT>

" 自動補齊
inoremap  <leader><tab> <C-x><C-p>

" -----------------------------------
"  Author : Chu-siang Lai
"  E-mail : jonny (at) ubuntu-tw.org
"  Blog : http://jonny.ubuntu-tw.net
" -----------------------------------

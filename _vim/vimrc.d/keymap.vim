" = Cutsom Hotkey =

" == ESC ==
"imap <C-I>	<ESC>
"imap <C-O>	<ESC>

" == Cursor Move ==
" - insert mode
imap <C-h> <left>
imap <C-j> <down>
imap <C-k> <up>
imap <C-l> <right>

" - command mode
cmap <C-h> <left>
cmap <C-j> <down>
cmap <C-k> <up>
cmap <C-l> <right>
cmap <c-0> <home>
cmap <c-e> <end>
cnoremap <c-d> <del>

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
nmap te		:Texplore <CR>
map <A-1>	:tabn1 <CR>
map <A-2>	:tabn2 <CR>
map <A-3>	:tabn3 <CR>
map <A-4>	:tabn4 <CR>
map <A-5>	:tabn5 <CR>
map <A-6>	:tabn6 <CR>
map <A-7>	:tabn7 <CR>
map <A-8>	:tabn8 <CR>
map <A-9>	:tabn9 <CR>

" == Indent ==
"imap <S-tab> <esc>m`<<``i
"nmap <TAB> v>
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

" == 自動補齊 ==
inoremap  <leader><tab> <C-x><C-p>

" - 自動補齊括弧
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

" == Quick Search ==
"nnoremap <F3> :NumbersToggle<CR>
nmap <f3>	/<C-r>0<CR>

" == Color Scheme ==
nmap <leader>cf	:colorscheme fu <CR>
nmap <leader>cj	:colorscheme jellybeans <CR>

" -----------------------------------
"  Author : Chu-Siang Lai
"  E-mail : jonny (at) drx.tw
"  Blog : http://note.drx.tw
" -----------------------------------


" ============================================================
"  Author: chusiang / chusiang.lai (at) gmail.com
"  Blog: http://note.drx.tw
"  Filename: keymap.vim
"  Modified: 2014-12-30 17:14
"  Description: Cutsom the shortcut-key / hot-key/ keymap for Myself.
" =========================================================== 

" - <leader>
let mapleader = ","

" - ESC
"imap <C-I>	<ESC>
"imap <C-O>	<ESC>
inoremap jj <ESC>

" - ~ 
cmap <S-ESC> ~
cmap <S-ESC> ~
inoremap <S-ESC> ~

" - Cursor Move
"  - insert mode
"imap <C-h> <left>
imap <C-b> <left>
imap <C-j> <down>
imap <C-k> <up>
imap <C-l> <right>
imap <C-f> <right>
imap <C-a> <home>
imap <C-e> <end>

"  - command mode
"cmap <C-h> <left>
cmap <C-b> <left>
cmap <C-j> <down>
cmap <C-k> <up>
cmap <C-l> <right>
cmap <C-f> <right>
cmap <C-a> <home>
cmap <C-e> <end>
cnoremap <C-x> <del>

"  - move one line down and up.
if has('gui_macvim')
  nmap <D-j>    :.m.+1<cr>
  nmap <D-k>    :.m.-2<cr>
  nmap <D-down> :.m.+1<cr>
  nmap <D-up>   :.m.-2<cr>
else
  nmap <A-j>    :.m.+1<cr>
  nmap <A-k>    :.m.-2<cr>
  nmap <A-down> :.m.+1<cr>
  nmap <A-up>   :.m.-2<cr>
endif


" - Re-Read vim Configure.
nmap <leader>s		:source $HOME/.vimrc <CR>

" - quick quit vim.
nmap Z	:x <CR>

" - list buffers files.
nmap <leader>l	:ls

" - Save
"imap <C-S> <ESC>:w <CR>i
"nmap <C-S> :w <CR>
cmap WW	:w <CR>

" - Copy
if !has('gui_macvim')
  vmap <A-c>	"+y
endif
nmap <leader>y	y$

"  - Copy the characters under the cursor until the end
imap <leader>y	<C-o>y$<ESC>

" - Command Mode
"cmap <C-e> <end>
"cnoremap <C-b> <home>
"cnoremap <C-f> (history)

" - Paste
if !has('gui_macvim')
  imap <A-v>	<ESC>"+pa
  nmap <A-v>	"+pa
endif
"nmap <leader>p	:set paste <CR>
"nmap <leader>np	:set nopaste <CR>

" - Tabs
nmap tt		:tabnew <CR>
"nmap td		:tabclose <CR>
nmap tj		:tabnext <CR>
nmap tk	 	:tabprev <CR>
nmap te		:Texplore <CR>

if has('gui_macvim')
  nmap <D-1>	:tabn1 <CR>
  nmap <D-2>	:tabn2 <CR>
  nmap <D-3>	:tabn3 <CR>
  nmap <D-4>	:tabn4 <CR>
  nmap <D-5>	:tabn5 <CR>
  nmap <D-6>	:tabn6 <CR>
  nmap <D-7>	:tabn7 <CR>
  nmap <D-8>	:tabn8 <CR>
  nmap <D-9>	:tabn9 <CR>
else
  nmap <A-1>	:tabn1 <CR>
  nmap <A-2>	:tabn2 <CR>
  nmap <A-3>	:tabn3 <CR>
  nmap <A-4>	:tabn4 <CR>
  nmap <A-5>	:tabn5 <CR>
  nmap <A-6>	:tabn6 <CR>
  nmap <A-7>	:tabn7 <CR>
  nmap <A-8>	:tabn8 <CR>
  nmap <A-9>	:tabn9 <CR>
endif


" - Indent
imap <S-tab> <esc>m`<<``i
nmap <TAB> v>
nmap <S-TAB> v<
xnoremap <tab> >gv
vmap <tab> >gv
xnoremap <s-tab> <gv

" - Scroll
"  - hide scroll of split windows mode.
"nmap +b		:set guioptions+=b <CR>
"nmap +l		:set guioptions+=L <CR>
"nmap +r		:set guioptions+=r <CR>
"nmap -b		:set guioptions-=b <CR>
"nmap -l		:set guioptions-=L <CR>
"nmap -r		:set guioptions-=r <CR>
nmap <F7>		:set guioptions+=mT <CR>
nmap <F8>		:set guioptions-=mT <CR>

"  - Split
nmap <C-tab>	<C-w>w
imap <C-tab>	<C-o><C-w>w
nmap <C-h>		<C-w>h
nmap <C-l>		<C-w>l

" - Folding
"inoremap <F2> <C-o>za
"nnoremap <F2> za
"onoremap <F2> <C-c>za
"vnoremap <F9> zf
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
vnoremap <space> zf

" - Font Size
if has('gui_macvim')
  nmap <leader>f0	:set guifont=Monaco:h15 <CR>
  nmap <leader>f`	:set guifont=Monaco:h10 <CR>
  nmap <leader>f1	:set guifont=Monaco:h12 <CR>
  nmap <leader>f2	:set guifont=Monaco:h14 <CR>
  nmap <leader>f3	:set guifont=Monaco:h16 <CR>
  nmap <leader>f4	:set guifont=Monaco:h20 <CR>
elseif has('win32')
  nmap <leader>f0	:set guifont=Consolas:h14 <CR>
  nmap <leader>f`	:set guifont=Consolas:h10 <CR>
  nmap <leader>f1	:set guifont=Consolas:h12 <CR>
  nmap <leader>f2	:set guifont=Consolas:h14 <CR>
  nmap <leader>f3	:set guifont=Consolas:h16 <CR>
  nmap <leader>f4	:set guifont=Consolas:h20 <CR>
else
  nmap <leader>f0	:set guifont=Monospace\ 14 <CR>
  nmap <leader>f`	:set guifont=Monospace\ 10 <CR>
  nmap <leader>f1	:set guifont=Monospace\ 12 <CR>
  nmap <leader>f2	:set guifont=Monospace\ 14 <CR>
  nmap <leader>f3	:set guifont=Monospace\ 16 <CR>
  nmap <leader>f4	:set guifont=Monospace\ 20 <CR>
endif

" - auto completion
inoremap  <leader><tab> <C-x><C-p>

"  - auto completion the brackets
" inoremap  triger_char  mapping_str
"
"inoremap ( ()<LEFT>
"inoremap < <><LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
"inoremap " ""<LEFT>

" - Quick Search
"nnoremap <F3> :NumbersToggle<CR>
nmap <F3>	/<C-r>0<CR>

" - Color Scheme
nmap <leader>cf	:colorscheme fu <CR>
nmap <leader>cj	:colorscheme jellybeans <CR>

" - Preview current HTML file
"  - local.drx.tw (PHP)
nnoremap <F5> :silent update<Bar>silent !firefox %:p:s?\(.\{-}/\)\{4}?http://local.drx.tw/?<CR>
nnoremap <leader><F5> :silent update<Bar>silent !chrome %:p:s?\(.\{-}/\)\{4}?http://local.drx.tw/?<CR>

"  - current file (Ex: html, txt) 

if has('gui_macvim')
  nnoremap <F6> :!open /Applications/Firefox.app %<CR>
else
  nnoremap <F6> :silent update<Bar>silent !firefox %:p &<CR>
  nnoremap <leader><F6> :silent update<Bar>silent !chrome %:p &<CR>
endif

" - 80 column layout
"nmap <leader>l :call HightLightOverLength()<CR>
"nnoremap <leader>r :set columns=80<CR>

" - Quick open $HOME
nmap <leader>h		:tabnew <CR>:e $HOME<CR>

" - HTML
"
"  - b
autocmd FileType html,markdown imap <C-s-b> <ESC>bi<b><ESC>ea</b><ESC>F<i
"
"  - i
"imap <C-s-i> <ESC>bi<i><ESC>ea</i><ESC>F/hi
"
"  - a
"imap <C-a> <ESC>bi<a href=""><ESC>ea</a><ESC>F>hi
"autocmd FileType html,markdown imap <C-s-a> <ESC>bi<a target="_blank" href=""><ESC>ea</a><ESC>F>hi
"
"  - strike
autocmd FileType html,markdown imap <C-s-d> <ESC>bi<strike><ESC>ea</strike><ESC>F<i
"
"  - center
autocmd FileType html,markdown imap <C-s-r> <ESC>bi<center><ESC>ea</center><ESC>F<i
"
"  - #
autocmd FileType html,markdown imap <C-s-g> <ESC>bi<span class="Comment"><ESC>ea</span><ESC>F>a# <ESC>f<i
"
autocmd FileType html,markdown imap <C-s-z> <!--more-->


"imap <C-i> <ESC>bi<i><ESC>ea</i> 

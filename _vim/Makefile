# =============================================================================
#  Author: Chu-Siang Lai / chusiang (at) drx.tw
#  Blog: http://note.drx.tw
#  Filename: Makefile
#  Modified: 2018-03-19 00:16
#  Description: sync vimrc from home to git.
#  Reference: https://github.com/chusiang/vimrc/blob/master/_vim/Makefile
# =============================================================================

.PHONY: all sync clean

main: sync

sync:
	cp -a ${HOME}/.vimrc ${HOME}/vcs/vimrc/_vimrc
	cp -a ${HOME}/.vim/* ${HOME}/vcs/vimrc/_vim/


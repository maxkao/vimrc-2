# ============================================================
#  Author: chusiang / chusiang.lai (at) gmail.com
#  Blog: http://note.drx.tw
#  Filename: Makefile
#  Modified: 2014-12-30 17:11
#  Description: sync vimrc from home to git.
# =========================================================== 

TIMESTAMP=`date "+%Y-%m-%d-%H:%M:%S"`

# vimrc at home.
FILE_VIMRC=${HOME}/.vimrc
FILE_GVIMRC=${HOME}/.gvimrc
DIR_VIM=${HOME}/.vim
DIR_VIM_BAK=${HOME}/.vim.bak-${TIMESTAMP}

# vimrc at git.
DIR_VIM_GIT=${HOME}/vcs/vimrc
FILE_VIMRC_GIT=${HOME}/vcs/vimrc/_vimrc

.PHONY: all sync clean

all: sync

sync:
	cp -a ${FILE_VIMRC} ${FILE_VIMRC_GIT}
	cp -a ${DIR_VIM}/vimrc.d/* ${DIR_VIM_GIT}/_vim/vimrc.d/
	cp -a ${DIR_VIM}/plugin-list.vim  ${DIR_VIM_GIT}/_vim/

clean:


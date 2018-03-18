# =============================================================================
#  Author: Chu-Siang Lai / chusiang (at) drx.tw
#  Blog: http://note.drx.tw
#  Filename: Makefile
#  Modified: 2018-03-19 00:23
#  Description: Install this with Make.
#  Reference: https://github.com/chusiang/vimrc/blob/master/Makefile
# =============================================================================

.PHONY: all main backup install update clean clean-backup-file

TIMESTAMP=`date "+%Y-%m-%d-%H:%M:%S"`
FILE_VIMRC=${HOME}/.vimrc
FILE_GVIMRC=${HOME}/.gvimrc
DIR_VIM=${HOME}/.vim
DIR_VIM_BAK=${HOME}/.vim.bak-${TIMESTAMP}

main: update

all: backup install

backup:
	@echo '==> Backup original vimrc ...'
	mkdir ${DIR_VIM_BAK}
	mv    ${FILE_VIMRC}   ${DIR_VIM_BAK}/
	mv    ${FILE_GVIMRC}  ${DIR_VIM_BAK}/
	mv    ${DIR_VIM}      ${DIR_VIM_BAK}/

	@echo '==> Backup setting success.'

install:
	@echo '==> Copy vimrc ...'
	cat _vimrc  > ${FILE_VIMRC}
	cat _gvimrc > ${FILE_GVIMRC}
	cp -a _vim    ${DIR_VIM}

	@echo '==> Install dein.vim ...'
	curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein_installer.sh
	sh ./dein_installer.sh ${DIR_VIM}/bundle/
	rm -f dein_installer.sh

	@echo '==> Install plugins ...'
	vim -c "try | call dein#install() | finally | qall! | endtry" -Ne

	@echo '==> Done.'

update:
	@echo '==> Update plugins ...'
	vim -c "try | call dein#update() | finally | qall! | endtry" -Ne

	@echo '==> Done.'

clean: clean-backup-file
	@echo "==> Starting cleaning vim file ..."
	rm -f ${HOME}/.gvimrc
	rm -f ${HOME}/.vimrc
	rm -rf ${HOME}/.vim/

	@echo '==> Done.'

clean-backup-file:
	@echo "==> Starting cleaning vim's backup file ..."
	rm -rf ${HOME}/.vim_bak*

	@echo '==> Done.'

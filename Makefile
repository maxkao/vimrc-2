# =============================================================================
#  Author: Chu-Siang Lai / chusiang (at) drx.tw
#  Blog: http://note.drx.tw
#  Filename: Makefile
#  Modified: 2019-07-25 00:12
#  Description: Install this with Make.
#  Reference: https://github.com/chusiang/vimrc/blob/master/Makefile
# =============================================================================

.PHONY: all main backup install update clean clean-backup-file check	\
	yaml_check travis_check

TIMESTAMP=`date "+%Y-%m-%d-%H:%M:%S"`
FILE_VIMRC=${HOME}/.vimrc
FILE_GVIMRC=${HOME}/.gvimrc
DIR_VIM=${HOME}/.vim
DIR_VIM_BAK=${HOME}/.vim.bak-${TIMESTAMP}
DEIN_TARGET=~/.vim/bundle/repos/github.com/Shougo/dein.vim

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
	mkdir -p      ${DIR_VIM}/
	cp -r _vim/*  ${DIR_VIM}/

	@echo '==> Install dein.vim ...'
ifneq ("$(wildcard ${DEIN_TARGET})","")
	# Target of "${DEIN_TARGET}" is exist, ignore ...
else
	mkdir -p ${DEIN_TARGET}
	git clone https://github.com/Shougo/dein.vim ${DEIN_TARGET}
endif

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

check: yaml_check travis_check

yaml_check:
	find -name "*.yml" -type f -exec yamllint {} \;

travis_check:
	travis lint .travis.yml

========================================
It's my vim config setting 
========================================
:Author:
    Chu-Siang Lai (凍仁翔)
:Build Date:
    2012/10/31
:Version:
    2.0
:forked from:
    `@Aminzai <https://github.com/aminzai>`_/`vimrc <https://github.com/aminzai/vimrc>`_

Introduction
========================================
This verison use vundle that can get the newest vim script use eazy way.

Require
========================================
1. Git
2. Network
#. make (Unix Link Only)
#. Vim
#. Curl

Installation
========================================

- windows
  - WindowsInstall.bat
- Linux & MacOSX
  - make install

Update
========================================
1. use vim (comaand mode), run command BundleInstall
2. use make, $make update 
*Just support Unix like system

Backup
========================================
This version can auto backup orginal config before install.

Backup directory: ${HOME}/.vim_back-${data}

*Just support Unix like system

Clean backup 
----------------------------------------
$ make clean_backup_file


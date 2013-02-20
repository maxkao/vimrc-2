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
#. Git
#. Network
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
#. use vim (comaand mode), run command BundleInstall
#. use make, $make update [*]_\

Backup
========================================
This version can auto backup orginal config before install.

Backup directory: ${HOME}/.vim_back-${data} [*]_\

Clean backup 
----------------------------------------
$ make clean_backup_file

.. [*] Just support Unix-like operating-system.

Bundled Plugins
========================================

- `calendar.vim <https://github.com/vim-scripts/calendar.vim>`_ - The script of create calender window and don`t use the `cal`.
- `ctrlp.vim <https://github.com/kien/ctrlp.vim>`_ - Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
- `gregsexton/gitv <https://github.com/gregsexton/gitv>`_ - gitv is a 'gitk clone' plugin for the text editor Vim.

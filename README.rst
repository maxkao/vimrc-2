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

1. Introduction
========================================

This verison use vundle that can get the newest vim script use eazy way.

2. Require
========================================

#. Git
#. Network
#. make (Unix Link Only)
#. Vim
#. Curl

3. Installation
========================================

- windows

    ::

    WindowsInstall.bat

- Linux & MacOSX

    ::
    
    make install

4. HowTo
========================================

4.1. Update
----------------------------------------

#. run command at Vim (comaand mode).

    ::
    
    NeoBundleUpdate

.. #. use make, $make update [*]_\

4.2. Backup
----------------------------------------

This version can auto backup orginal config before install.

Backup directory: ${HOME}/.vim_back-${data} [*]_\

    ::

    make backup

4.2.1. Clean backup 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    ::

    make clean_backup_file

.. [*] Just support Unix-like operating-system.

5. Bundled Plugins
========================================

#. `calendar.vim <https://github.com/vim-scripts/calendar.vim>`_
   - The script of create calender window and don`t use the `cal`.
#. `ctrlp.vim <https://github.com/kien/ctrlp.vim>`_
   - Full path fuzzy file, buffer, mru, tag, ...... finder for Vim.
#. `gitv <https://github.com/gregsexton/gitv>`_
   - gitv is a 'gitk clone' plugin for the text editor Vim. (need `vim-fugitive <https://github.com/tpope/vim-fugitive>`_)
#. `matchit.zip <https://github.com/vim-scripts/matchit.zip>`_
   - allows you to configure % to match more than just single characters.
#. `neobundle.vim <https://github.com/Shougo/neobundle.vim>`_
   - It`s a Vim plugin manager based on `Vundle <https://github.com/gmarik/vundle>`_\ .
#. `nerdtree <https://github.com/scrooloose/nerdtree>`_
   - explore your filesystem and to open files and directories.
#. `phpfolding.vim <https://github.com/vim-scripts/phpfolding.vim>`_
   - fold PHP functions and/or classes.
#. `vim-powerline <https://github.com/Lokaltog/vim-powerline>`_
   - better-looking, more functional vim statuslines.
#. `vim-snipmate <https://github.com/garbas/vim-snipmate>`_
   - auto-completion with menu. (need `vim-addon-mw-utils <https://github.com/MarcWeber/vim-addon-mw-utils>`_, `tlib_vim <https://github.com/tomtom/tlib_vim>`_, `snipmate-snippets <https://github.com/honza/snipmate-snippets>`_)
#. `vim-ragtag <https://github.com/tpope/vim-ragtag>`_
   - A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more.
#. `surround.vim <https://github.com/tpope/vim-surround>`_
   - Delete/change/add parentheses/quotes/XML-tags/much more with ease.
#. `tagbar <https://github.com/majutsushi/tagbar>`_ 
   - Display tags of the current file ordered by scope.
#. `vimwiki <http://code.google.com/p/vimwiki/>`_ 
   - Personal Wiki for Vim.
#. `VST <https://github.com/vim-scripts/vst>`_ 
   - Vim reStructured Text.
#. `Python Syntax <http://www.vim.org/scripts/script.php?script_id=3782>`_ 
   - Revised version based on Ian McCracken's version.
#. `php.vim <http://www.vim.org/scripts/script.php?script_id=346>`_ 
   - Indent for php.
#. `jQuery <http://www.vim.org/scripts/script.php?script_id=2416>`_
   - Syntax file for jQuery.
#. `css_color.vim <http://www.vim.org/scripts/script.php?script_id=2150>`_
   - CSS color preview.
#. `vim-markdown <https://github.com/plasticboy/vim-markdown>`_ 
   - Syntax highlighting and matching rules for Markdown.
#. `rest.vim <http://www.vim.org/scripts/script.php?script_id=973>`_ 
   - A reStructuredText syntax mode.


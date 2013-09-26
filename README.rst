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

5.1. Plugins Management
----------------------------------------

#. [X] `neobundle.vim <https://github.com/Shougo/neobundle.vim>`_
   - It`s a Vim plugin manager based on `Vundle <https://github.com/gmarik/vundle>`_ (`vimproc.vim <https://github.com/Shougo/vimproc.vim>`_).

5.2. File Management
----------------------------------------

#. [X] `ctrlp.vim <https://github.com/kien/ctrlp.vim>`_
   - Full path fuzzy file, buffer, mru, tag, ...... finder for Vim.
#. [X] `mru.vim <https://github.com/vim-scripts/mru.vim>`_
   - provides an easy access to a list of recently opened/edited files.
#. [X] `nerdtree <https://github.com/scrooloose/nerdtree>`_
   - explore your filesystem and to open files and directories.

5.3. Development
----------------------------------------

#. [ ] `c.vim  - <http://www.vim.org/scripts/script.php?script_id=213>`_
   - C/C++ IDE - Write and run programs. Insert statements, idioms, comments etc.
#. [X] `matchit.zip <https://github.com/vim-scripts/matchit.zip>`_
   - allows you to configure % to match more than just single characters.
#. [X] `tagbar <https://github.com/majutsushi/tagbar>`_ 
   - Display tags of the current file ordered by scope.
#. [X] `surround.vim <https://github.com/tpope/vim-surround>`_
   - Delete/change/add parentheses/quotes/XML-tags/much more with ease.
#. [ ] `SrcExpl <https://github.com/wesleyche/SrcExpl>`_
   - SrcExpl (Source Explorer) is a source code explorer (need `Trinity <https://github.com/wesleyche/Trinity>`_).
#. [X] `vim-airline <https://github.com/bling/vim-airline>`_
   - Lean & mean status/tabline for vim that's light as air.
#. [ ] `vim-powerline <https://github.com/Lokaltog/vim-powerline>`_
   - better-looking, more functional vim statuslines.
#. [X] `vim-snipmate <https://github.com/garbas/vim-snipmate>`_
   - auto-completion with menu. (need `vim-addon-mw-utils <https://github.com/MarcWeber/vim-addon-mw-utils>`_, `tlib_vim <https://github.com/tomtom/tlib_vim>`_, `vim-snippets <https://github.com/honza/vim-snippets>`_)
#. [X] `vim-ragtag <https://github.com/tpope/vim-ragtag>`_
   - A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more.
#. [X] `/taglist.vim <https://github.com/vim-scripts/taglist.vim>`_
   - Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc).

5.3.3. F2E (Front End Engineer)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. [X] `html5.vim <https://github.com/othree/html5.vim>`_
   - HTML5 + inline SVG omnicomplete funtion, indent and syntax for Vim.

5.3.1. Git
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. [ ] `gitv <https://github.com/gregsexton/gitv>`_
   - gitv is a 'gitk clone' plugin for the text editor Vim. (need `vim-fugitive <https://github.com/tpope/vim-fugitive>`_)
#. [ ] `vim-gitgutter <https://github.com/airblade/vim-gitgutter>`_
   - which shows a git diff in the 'gutter' (sign column). It shows whether each line has been added, modified, and where lines have been removed.

5.3.2. PHP
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. [X] `php.vim <http://www.vim.org/scripts/script.php?script_id=346>`_ 
   - Indent for php.
#. [X] `phpfolding.vim <https://github.com/vim-scripts/phpfolding.vim>`_
   - fold PHP functions and/or classes.

5.3.4. Python
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. [ ] `pythoncomplete <https://github.com/vim-scripts/pythoncomplete>`_
   - Python Omni Completion.

5.4. Syntax
----------------------------------------

#. [X] `css_color.vim <http://www.vim.org/scripts/script.php?script_id=2150>`_
   - CSS color preview.
#. [X] `css3 <https://github.com/vim-scripts/css3>`_
   - css3 syntax for vim.
#. [X] `vim-css3-syntax <https://github.com/hail2u/vim-css3-syntax>`_
   - Add CSS3 syntax support to Vim's built-in syntax/css.vim.
#. [X] `jQuery <http://www.vim.org/scripts/script.php?script_id=2416>`_
   - Syntax file for jQuery.
#. [x] `nginx.vim <https://github.com/vim-scripts/nginx.vim>`_
   - highlights configuration files for nginx.
#. [X] `Python Syntax <http://www.vim.org/scripts/script.php?script_id=3782>`_ 
   - Revised version based on Ian McCracken's version.
#. [X] `rest.vim <http://www.vim.org/scripts/script.php?script_id=973>`_ 
   - A reStructuredText syntax mode.
#. [X] `vim-javascript-syntax <https://github.com/othree/vim-javascript-syntax>`_
   - Improved Highlight for Ajax, DOM and Browser Objects, Methods and Properties.
#. [X] `vim-markdown <https://github.com/plasticboy/vim-markdown>`_ 
   - Syntax highlighting and matching rules for Markdown.

5.5. Other
----------------------------------------

#. [X] `calendar.vim <https://github.com/vim-scripts/calendar.vim>`_
   - The script of create calender window and don`t use the `cal`.
#. [ ] `gsession.vim <https://github.com/c9s/gsession.vim>`_
   - Vim Session Plugin.
#. [X] `vimwiki <http://code.google.com/p/vimwiki/>`_ 
   - Personal Wiki for Vim.
#. [ ] `vim-colorschemes <https://github.com/flazz/vim-colorschemes>`_
   - one stop shop for vim colorschemes.
#. [X] `vim-multiple-cursors <https://github.com/terryma/vim-multiple-cursors>`_
   - use multiple cursors like Sublime Text editor.
#. [ ] `numbers.vim <https://github.com/myusuf3/numbers.vim>`_
   -  a plugin for intelligently toggling line numbers.
#. [X] `VST <https://github.com/vim-scripts/vst>`_ 
   - Vim reStructured Text.




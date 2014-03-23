================
Vim of chusiang
================

:Author:
    Chu-Siang Lai (凍仁翔)
:Build Date:
    2012/10/31
:Version:
    2.2
:Blog:
    `<http://note.drx.tw>`_
:forked from:
    `@Aminzai <https://github.com/aminzai>`_/`vimrc <https://github.com/aminzai/vimrc>`_
:plugins count:
    46

.. image:: https://lh6.googleusercontent.com/-jkam53cqxyk/Uo95ykP0eVI/AAAAAAAAWl4/ypRPFV90ul0/s800/2013-11-22-vim-chusiang.png
   :width: 720 px
   :height: 425 px
   :scale: 100

1. Introduction
========================================

This verison use NeoBundle that can get the newest vim script use eazy way.

2. Require
========================================

#. Git
#. Network
#. make (Unix Link Only)
#. Vim
#. Curl

3. Installation
========================================

Linux & Mac OSX
----------------

- Get my vimrc settings with Git.

::

    git clone https://github.com/chusiang/vimrc.git

- Install.

::

    cd vimrc; make install

windows
---------

::

    WindowsInstall.bat    # No maintained.

4. HowTo
========================================

4.1. Update
----------------------------------------

#. run command at Vim (command mode).

::
    
    NeoBundleUpdate

4.2. Backup
----------------------------------------

This version can auto backup orginal config before install.

Backup directory: ${HOME}/.vim_back-${data} [#]_

::

    make backup

4.2.1. Clean backup 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

    make clean-backup-file

.. [#] Just support Unix-like operating-system.

5. Bundled Plugins
========================================

5.1. Plugins Management
----------------------------------------

#. [X] `neobundle.vim <https://github.com/Shougo/neobundle.vim>`_
   - It`s a Vim plugin manager based on `Vundle <https://github.com/gmarik/vundle>`_.
#. [X] `vimproc.vim <https://github.com/Shougo/vimproc.vim>`_
   - setup neobundle.vim with *make -f Makefile*.

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

#. [X] `Vim Auto Complete Popup <https://github.com/othree/vim-autocomplpop>`_
   - Automatic trigger complete popup menu (need `L9 <https://github.com/vim-scripts/L9>`_).
#. [X] `c.vim <http://www.vim.org/scripts/script.php?script_id=213>`_
   - C/C++ IDE - Write and run programs. Insert statements, idioms, comments etc.
#. [X] `matchit.zip <https://github.com/vim-scripts/matchit.zip>`_
   - allows you to configure % to match more than just single characters.
#. [X] `EditorConfig Vim Plugin <https://github.com/editorconfig/editorconfig-vim>`_
   - `EditorConfig <http://editorconfig.org/>`_ plugin for Vim.
#. [X] `EnhCommentify.vim <http://www.vim.org/scripts/script.php?script_id=23>`_
   - comment lines in a program.
#. [X] `tagbar <https://github.com/majutsushi/tagbar>`_ 
   - Display tags of the current file ordered by scope.
#. [X] `surround.vim <https://github.com/tpope/vim-surround>`_
   - Delete/change/add parentheses/quotes/XML-tags/much more with ease.
#. [X] `syntastic <https://github.com/scrooloose/syntastic>`_
   - Syntax checking plugins of C, C++, CSS, Go, HTML, Java, JavaScript, JSON, PHP, Python, reStructuredText, Ruby, SASS, VimL, zsh ... `more <https://github.com/scrooloose/syntastic#introduction>`_.
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
#. [X] `taglist.vim <https://github.com/vim-scripts/taglist.vim>`_
   - Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc).

5.3.3. F2E (Front End Engineer)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. [X] `html5.vim <https://github.com/othree/html5.vim>`_
   - HTML5 + inline SVG omnicomplete funtion, indent and syntax for Vim.

5.3.1. Git
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. [X] `fugitive.vim <https://github.com/tpope/vim-fugitive>`_
   - a Git wrapper so awesome.
#. [ ] `gitv <https://github.com/gregsexton/gitv>`_
   - gitv is a 'gitk clone' plugin for the text editor Vim. (need `fugitive.vim <https://github.com/tpope/vim-fugitive>`_)
#. [X] `vim-gitgutter <https://github.com/airblade/vim-gitgutter>`_
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

#. [X] `css3 <https://github.com/vim-scripts/css3>`_
   - css3 syntax for vim.
#. [X] `vim-css3-syntax <https://github.com/hail2u/vim-css3-syntax>`_
   - Add CSS3 syntax support to Vim's built-in syntax/css.vim.
#. [X] `css_color.vim <http://www.vim.org/scripts/script.php?script_id=2150>`_
   - CSS color preview.
#. [X] `vim-coloresque <https://github.com/gorodinskiy/vim-coloresque>`_
   - css/less/sass/html color preview for vim.
#. [X] `django.vim <https://github.com/jgb/django.vim>`_
   - Syntax highlighting for Django templates.
#. [X] `jQuery <http://www.vim.org/scripts/script.php?script_id=2416>`_
   - Syntax file for jQuery.
#. [x] `nginx.vim <https://github.com/vim-scripts/nginx.vim>`_
   - highlights configuration files for nginx.
#. [X] `Python Syntax <http://www.vim.org/scripts/script.php?script_id=3782>`_ 
   - Revised version based on Ian McCracken's version.
#. [ ] `rest.vim <http://www.vim.org/scripts/script.php?script_id=973>`_ 
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
#. [ ] `numbers.vim <https://github.com/myusuf3/numbers.vim>`_
   -  a plugin for intelligently toggling line numbers.
#. [X] `vimwiki <http://code.google.com/p/vimwiki/>`_ 
   - Personal Wiki for Vim.
#. [ ] `vim-colorschemes <https://github.com/flazz/vim-colorschemes>`_
   - one stop shop for vim colorschemes.
#. [X] `vim-multiple-cursors <https://github.com/terryma/vim-multiple-cursors>`_
   - use multiple cursors like Sublime Text editor.
#. [X] `vimcdoc-tw <https://github.com/chusiang/vimcdoc-tw>`_ 
   - Vimcdoc of Traditional Chinese.
#. [X] `vim-sdcv <https://github.com/chusiang/vim-sdcv>`_ 
   - Searching word with sdcv at Vim.
#. [X] `Tomorrow Theme <https://github.com/chriskempson/tomorrow-theme>`_
   - Tomorrow Theme the precursor to Base16 Theme.
#. [X] `VST <https://github.com/vim-scripts/vst>`_ 
   - Vim reStructured Text.
#. [X] `riv.vim <https://github.com/Rykka/riv.vim>`_
   - reStructured Text in Vim.
#. [X] `xterm-color-table.vim <https://github.com/guns/xterm-color-table.vim>`_
   - All 256 xterm colors with their RGB equivalents, right in Vim!

6. File Structure
========================================

::

    ├── ctags.exe                           # ctags.exe for Windows.
    ├── _gvimrc                             # GVim setting (ln to _vimrc).
    ├── Makefile                            # Setup on GNU/Linux.
    ├── README.rst
    ├── _vim
    │   ├── colors
    │   │   ├── ......
    │   │   ├── fu.vim                      # Default colorschemes.
    │   │   ├── ......
    │   │   ├── jellybeans.vim
    │   │   └── ......
    │   ├── plugin-list.vim                 # NeoBundle settings.
    │   └── vimrc.d
    │       ├── abbreviation.vim            # Abbreviation list.
    │       ├── blogger-template-fold.vim
    │       ├── folding-html-php.vim.bak
    │       ├── function.vim                # Custon function.
    │       ├── im-switch.vim.bak
    │       ├── keymap.vim                  # Custon mapping.
    │       ├── php-funclist.txt
    │       ├── themes.vim                  # GUI, Theme settings.
    │       ├── title.vim                   # Copyright settings.
    │       └── vimrc.vim                   # Other settings.
    ├── _vimrc                              # Loading '_vim/vimrc.d/*.vim'.
    ├── _vimrc.win32                        # vimrc for Windows.
    └── WindowsInstall.bat                  # Setup on Windows. 

7. Vimrc List
========================================

Sort list A to Z.

#. `Amix <https://github.com/amix/vimrc>`_
#. `Beata Lin <https://github.com/beata/vimrc>`_
#. `Chu-Siang Lai <https://github.com/chusiang/vimrc>`_
#. `CrBoy <https://github.com/crboy/vimrc>`_
#. `Denny Huang <https://github.com/denny0223/.vim>`_
#. `Eddie Kao <https://github.com/kaochenlong/eddie-vim>`_
#. `Jerry Lee <https://github.com/akitaonrails/vimfiles>`_
#. `joe di castro <https://github.com/joedicastro/dotfiles/tree/master/vim>`_
#. `Josephj <https://github.com/josephj/vimrc>`_
#. `jsleetw <https://github.com/jsleetw/MyDotFiles/tree/master/.vim>`_
#. `Kang-min Wang <https://github.com/aminzai/vimrc>`_
#. `Mosky <https://github.com/moskytw/mosky.vim>`_
#. `Muki Wu <https://github.com/mukiwu/vim-setting>`_
#. `othree <https://github.com/othree/rc/blob/master/home/.vimrc>`_
#. `Sammy Lin <https://github.com/SammyLin/vimrc>`_
#. `Vgod <https://github.com/vgod/vimrc>`_
#. `weitsai <https://github.com/weitsai/vim>`_
#. `xinsuiyuer <https://github.com/xinsuiyuer/.vimrc>`_

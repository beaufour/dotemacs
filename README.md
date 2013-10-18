Introduction
============
This is my current Emacs setup.

I run OS X, so I've only tested it there.

Requirements
============

All Emacs packages are either included in the repo or should be
auto-installed by [el-get](https://github.com/dimitri/el-get). I do
depend on a few external utilities though:

* [pyflakes](http://pypi.python.org/pypi/pyflakes)
* [pep8](http://pypi.python.org/pypi/pep8)
* [ag](https://github.com/ggreer/the_silver_searcher)

Note that if you don't run Emacs from the shell (on OS X) these need
to be in your default _PATH_, which is `/usr/bin`, so if you've
installed these using homebrew or something like that, you need to
symlink these into `/usr/bin`. Or jump through the 400 hoops it takes
to get non-standard paths into the environment for Emacs.

Installation
============

Start by cloning this repo into `~/.emacs.d`

    git clone git@github.com:beaufour/dotemacs.git ~/.emacs.d

Then put this in your `~/.emacs` file:

    (add-to-list 'load-path "~/.emacs.d/")
    (load "my-init")

Open Emacs and the magic will start :)

Do note that the first run will take a *long* time (as `el-get`
downloads modules). Also the bootstrapping might not work. If it
doesn't, then run this manually:

    (add-to-list 'load-path "~/.emacs.d/el-get/el-get")
    (require 'el-get)
    (el-get 'sync)


Usage
=====

My setup is mostly centered around Python coding with a few modes for
ops/backend stuff. Some "highlights":

* it automatically highlights Python syntax errors using
`flymake`+`pyflakes` - use _F2_ and _F3_ to navigate between errors

* run `pyflakes` and `pep8` on a file with _C-c C-w_

* `git status` can be shown with _C-c C-g_

* spotlight search for a filename can be done with _C-c C-o_

* it detects executable files and automatically sets _x_ bit

* there are some custom snippets like `main`. Try typing `main + TAB`
  in a new file (or `mainc + TAB` for the "chartbeat version"). See
  inside `~/.emacs.d/snippets` for the more/sources).


pylookup
========

After installation you need to generate the database for
`pylookup`. This command generates it for Python, scipy, numpy, and
matplotlib:

    (cd ~/.emacs.d/el-get/pylookup && ./pylookup.py -u http://docs.python.org && ./pylookup.py -a -u http://docs.scipy.org/doc/numpy/genindex.html && ./pylookup.py -a -u http://docs.scipy.org/doc/scipy/reference/genindex.html && ./pylookup.py -a -u http://matplotlib.sourceforge.net/genindex.html)


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

Installation
============
First, install `el-get`:

    ;; So the idea is that you copy/paste this code into your *scratch* buffer,
    ;; hit C-j, and you have a working el-get.
    (url-retrieve
     "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
     (lambda (s)
       (goto-char (point-max))
       (eval-print-last-sexp)))

Then put this in your `~/.emacs` file:

    (add-to-list 'load-path "~/.emacs.d/")
    (load "my-init")

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

* it detects executable files and automatically sets _x_ bit

* there are some custom snippets like `main`. Try typing `main + TAB`
  in a new file (or `mainc + TAB` for the "chartbeat version"). See
  inside `~/.emacs.d/snippets` for the more/sources).

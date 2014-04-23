;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (global-auto-complete-mode auto-complete-mode auto-complete)
;;;;;;  "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (21271 13714 0 0))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global-Auto-Complete mode is enabled.
See the command `global-auto-complete-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global-Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (color-theme-initialize color-theme-submit color-theme-install
;;;;;;  color-theme-compare color-theme-make-snapshot color-theme-analyze-defun
;;;;;;  color-theme-print color-theme-install-at-point-for-current-frame
;;;;;;  color-theme-install-at-mouse color-theme-describe color-theme-select)
;;;;;;  "color-theme/color-theme" "color-theme/color-theme.el" (17529
;;;;;;  41105 0 0))
;;; Generated autoloads from color-theme/color-theme.el

(autoload 'color-theme-select "color-theme/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "color-theme/color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get" "el-get/el-get.el" (21336 2721
;;;;;;  0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (21336 2721 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (gretl gretl-mode) "ess/lisp/ess-gretl" "ess/lisp/ess-gretl.el"
;;;;;;  (21243 42712 0 0))
;;; Generated autoloads from ess/lisp/ess-gretl.el

(autoload 'gretl-mode "ess/lisp/ess-gretl" "\
Major mode for editing gretl source.  See `ess-mode' for more help.

\(fn &optional PROC-NAME)" t nil)

(autoload 'gretl "ess/lisp/ess-gretl" "\
Call 'gretl',
Optional prefix (C-u) allows to set command line arguments, such as
--vsize.  This should be OS agnostic.
If you have certain command line arguments that should always be passed
to gretl, put them in the variable `inferior-gretl-args'.

\(fn &optional START-ARGS)" t nil)

;;;***

;;;### (autoloads (julia julia-mode) "ess/lisp/ess-julia" "ess/lisp/ess-julia.el"
;;;;;;  (21243 42712 0 0))
;;; Generated autoloads from ess/lisp/ess-julia.el

(autoload 'julia-mode "ess/lisp/ess-julia" "\
Major mode for editing julia source.  See `ess-mode' for more help.

\(fn &optional PROC-NAME)" t nil)

(autoload 'julia "ess/lisp/ess-julia" "\
Call 'julia'.
Optional prefix (C-u) allows to set command line arguments, such as
--load=<file>.  This should be OS agnostic.
If you have certain command line arguments that should always be passed
to julia, put them in the variable `inferior-julia-args'.

\(fn &optional START-ARGS)" t nil)

;;;***

;;;### (autoloads (Rd-mode) "ess/lisp/ess-rd" "ess/lisp/ess-rd.el"
;;;;;;  (21243 42712 0 0))
;;; Generated autoloads from ess/lisp/ess-rd.el

(autoload 'Rd-mode "ess/lisp/ess-rd" "\
Major mode for editing R documentation source files.

This mode makes it easier to write R documentation by helping with
indentation, doing some of the typing for you (with Abbrev mode) and by
showing keywords, strings, etc. in different faces (with Font Lock mode
on terminals that support it).

Type \\[list-abbrevs] to display the built-in abbrevs for Rd keywords.

Keybindings
===========

\\{Rd-mode-map}

Variables you can use to customize Rd mode
==========================================

`Rd-indent-level'
  Indentation of Rd code with respect to containing blocks.
  Default is 2.

Turning on Rd mode runs the hook `Rd-mode-hook'.

To automatically turn on the abbrev(iate) features, add the
following lines to your `.emacs' file:

  (add-hook 'Rd-mode-hook
            (lambda ()
              (abbrev-mode 1)))

\(fn)" t nil)

;;;***

;;;### (autoloads (mouse-me) "ess/lisp/mouseme" "ess/lisp/mouseme.el"
;;;;;;  (21243 42712 0 0))
;;; Generated autoloads from ess/lisp/mouseme.el

(autoload 'mouse-me "ess/lisp/mouseme" "\
Popup a menu of functions to run on selected string or region.

\(fn EVENT)" t nil)

;;;***

;;;### (autoloads (global-ethan-wspace-mode ethan-wspace-mode) "ethan-wspace/lisp/ethan-wspace"
;;;;;;  "ethan-wspace/lisp/ethan-wspace.el" (21089 17786 0 0))
;;; Generated autoloads from ethan-wspace/lisp/ethan-wspace.el

(autoload 'ethan-wspace-mode "ethan-wspace/lisp/ethan-wspace" "\
Minor mode for coping with whitespace.

This just activates each whitespace type in this buffer.

\(fn &optional ARG)" t nil)

(defvar global-ethan-wspace-mode t "\
Non-nil if Global-Ethan-Wspace mode is enabled.
See the command `global-ethan-wspace-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-ethan-wspace-mode'.")

(custom-autoload 'global-ethan-wspace-mode "ethan-wspace/lisp/ethan-wspace" nil)

(autoload 'global-ethan-wspace-mode "ethan-wspace/lisp/ethan-wspace" "\
Toggle Ethan-Wspace mode in all buffers.
With prefix ARG, enable Global-Ethan-Wspace mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Ethan-Wspace mode is enabled in all buffers where
`ethan-wspace-is-buffer-appropriate' would do it.
See `ethan-wspace-mode' for more information on Ethan-Wspace mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (git-reblame git-blame-mode) "git-emacs/git-blame"
;;;;;;  "git-emacs/git-blame.el" (21089 17789 0 0))
;;; Generated autoloads from git-emacs/git-blame.el

(autoload 'git-blame-mode "git-emacs/git-blame" "\
Toggle minor mode for displaying Git blame

With prefix ARG, turn the mode on if ARG is positive.

\(fn &optional ARG)" t nil)

(autoload 'git-reblame "git-emacs/git-blame" "\
Recalculate all blame information in the current buffer

\(fn)" t nil)

;;;***

;;;### (autoloads (go-download-play godoc gofmt-before-save go-mode)
;;;;;;  "go-mode/go-mode" "go-mode/go-mode.el" (21271 14218 0 0))
;;; Generated autoloads from go-mode/go-mode.el

(autoload 'go-mode "go-mode/go-mode" "\
Major mode for editing Go source text.

This mode provides (not just) basic editing capabilities for
working with Go code. It offers almost complete syntax
highlighting, indentation that is almost identical to gofmt and
proper parsing of the buffer content to allow features such as
navigation by function, manipulation of comments or detection of
strings.

In addition to these core features, it offers various features to
help with writing Go code. You can directly run buffer content
through gofmt, read godoc documentation from within Emacs, modify
and clean up the list of package imports or interact with the
Playground (uploading and downloading pastes).

The following extra functions are defined:

- `gofmt'
- `godoc'
- `go-import-add'
- `go-remove-unused-imports'
- `go-goto-imports'
- `go-play-buffer' and `go-play-region'
- `go-download-play'
- `godef-describe' and `godef-jump'
- `go-coverage'

If you want to automatically run `gofmt' before saving a file,
add the following hook to your emacs configuration:

\(add-hook 'before-save-hook #'gofmt-before-save)

If you want to use `godef-jump' instead of etags (or similar),
consider binding godef-jump to `M-.', which is the default key
for `find-tag':

\(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd \"M-.\") #'godef-jump)))

Please note that godef is an external dependency. You can install
it with

go get code.google.com/p/rog-go/exp/cmd/godef


If you're looking for even more integration with Go, namely
on-the-fly syntax checking, auto-completion and snippets, it is
recommended that you look at goflymake
\(https://github.com/dougm/goflymake), gocode
\(https://github.com/nsf/gocode), go-eldoc
\(github.com/syohex/emacs-go-eldoc) and yasnippet-go
\(https://github.com/dominikh/yasnippet-go)

\(fn)" t nil)

(add-to-list 'auto-mode-alist (cons "\\.go\\'" 'go-mode))

(autoload 'gofmt-before-save "go-mode/go-mode" "\
Add this to .emacs to run gofmt on the current buffer when saving:
 (add-hook 'before-save-hook 'gofmt-before-save).

Note that this will cause go-mode to get loaded the first time
you save any file, kind of defeating the point of autoloading.

\(fn)" t nil)

(autoload 'godoc "go-mode/go-mode" "\
Show go documentation for a query, much like M-x man.

\(fn QUERY)" t nil)

(autoload 'go-download-play "go-mode/go-mode" "\
Downloads a paste from the playground and inserts it in a Go
buffer. Tries to look for a URL at point.

\(fn URL)" t nil)

;;;***

;;;### (autoloads (jedi:setup anything-jedi-related-names helm-jedi-related-names
;;;;;;  jedi:ac-setup jedi:complete jedi:start-dedicated-server)
;;;;;;  "jedi/jedi" "jedi/jedi.el" (21271 13724 0 0))
;;; Generated autoloads from jedi/jedi.el

(autoload 'jedi:start-dedicated-server "jedi/jedi" "\
Start Jedi server dedicated to this buffer.
This is useful, for example, when you want to use different
`sys.path' for some buffer.  When invoked as an interactive
command, it asks you how to start the Jedi server.  You can edit
the command in minibuffer to specify the way Jedi server run.

If you want to setup how Jedi server is started programmatically
per-buffer/per-project basis, make `jedi:server-command' and
`jedi:server-args' buffer local and set it in `python-mode-hook'.
See also: `jedi:server-args'.

\(fn COMMAND)" t nil)

(autoload 'jedi:complete "jedi/jedi" "\
Complete code at point.

\(fn &key (expand ac-expand-on-auto-complete))" t nil)

(autoload 'jedi:ac-setup "jedi/jedi" "\
Add Jedi AC sources to `ac-sources'.

If auto-completion is all you need, you can call this function instead
of `jedi:setup', like this::

   (add-hook 'python-mode-hook 'jedi:ac-setup)

Note that this function calls `auto-complete-mode' if it is not
already enabled, for people who don't call `global-auto-complete-mode'
in their Emacs configuration.

\(fn)" t nil)

(autoload 'helm-jedi-related-names "jedi/jedi" "\
Find related names of the object at point using `helm' interface.

\(fn)" t nil)

(autoload 'anything-jedi-related-names "jedi/jedi" "\
Find related names of the object at point using `anything' interface.

\(fn)" t nil)

(autoload 'jedi:setup "jedi/jedi" "\
Fully setup jedi.el for current buffer.
It setups `ac-sources' (calls `jedi:ac-setup') and turns
`jedi-mode' on.

This function is intended to be called from `python-mode-hook',
like this::

       (add-hook 'python-mode-hook 'jedi:setup)

You can also call this function as a command, to quickly test
what jedi can do.

\(fn)" t nil)

;;;***

;;;### (autoloads (js2-imenu-extras-mode js2-imenu-extras-setup)
;;;;;;  "js2-mode/js2-imenu-extras" "js2-mode/js2-imenu-extras.el"
;;;;;;  (21271 13724 0 0))
;;; Generated autoloads from js2-mode/js2-imenu-extras.el

(autoload 'js2-imenu-extras-setup "js2-mode/js2-imenu-extras" "\


\(fn)" nil nil)

(autoload 'js2-imenu-extras-mode "js2-mode/js2-imenu-extras" "\
Toggle Imenu support for frameworks and structural patterns.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (js2-mode js2-minor-mode) "js2-mode/js2-mode" "js2-mode/js2-mode.el"
;;;;;;  (21271 13724 0 0))
;;; Generated autoloads from js2-mode/js2-mode.el

(autoload 'js2-minor-mode "js2-mode/js2-mode" "\
Minor mode for running js2 as a background linter.
This allows you to use a different major mode for JavaScript editing,
such as `espresso-mode', while retaining the asynchronous error/warning
highlighting features of `js2-mode'.

\(fn &optional ARG)" t nil)

(autoload 'js2-mode "js2-mode/js2-mode" "\
Major mode for editing JavaScript code.

\(fn)" t nil)

;;;***

;;;### (autoloads (gfm-mode markdown-mode) "markdown-mode/markdown-mode"
;;;;;;  "markdown-mode/markdown-mode.el" (21271 13723 0 0))
;;; Generated autoloads from markdown-mode/markdown-mode.el

(autoload 'markdown-mode "markdown-mode/markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode/markdown-mode" "\
Major mode for editing GitHub Flavored Markdown files.

\(fn)" t nil)

;;;***

;;;### (autoloads (nginx-mode) "nginx-mode/nginx-mode" "nginx-mode/nginx-mode.el"
;;;;;;  (21271 13724 0 0))
;;; Generated autoloads from nginx-mode/nginx-mode.el

(autoload 'nginx-mode "nginx-mode/nginx-mode" "\
Major mode for highlighting nginx config files.

The variable nginx-indent-level controls the amount of indentation.
\\{nginx-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (php-mode php-extra-constants php) "php-mode/php-mode"
;;;;;;  "php-mode/php-mode.el" (21271 13724 0 0))
;;; Generated autoloads from php-mode/php-mode.el

(let ((loads (get 'php 'custom-loads))) (if (member '"php-mode/php-mode" loads) nil (put 'php 'custom-loads (cons '"php-mode/php-mode" loads))))

(defvar php-extra-constants 'nil "\
A list of additional strings to treat as PHP constants.")

(custom-autoload 'php-extra-constants "php-mode/php-mode" t)

(add-to-list 'interpreter-mode-alist (cons "php" 'php-mode))

(autoload 'php-mode "php-mode/php-mode" "\
Major mode for editing PHP code.

\\{php-mode-map}

\(fn)" t nil)

(dolist (pattern '("\\.php[s345t]?\\'" "\\.phtml\\'" "Amkfile" "\\.amk$")) (add-to-list 'auto-mode-alist `(,pattern . php-mode) t))

;;;***

;;;### (autoloads (protobuf-mode) "protobuf-mode/protobuf-mode" "protobuf-mode/protobuf-mode.el"
;;;;;;  (21271 14218 0 0))
;;; Generated autoloads from protobuf-mode/protobuf-mode.el
 (add-to-list 'auto-mode-alist '("\\.proto\\'" . protobuf-mode))

(autoload 'protobuf-mode "protobuf-mode/protobuf-mode" "\
Major mode for editing Protocol Buffers description language.

The hook `c-mode-common-hook' is run with no argument at mode
initialization, then `protobuf-mode-hook'.

Key bindings:
\\{protobuf-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (puppet-mode) "puppet-mode/puppet-mode" "puppet-mode/puppet-mode.el"
;;;;;;  (21271 13724 0 0))
;;; Generated autoloads from puppet-mode/puppet-mode.el

(autoload 'puppet-mode "puppet-mode/puppet-mode" "\


\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.pp\\'" . puppet-mode))

;;;***

;;;### (autoloads (pylookup-lookup-at-point pylookup-update-all pylookup-update
;;;;;;  pylookup-set-search-option pylookup-lookup) "pylookup/pylookup"
;;;;;;  "pylookup/pylookup.el" (21089 17823 0 0))
;;; Generated autoloads from pylookup/pylookup.el

(autoload 'pylookup-lookup "pylookup/pylookup" "\
Lookup SEARCH-TERM in the Python HTML indexes.

\(fn SEARCH-TERM)" t nil)

(autoload 'pylookup-set-search-option "pylookup/pylookup" "\
Set search option interactively

\(fn OPTION-STRING)" t nil)

(autoload 'pylookup-update "pylookup/pylookup" "\
Run pylookup-update and create the database at `pylookup-db-file'.

\(fn SRC &optional APPEND)" t nil)

(autoload 'pylookup-update-all "pylookup/pylookup" "\
Run pylookup-update for all sources and create the database at `pylookup-db-file'.

\(fn)" t nil)

(autoload 'pylookup-lookup-at-point "pylookup/pylookup" "\
Query the for string with help of word read at point and call `pylookup-lookup'

\(fn)" t nil)

;;;***

;;;### (autoloads (doctest-mode doctest-register-mmm-classes) "python-mode/test/doctest-mode"
;;;;;;  "python-mode/test/doctest-mode.el" (21089 18093 0 0))
;;; Generated autoloads from python-mode/test/doctest-mode.el

(autoload 'doctest-register-mmm-classes "python-mode/test/doctest-mode" "\
Register doctest's mmm classes, allowing doctest to be used as a
submode region in other major modes, such as python-mode and rst-mode.
Two classes are registered:

`doctest-docstring'

    Used to edit docstrings containing doctest examples in python-
    mode.  Docstring submode regions start and end with triple-quoted
    strings (\"\"\").  In order to avoid confusing start-string
    markers and end-string markers, all triple-quote strings in the
    buffer are treated as submode regions (even if they're not
    actually docstrings).  Use (C-c % C-d) to insert a new doctest-
    docstring region.  When `doctest-execute' (C-c C-c) is called
    inside a doctest-docstring region, it executes just the current
    docstring.  The globals for this execution are constructed by
    importing the current buffer's contents in Python.

`doctest-example'

    Used to edit doctest examples in text-editing modes, such as
    `rst-mode' or `text-mode'.  Docstring submode regions start with
    optionally indented prompts (>>>) and end with blank lines.  Use
    (C-c % C-e) to insert a new doctest-example region.  When
    `doctest-execute' (C-c C-c) is called inside a doctest-example
    region, it executes all examples in the buffer.

If ADD-MODE-EXT-CLASSES is true, then register the new classes in
`mmm-mode-ext-classes-alist', which will cause them to be used by
default in the following modes:

    doctest-docstring:  python-mode
    doctest-example:    rst-mode

If FIX-MMM-FONTIFY-REGION-BUG is true, then register a hook that will
fix a bug in `mmm-fontify-region' that affects some (but not all)
versions of emacs.  (See `doctest-fixed-mmm-fontify-region' for more
info.)

\(fn &optional ADD-MODE-EXT-CLASSES FIX-MMM-FONTIFY-REGION-BUG)" t nil)

(add-to-list 'auto-mode-alist '("\\.doctest$" . doctest-mode))

(autoload 'doctest-mode "python-mode/test/doctest-mode" "\
A major mode for editing text files that contain Python
doctest examples.  Doctest is a testing framework for Python that
emulates an interactive session, and checks the result of each
command.  For more information, see the Python library reference:
<http://docs.python.org/lib/module-doctest.html>

`doctest-mode' defines three kinds of line, each of which is
treated differently:

  - 'Source lines' are lines consisting of a Python prompt
    ('>>>' or '...'), followed by source code.  Source lines are
    colored (similarly to `python-mode') and auto-indented.

  - 'Output lines' are non-blank lines immediately following
    source lines.  They are colored using several doctest-
    specific output faces.

  - 'Text lines' are any other lines.  They are not processed in
    any special way.

\\{doctest-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (rhtml-mode) "rhtml-mode/rhtml-mode" "rhtml-mode/rhtml-mode.el"
;;;;;;  (21089 18094 0 0))
;;; Generated autoloads from rhtml-mode/rhtml-mode.el

(autoload 'rhtml-mode "rhtml-mode/rhtml-mode" "\
Embedded Ruby Mode (RHTML)

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.html\\.erb$" . rhtml-mode))

;;;***

;;;### (autoloads (scala-mode scala-mode:set-scala-syntax-mode) "scala-mode2/scala-mode2"
;;;;;;  "scala-mode2/scala-mode2.el" (21335 62433 0 0))
;;; Generated autoloads from scala-mode2/scala-mode2.el

(autoload 'scala-mode:set-scala-syntax-mode "scala-mode2/scala-mode2" "\
Sets the syntax-table and other realted variables for the current buffer to those of scala-mode. Can be used to make some other major mode (such as sbt-mode) use scala syntax-table.

\(fn)" nil nil)

(autoload 'scala-mode "scala-mode2/scala-mode2" "\
Major mode for editing scala code.

When started, runs `scala-mode-hook'.

\\{scala-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(scala\\|sbt\\)\\'" . scala-mode))

(modify-coding-system-alist 'file "\\.\\(scala\\|sbt\\)\\'" 'utf-8)

;;;***

;;;### (autoloads (yaml-mode yaml) "yaml-mode/yaml-mode" "yaml-mode/yaml-mode.el"
;;;;;;  (21089 18115 0 0))
;;; Generated autoloads from yaml-mode/yaml-mode.el

(let ((loads (get 'yaml 'custom-loads))) (if (member '"yaml-mode/yaml-mode" loads) nil (put 'yaml 'custom-loads (cons '"yaml-mode/yaml-mode" loads))))

(autoload 'yaml-mode "yaml-mode/yaml-mode" "\
Simple mode to edit YAML.

\\{yaml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))

;;;***

;;;### (autoloads (yas-global-mode yas-minor-mode) "yasnippet/yasnippet"
;;;;;;  "yasnippet/yasnippet.el" (21271 13724 0 0))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the command `yas-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("auto-complete/auto-complete-config.el"
;;;;;;  "auto-complete/auto-complete-pkg.el" "color-theme/color-theme-autoloads.el"
;;;;;;  "ctable/ctable.el" "ctable/test-ctable.el" "deferred/concurrent-sample.el"
;;;;;;  "deferred/concurrent.el" "deferred/deferred-samples.el" "deferred/deferred.el"
;;;;;;  "deferred/test-concurrent.el" "deferred/test-deferred.el"
;;;;;;  "dot-mode/dot-mode.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "ensime/dist/elisp/auto-complete.el" "ensime/dist/elisp/ensime-auto-complete.el"
;;;;;;  "ensime/dist/elisp/ensime-builder.el" "ensime/dist/elisp/ensime-comint-utils.el"
;;;;;;  "ensime/dist/elisp/ensime-config.el" "ensime/dist/elisp/ensime-debug.el"
;;;;;;  "ensime/dist/elisp/ensime-doc.el" "ensime/dist/elisp/ensime-inf.el"
;;;;;;  "ensime/dist/elisp/ensime-refactor.el" "ensime/dist/elisp/ensime-sbt.el"
;;;;;;  "ensime/dist/elisp/ensime-scalex.el" "ensime/dist/elisp/ensime-search.el"
;;;;;;  "ensime/dist/elisp/ensime-semantic-highlight.el" "ensime/dist/elisp/ensime-test.el"
;;;;;;  "ensime/dist/elisp/ensime-ui.el" "ensime/dist/elisp/ensime-undo.el"
;;;;;;  "ensime/dist/elisp/ensime.el" "ensime/dist/elisp/fuzzy.el"
;;;;;;  "ensime/dist/elisp/popup.el" "epc/epc.el" "epc/epcs.el" "epc/test-epc.el"
;;;;;;  "ess/ess-autoloads.el" "ess/lisp/ess-arc-d.el" "ess/lisp/ess-bugs-d.el"
;;;;;;  "ess/lisp/ess-bugs-l.el" "ess/lisp/ess-comp.el" "ess/lisp/ess-compat.el"
;;;;;;  "ess/lisp/ess-custom.el" "ess/lisp/ess-dde.el" "ess/lisp/ess-debug.el"
;;;;;;  "ess/lisp/ess-developer.el" "ess/lisp/ess-eldoc.el" "ess/lisp/ess-font-lock.el"
;;;;;;  "ess/lisp/ess-help.el" "ess/lisp/ess-inf.el" "ess/lisp/ess-install.el"
;;;;;;  "ess/lisp/ess-jags-d.el" "ess/lisp/ess-lsp-l.el" "ess/lisp/ess-menu.el"
;;;;;;  "ess/lisp/ess-mode.el" "ess/lisp/ess-mouse.el" "ess/lisp/ess-noweb-font-lock-mode.el"
;;;;;;  "ess/lisp/ess-noweb-mode.el" "ess/lisp/ess-noweb.el" "ess/lisp/ess-omg-d.el"
;;;;;;  "ess/lisp/ess-omg-l.el" "ess/lisp/ess-r-a.el" "ess/lisp/ess-r-args.el"
;;;;;;  "ess/lisp/ess-r-d.el" "ess/lisp/ess-r-gui.el" "ess/lisp/ess-rdired.el"
;;;;;;  "ess/lisp/ess-rutils.el" "ess/lisp/ess-s-l.el" "ess/lisp/ess-s3-d.el"
;;;;;;  "ess/lisp/ess-s4-d.el" "ess/lisp/ess-sas-a.el" "ess/lisp/ess-sas-d.el"
;;;;;;  "ess/lisp/ess-sas-l.el" "ess/lisp/ess-send.el" "ess/lisp/ess-send2.el"
;;;;;;  "ess/lisp/ess-site.el" "ess/lisp/ess-sp3-d.el" "ess/lisp/ess-sp4-d.el"
;;;;;;  "ess/lisp/ess-sp5-d.el" "ess/lisp/ess-sp6-d.el" "ess/lisp/ess-sp6w-d.el"
;;;;;;  "ess/lisp/ess-sta-d.el" "ess/lisp/ess-sta-l.el" "ess/lisp/ess-swv.el"
;;;;;;  "ess/lisp/ess-toolbar.el" "ess/lisp/ess-tracebug.el" "ess/lisp/ess-trns.el"
;;;;;;  "ess/lisp/ess-utils.el" "ess/lisp/ess-vst-d.el" "ess/lisp/ess-xls-d.el"
;;;;;;  "ess/lisp/ess.el" "ess/lisp/essd-els.el" "ess/lisp/make-regexp.el"
;;;;;;  "ess/lisp/msdos.el" "fuzzy/fuzzy.el" "git-emacs/git--test.el"
;;;;;;  "git-emacs/git-emacs-autoloads.el" "git-emacs/git-emacs.el"
;;;;;;  "git-emacs/git-global-keys.el" "git-emacs/git-log.el" "git-emacs/git-modeline.el"
;;;;;;  "git-emacs/git-status.el" "jedi/jedi-pkg.el" "jedi/test-jedi.el"
;;;;;;  "jedi/tryout-jedi.el" "lorem-ipsum/lorem-ipsum.el" "nagios-mode/nagios-mode.el"
;;;;;;  "php-mode/php-mode-test.el" "popup/popup.el" "python-environment/python-environment.el"
;;;;;;  "python-environment/test-python-environment.el" "python-mode/python-mode.el"
;;;;;;  "python-mode/test/pars-part-output.el" "python-mode/test/py-bug-numbered-tests.el"
;;;;;;  "python-mode/test/py-completion-tests.el" "python-mode/test/py-shell-completion-tests.el"
;;;;;;  "python-mode/test/python-executes-test.el" "python-mode/test/python-extended-executes-test.el"
;;;;;;  "python-mode/test/python-mode-ert-tests.el" "python-mode/test/python-mode-syntax-test.el"
;;;;;;  "python-mode/test/python-mode-test.el" "rhtml-mode/rhtml-erb.el"
;;;;;;  "rhtml-mode/rhtml-fonts.el" "rhtml-mode/rhtml-navigation.el"
;;;;;;  "rhtml-mode/rhtml-ruby-hook.el" "rhtml-mode/rhtml-sgml-hacks.el"
;;;;;;  "scala-mode2/scala-mode2-fontlock.el" "scala-mode2/scala-mode2-indent.el"
;;;;;;  "scala-mode2/scala-mode2-lib.el" "scala-mode2/scala-mode2-map.el"
;;;;;;  "scala-mode2/scala-mode2-paragraph.el" "scala-mode2/scala-mode2-pkg.el"
;;;;;;  "scala-mode2/scala-mode2-sbt.el" "scala-mode2/scala-mode2-syntax.el"
;;;;;;  "yasnippet/yasnippet-debug.el" "yasnippet/yasnippet-tests.el")
;;;;;;  (21336 7669 345690 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here

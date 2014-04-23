;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Switch on/off certain features
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Visible, not audible, bell
(setq visible-bell t)
;; Ask for confirmation before quitting
(setq confirm-kill-emacs 'yes-or-no-p)
;; Don't show the startup screen
(setq inhibit-startup-message t)
;; Highlight parentheses on hover
(show-paren-mode 1)
;; Remember the files that were open in last session
(desktop-save-mode 1)
;; Support the mouse wheel/scroll everywhere
(mouse-wheel-mode 1)
;; Show the column number in the status line
(column-number-mode 1)
;; Turn off the top toolbar with icons
(tool-bar-mode -1)
;; whenever an external process changes a file underneath emacs, and there
;; was no unsaved changes in the corresponding buffer, just revert its
;; content to reflect what's on-disk.
(global-auto-revert-mode 1)
;; Set default size
(setq default-frame-alist '(
                (width . 90)
                (height . 47) ))
;; Default to 100 characters per line
(setq-default fill-column 100)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IDO mode for buffer switching
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'ido)
(ido-mode t)
;; match parts of name
(setq ido-enable-flex-matching t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Indent and tabs setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq c-basic-offset 2)
(setq-default indent-tabs-mode nil)
(setq require-final-newline t)
(setq standard-indent 2)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setup file backups
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq make-backup-files t)
(setq version-control t)
(setq delete-old-versions t)
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Add more exec paths
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq exec-path (append exec-path (list "/usr/local/bin" )))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python Setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(ac-config-default)
(setq py-install-directory "~/.emacs.d/el-get/python-mode/")

;; run autopep8 on the current buffer
(defun py-autopep8 ()
  (interactive)
  (shell-command-on-region
   ;; beginning and end of region
   (point-min) (point-max)
   ;; command
   "~/.emacs.d/autopep8.sh"
   ;; output buffer
   (current-buffer)
   ;; error buffer
   "*autopep8 Error Buffer*"
   ;; show error buffer
   t
  ))

;; Flymake setup from:
;; http://www.yilmazhuseyin.com/blog/dev/emacs-setup-python-development/
(when (load "flymake" t)
  (defun flymake-pycheckers-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "pyflakes"  (list local-file)))))

(add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pycheckers-init))

(add-hook 'python-mode-hook
          (lambda ()
            ; dont invoke flymake on temporary buffers for the interpreter
            (unless (eq buffer-file-name nil) (flymake-mode 1))
            ; navigate between errors with f2/f3
            (local-set-key [f2] 'flymake-goto-prev-error)
            (local-set-key [f3] 'flymake-goto-next-error)
            ; run pyflakes+pep8 as check command
            (local-set-key [?\C-c ?\C-w] 'py-pyflakespep8-run)
            ))

;; Show current error in the mini buffer
(defun my-flymake-show-help ()
  (when (get-char-property (point) 'flymake-overlay)
   (let ((help (get-char-property (point) 'help-echo)))
    (if help (message "%s" help)))))

(add-hook 'post-command-hook 'my-flymake-show-help)

;;
;; Annotate special lines
(defun annotate-pdb ()
  (interactive)
  (highlight-lines-matching-regexp "import pdb")
  (highlight-lines-matching-regexp "pdb.set_trace()"))
(add-hook 'python-mode-hook 'annotate-pdb)

;;
;; Jedi
;; https://github.com/tkf/emacs-jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional

;; TODO: It looks like python-mode has flymake support built in, but I
;; can't get this to work:
;;
;; (add-hook 'python-mode-hook
;;           (lambda ()
;;             (pyflakespep8-flymake-mode)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; el-get, install tool for Emacs packages
;; https://github.com/dimitri/el-get
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ethan Whitespace
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(eval-after-load "ethan-wspace"
  '(progn
     (global-ethan-wspace-mode 1)
     )
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ag - the silver searcher
;; https://github.com/ggreer/the_silver_searcher
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'ag)
(setq ag-highlight-search t)
(global-set-key [M-f1] 'ag-project-at-point)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; VCL mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'vcl-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global-FF mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'globalff)
(setq globalff-search-location (concat (getenv "HOME") "/repos"))
(global-set-key [?\C-c ?\C-o] 'globalff)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Yasnippet setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(eval-after-load "yasnippet"
  '(progn
     (yas/global-mode 1)
     )
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Color set up
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-billw)
     )
  )

;; color diff mode output
(custom-set-faces
 '(diff-added ((t (:foreground "Green"))) 'now)
 '(diff-removed ((t (:foreground "Red"))) 'now)
)

;; Support colors in shell output
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; json-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'json-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; c-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun my-c-mode-common-hook ()
 ;; my customizations for all of c-mode, c++-mode, objc-mode, java-mode
 (c-set-offset 'substatement-open 0)
 (setq c-basic-offset 4)
 (setq c-indent-level 4)
 (setq tab-width 4)
)

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; js2-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Make js2-mode support JsLint 'global' variables, like:
;; /* global console, jQuery, $, _, Backbone */
;; From: http://www.emacswiki.org/emacs/Js2Mode
;;
(eval-after-load "js2-mode"
  '(progn
     (add-hook 'js2-post-parse-callbacks 'my-js2-parse-global-vars-decls)
     (defun my-js2-parse-global-vars-decls ()
       (let ((btext (replace-regexp-in-string
                     ": *true" " "
                     (replace-regexp-in-string "[\n\t ]+" " " (buffer-substring-no-properties 1 (buffer-size)) t t))))
         (setq js2-additional-externs
               (split-string
                (if (string-match "/\\* *global *\\(.*?\\) *\\*/" btext) (match-string-no-properties 1 btext) "")
                " *, *" t))
         ))
     ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Git Mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'git)
(defun my-git-status ()
  "Run git status on the current directory"
  (interactive)
  (git-status default-directory)
)
(global-set-key [?\C-c ?\C-g] 'my-git-status)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; flyspell-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(dolist (hook '(markdown-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))

 (add-hook 'c++-mode-hook
          (lambda ()
            (flyspell-prog-mode)
          ))
 (add-hook 'python-mode-hook
          (lambda ()
            (flyspell-prog-mode)
          ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setup extension -> mode mappings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq auto-mode-alist
  (append
  (list
    '("\\.js$" .    js2-mode)
    '("\\.json$" .  json-mode)
    '("\\.xml$" .   nxml-mode)
    '("\\.xsl$" .   nxml-mode)
    '("\\.xhtml$" . nxml-mode)
    '("\\.xul$" .   nxml-mode)
    '("\\.xsl$" .   nxml-mode)
    '("\\.rdf$" .   nxml-mode)
    '("\\.xbl$" .   nxml-mode)
    '("\\.as$" .    actionscript-mode)
    '("\\.py$" .    python-mode)
    '("\\.idl$" .   idl-mode)
    '("\\.rst$" .   rst-mode)
    '("\\.php$" .   php-mode)
    '("\\.go$" .    go-mode)
    '("\\.vcl$" .   vcl-mode)
    '("\\.less$" .  css-mode)
    '("\\.pp$" .    puppet-mode)
    '("\\.md$" .    markdown-mode)
    '("\\.erb$" .   rhtml-mode)
    '("\\.yaml$" .  yaml-mode)
    '("\\.m$" .     objc-mode)
    )
  auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Check for shebang magic in file after save, make executable if found.
;; http://emacswiki.org/emacs/MakingScriptsExecutableOnSave
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq my-shebang-patterns
      (list "^#!/usr/.*/perl\\(\\( \\)\\|\\( .+ \\)\\)-w *.*"
            "^#!/usr/.*/sh"
            "^#!/usr/.*/bash"
            "^#!/bin/sh"
            "^#!/usr/bin/env .*"
            "^#!/usr/.*/python"
            "^#!/bin/bash"))
(add-hook
 'after-save-hook
 (lambda ()
   (if (not (= (shell-command (concat "test -x " (buffer-file-name))) 0))
       (progn
         ;; This puts message in *Message* twice, but minibuffer
         ;; output looks better.
         (message (concat "Wrote " (buffer-file-name)))
         (save-excursion
           (goto-char (point-min))
           ;; Always checks every pattern even after
           ;; match.  Inefficient but easy.
           (dolist (my-shebang-pat my-shebang-patterns)
             (if (looking-at my-shebang-pat)
                 (if (= (shell-command
                         (concat "chmod u+x " (buffer-file-name)))
                        0)
                     (message (concat
                               "Wrote and made executable "
                               (buffer-file-name))))))))
     ;; This puts message in *Message* twice, but minibuffer output
     ;; looks better.
     (message (concat "Wrote " (buffer-file-name))))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Misc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mavericks seems to default to / for some reason, fix that
(cd (getenv "HOME"))

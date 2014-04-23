((ack status "removed" recipe nil)
 (actionscript-mode-connors status "removed" recipe nil)
 (auto-complete status "installed" recipe
                (:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
                       (popup fuzzy)))
 (color-theme status "installed" recipe
              (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
                     ("xzf")
                     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
                     (progn
                       (color-theme-initialize)
                       (setq color-theme-is-global t))))
 (ctable status "installed" recipe
         (:name ctable :description "Table Component for elisp" :type github :pkgname "kiwanami/emacs-ctable"))
 (deferred status "installed" recipe
   (:name deferred :description "Simple asynchronous functions for emacs lisp" :website "https://github.com/kiwanami/emacs-deferred" :type github :pkgname "kiwanami/emacs-deferred" :features "deferred"))
 (dot-mode status "installed" recipe
           (:name dot-mode :auto-generated t :type emacswiki :description "Minor mode to repeat typing or commands" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/dot-mode.el"))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :info "." :load "el-get.el"))
 (epc status "installed" recipe
      (:name epc :description "An RPC stack for Emacs Lisp" :type github :pkgname "kiwanami/emacs-epc" :depends
             (deferred ctable)))
 (ess status "installed" recipe
      (:name ess :description "Emacs Speaks Statistics: statistical programming within Emacs" :type github :pkgname "emacs-ess/ESS" :website "http://ess.r-project.org/" :info "doc/info/" :build
             `(("make" "clean" "all" ,(concat "EMACS="
                                              (shell-quote-argument el-get-emacs))))
             :load "ess-autoloads.el"))
 (ethan-wspace status "installed" recipe
               (:name ethan-wspace :description "Whitespace customizations for emacs" :type github :pkgname "glasserc/ethan-wspace" :load-path "lisp/" :features ethan-wspace))
 (full-ack status "removed" recipe nil)
 (fuzzy status "installed" recipe
        (:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (git-emacs status "installed" recipe
            (:name git-emacs :description "Yet another git emacs mode for newbies" :type github :pkgname "tsgates/git-emacs" :features git-emacs))
 (go-mode status "installed" recipe
          (:name go-mode :description "Major mode for the Go programming language" :type http :url "http://go.googlecode.com/hg/misc/emacs/go-mode.el?r=tip" :localname "go-mode.el"))
 (jedi status "installed" recipe
       (:name jedi :description "An awesome Python auto-completion for Emacs" :type github :pkgname "tkf/emacs-jedi" :build
              (("make" "requirements"))
              :build/windows-nt
              (("make" "requirements" "PYTHON=python.exe" "BINDIR=Scripts"))
              :build/berkeley-unix
              (("gmake" "requirements"))
              :submodule nil :depends
              (epc auto-complete)))
 (js2-mode status "installed" recipe
           (:name js2-mode :website "https://github.com/mooz/js2-mode#readme" :description "An improved JavaScript editing mode" :type github :pkgname "mooz/js2-mode" :prepare
                  (autoload 'js2-mode "js2-mode" nil t)))
 (lorem-ipsum status "installed" recipe
              (:name lorem-ipsum :description "Lorem Ipsum Generator" :type emacswiki :features lorem-ipsum :prepare
                     (progn
                       (autoload 'Lorem-ipsum-insert-paragraphs "lorem-ipsum")
                       (autoload 'Lorem-ipsum-insert-sentences "lorem-ipsum")
                       (autoload 'Lorem-ipsum-insert-list "lorem-ipsum"))))
 (markdown-mode status "installed" recipe
                (:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type git :url "git://jblevins.org/git/markdown-mode.git" :before
                       (add-to-list 'auto-mode-alist
                                    '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (nagios-mode status "installed" recipe
              (:name nagios-mode :description "An Emacs mode for Nagios <http://www.nagios.org/>" :type git :url "http://michael.orlitzky.com/git/nagios-mode.git" :features nagios-mode))
 (nginx-mode status "installed" recipe
             (:name nginx-mode :website "https://github.com/ajc/nginx-mode" :description "major mode for editing nginx config files" :type github :pkgname "ajc/nginx-mode"))
 (php-mode status "installed" recipe
           (:name php-mode :description "A PHP mode for GNU Emacs " :type github :pkgname "ejmr/php-mode" :website "https://github.com/ejmr/php-mode"))
 (popup status "installed" recipe
        (:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "auto-complete/popup-el"))
 (protobuf-mode status "installed" recipe
                (:name protobuf-mode :website "http://code.google.com/p/protobuf/" :description "Major mode for editing protocol buffers." :type http :url "http://protobuf.googlecode.com/svn-history/trunk/editors/protobuf-mode.el" :features protobuf-mode))
 (puppet-mode status "installed" recipe
              (:name puppet-mode :description "A simple mode for editing puppet manifests" :type github :pkgname "lunaryorn/puppet-mode" :website "https://github.com/lunaryorn/puppet-mode" :prepare
                     (progn
                       (autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests" t)
                       (add-to-list 'auto-mode-alist
                                    '("\\.pp$" . puppet-mode)))))
 (pylookup status "installed" recipe
           (:name pylookup :description "Emacs mode for searching python documents with convenience" :type github :pkgname "tsgates/pylookup" :prepare
                  (progn
                    (setq pylookup-program
                          (expand-file-name "pylookup.py")
                          pylookup-db-file
                          (expand-file-name "pylookup.db"))
                    (autoload 'pylookup-lookup "pylookup" "Lookup SEARCH-TERM in the Python HTML indexes." t)
                    (autoload 'pylookup-update "pylookup" "Run pylookup-update and create the database at `pylookup-db-file'." t))))
 (python-mode status "installed" recipe
              (:name python-mode :description "Major mode for editing Python programs" :type bzr :url "lp:python-mode" :load-path
                     ("." "test")
                     :compile nil :prepare
                     (progn
                       (autoload 'python-mode "python-mode" "Python editing mode." t)
                       (autoload 'doctest-mode "doctest-mode" "Doctest unittest editing mode." t)
                       (setq py-install-directory
                             (el-get-package-directory "python-mode"))
                       (add-to-list 'auto-mode-alist
                                    '("\\.py$" . python-mode))
                       (add-to-list 'interpreter-mode-alist
                                    '("python" . python-mode)))))
 (rhtml-mode status "installed" recipe
             (:name rhtml-mode :description "Major mode for editing RHTML files" :type github :pkgname "eschulte/rhtml" :prepare
                    (progn
                      (autoload 'rhtml-mode "rhtml-mode" nil t)
                      (add-to-list 'auto-mode-alist
                                   '("\\.html.erb$" . rhtml-mode)))))
 (scala-mode2 status "installed" recipe
              (:name scala-mode2 :website "https://github.com/hvesalai/scala-mode2" :description "A new scala-mode for Emacs 24" :type github :pkgname "hvesalai/scala-mode2" :load-path "." :features scala-mode2))
 (yaml-mode status "installed" recipe
            (:name yaml-mode :description "Simple major mode to edit YAML file for emacs" :type github :pkgname "yoshiki/yaml-mode"))
 (yasnippet status "installed" recipe
            (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :features "yasnippet" :pre-init
                   (unless
                       (or
                        (boundp 'yas/snippet-dirs)
                        (get 'yas/snippet-dirs 'customized-value))
                     (setq yas/snippet-dirs
                           (list
                            (concat el-get-dir
                                    (file-name-as-directory "yasnippet")
                                    "snippets"))))
                   :post-init
                   (put 'yas/snippet-dirs 'standard-value
                        (list
                         (list 'quote
                               (list
                                (concat el-get-dir
                                        (file-name-as-directory "yasnippet")
                                        "snippets")))))
                   :compile nil :submodule nil)))

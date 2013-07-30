((ack status "removed" recipe nil)
 (actionscript-mode-connors status "removed" recipe nil)
 (auto-complete status "removed" recipe nil)
 (color-theme status "installed" recipe
              (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
                     ("xzf")
                     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
                     (progn
                       (color-theme-initialize)
                       (setq color-theme-is-global t))))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :features el-get :info "." :load "el-get.el"))
 (ethan-wspace status "installed" recipe
               (:name ethan-wspace :description "Whitespace customizations for emacs" :type github :pkgname "glasserc/ethan-wspace" :load-path "lisp/" :features ethan-wspace))
 (full-ack status "removed" recipe nil)
 (fuzzy status "installed" recipe
        (:name fuzzy :website "https://github.com/m2ym/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "m2ym/fuzzy-el"))
 (git-emacs status "installed" recipe
            (:name git-emacs :description "Yet another git emacs mode for newbies" :type github :pkgname "tsgates/git-emacs" :features git-emacs))
 (go-mode status "installed" recipe
          (:name go-mode :description "Major mode for the Go programming language" :type http :url "http://go.googlecode.com/hg/misc/emacs/go-mode.el?r=tip" :localname "go-mode.el" :features go-mode :post-init
                 (add-to-list 'auto-mode-alist
                              '("\\.go\\'" . go-mode))))
 (js2-mode status "installed" recipe
           (:name js2-mode :website "https://github.com/mooz/js2-mode#readme" :description "An improved JavaScript editing mode" :type github :pkgname "mooz/js2-mode" :prepare
                  (autoload 'js2-mode "js2-mode" nil t)))
 (markdown-mode status "installed" recipe
                (:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :type git :url "git://jblevins.org/git/markdown-mode.git" :post-init
                       (add-to-list 'auto-mode-alist
                                    '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (nagios-mode status "installed" recipe
              (:name nagios-mode :description "An Emacs mode for Nagios <http://www.nagios.org/>" :type git :url "http://michael.orlitzky.com/git/nagios-mode.git" :features nagios-mode))
 (nginx-mode status "installed" recipe
             (:name nginx-mode :website "https://github.com/ajc/nginx-mode" :description "major mode for editing nginx config files" :type github :pkgname "ajc/nginx-mode"))
 (php-mode status "installed" recipe
           (:name php-mode :description "A PHP mode for GNU Emacs " :type github :pkgname ejmr/php-mode :website "https://github.com/ejmr/php-mode"))
 (popup status "installed" recipe
        (:name popup :website "https://github.com/m2ym/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "m2ym/popup-el"))
 (protobuf-mode status "installed" recipe
                (:name protobuf-mode :website "http://code.google.com/p/protobuf/" :description "Major mode for editing protocol buffers." :type http :url "http://protobuf.googlecode.com/svn-history/trunk/editors/protobuf-mode.el" :features protobuf-mode))
 (puppet-mode status "installed" recipe
              (:name puppet-mode :description "A simple mode for editing puppet manifests" :type http :url "https://raw.github.com/puppetlabs/puppet/master/ext/emacs/puppet-mode.el" :prepare
                     (progn
                       (autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests" t)
                       (add-to-list 'auto-mode-alist
                                    '("\\.pp$" . puppet-mode)))))
 (python-mode status "installed" recipe
              (:type github :username "emacsmirror" :name python-mode :type emacsmirror :description "Major mode for editing Python programs" :features
                     (python-mode doctest-mode)
                     :compile nil :load "test/doctest-mode.el" :prepare
                     (progn
                       (autoload 'python-mode "python-mode" "Python editing mode." t)
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
 (yaml-mode status "installed" recipe
            (:name yaml-mode :description "Simple major mode to edit YAML file for emacs" :type github :pkgname "yoshiki/yaml-mode" :prepare
                   (progn
                     (autoload 'yaml-mode "yaml-mode" nil t)
                     (add-to-list 'auto-mode-alist
                                  '("\\.ya?ml\\'" . yaml-mode)))))
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

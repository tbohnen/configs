;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     nginx
     csv
     sql
     yaml
     python
      (git :variables
           git-gutter-use-fringe t)
     html
     javascript
     ruby
     markdown
     fsharp
     csharp
     elixir
     osx
     ;;python
     org
     org
     shell
     auto-completion
     emacs-lisp
     haskell
     typescript
     react
     go
     themes-megapack


     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; better-defaults
     ;;org
     ;; syntax-checking
     )
   ;; List of additional packages that will be installed wihout being
   ;; wrapped in a layer. If you need some configuration for these
   dotspacemacs-additional-packages '(
                                      omnisharp
                                      flycheck
                                      alchemist
                                      emr
                                      ruby-refactor
                                      elixir-mode
                                      jade-mode
                                      find-file-in-project
                                      ag
                                      cypher-mode
                                      robe
                                      json-mode
                                      markdown-preview-mode
                                      swift-mode
                                      mocha
                                      kotlin-mode
                                      rjsx-mode
                                      solidity-mode
                                      gradle-mode
                                      ;;evil-tabs
                                      )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))


(defun dotspacemacs/init ()
  (eval-after-load 'company
    '(add-to-list 'company-backends 'company-omnisharp))
  (add-to-list 'load-path "~/.emacs.d/private/emacs-modules")
  ;;(add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'elixir-mode-hook 'alchemist-mode)

  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.1
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ))

(defun dotspacemacs/config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."
  (setq backup-directory-alist `(("." . "~/.saves")))
  (global-linum-mode)
  (add-to-list 'load-path "~/.emacs.d/private/n4js/")
  (require 'n4js)
)

(defun dotspacemacs/user-config ()
  (eval-after-load 'grep
    '(progn
       (setq helm-ag-use-grep-ignore-list 't)
       (add-to-list 'grep-find-ignored-directories ".git")
       (add-to-list 'grep-find-ignored-directories "target")
       (add-to-list 'grep-find-ignored-directories "node_modules")
       (add-to-list 'grep-find-ignored-directories "bower_components")
       (add-to-list 'grep-find-ignored-directories "gen")
       (add-to-list 'grep-find-ignored-files "*.jar")
       (add-to-list 'grep-find-ignored-files "angular.js")
       (add-to-list 'grep-find-ignored-files "bootstrap.js")
       (add-to-list 'grep-find-ignored-files "ng-grid.js")
       (add-to-list 'grep-find-ignored-files "cal-heatmap.js")
       (add-to-list 'grep-find-ignored-files "nrcerts")
       (add-to-list 'grep-find-ignored-files "*.dump")
       (setq js-indent-level 2)
       (setq typescript-indent-level 2)))
  (spacemacs/set-leader-keys "[tf" 'mocha-test-file)
  (spacemacs/set-leader-keys "[tp" 'mocha-test-project)
  (spacemacs/set-leader-keys "[ti" 'mocha-test-at-point)
  (setq-default js2-basic-offset 2)
  (add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
  (add-to-list 'auto-mode-alist '("containers\\/.*\\.js\\'" . rjsx-mode))
  (add-hook 'go-mode-hook
            (lambda ()
              (setq-default)
              (setq tab-width 2)
              (setq standard-indent 2)
              (setq indent-tabs-mode nil)))


  ;; (defun my-setup-indent (n)
  ;;   ;; java/c/c++
  ;;   (setq-local standard-indent n)
  ;;   (setq-local c-basic-offset n)
  ;;   ;; web development
  ;;   (setq-local javascript-indent-level n) ; javascript-mode
  ;;   (setq-local js-indent-level n) ; js-mode
  ;;   (setq-local react-indent-level n) ; react-mode
  ;;   (setq-local js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
  ;;   (setq-local web-mode-attr-indent-offset n) ; web-mode
  ;;   (setq-local web-mode-code-indent-offset n) ; web-mode, js code in html file
  ;;   (setq-local web-mode-css-indent-offset n) ; web-mode, css in html file
  ;;   (setq-local web-mode-markup-indent-offset n) ; web-mode, html tag in html file
  ;;   (setq-local web-mode-sql-indent-offset n) ; web-mode
  ;;   (setq-local web-mode-attr-value-indent-offset n) ; web-mode
  ;;   (setq-local css-indent-offset n) ; css-mode
  ;;   (setq-local sh-basic-offset n) ; shell scripts
  ;;   (setq-local sh-indentation n))

  ;; (defun my-personal-code-style ()
  ;;   (interactive)
  ;;   (message "My personal code style!")
  ;;   ;; use space instead of tab
  ;;   (setq indent-tabs-mode nil)
  ;;   ;; indent 2 spaces width
  ;;   (my-setup-indent 2))

  ;; (my-personal-code-style) ;; it would be lovely if this was enough, but it gets stomped on by modes >:(

  ;; (add-hook 'css-mode-hook 'my-personal-code-style)
  ;; (add-hook 'js2-mode-hook 'my-personal-code-style)
  ;; (add-hook 'react-mode-hook 'my-personal-code-style)
  ;; (add-hook 'sh-mode-hook 'my-personal-code-style)

 )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(ahs-case-fold-search nil)
 ;;'(ahs-default-range (quote ahs-range-whole-buffer))
 ;;'(ahs-idle-interval 0.25)
 ;;'(ahs-idle-timer 0 t)
 ;;'(ahs-inhibit-face-list nil)
 ;;'(custom-safe-themes
   ;;(quote
    ;;("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default)))
 ;;'(magit-use-overlays nil)
 ;;'(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
 ;;'(ring-bell-function (quote ignore) t)
 ;;'(send-mail-function (quote mailclient-send-it))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;'(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 ;;'(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;'(standard-indent 2))
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
;;  '(safe-local-variable-values
;;    (quote
;;     ((mocha-options . "--compilers :./tools/babel-setup.js --recursive")
;;      (mocha-environment-variables . "NODE_ENV=test")))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
;;  '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(safe-local-variable-values
;;    (quote
;;     ((mocha-options . "--compilers :./tools/babel-setup.js --recursive")
;;      (mocha-environment-variables . "NODE_ENV=test")))))
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
;;  '(safe-local-variable-values
;;    (quote
;;     ((mocha-options . "--compilers :./tools/babel-setup.js --recursive")
;;      (mocha-environment-variables . "NODE_ENV=test")))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
;;  '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-want-Y-yank-to-eol nil)
 '(js2-strict-missing-semi-warning nil)
 '(package-selected-packages
   (quote
    (orgit evil-magit company-anaconda anaconda-mode magit git-commit ghub with-editor pythonic zenburn-theme zen-and-art-theme yapfify yaml-mode xterm-color ws-butler winum white-sand-theme which-key web-mode web-beautify volatile-highlights vi-tilde-fringe use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toc-org tide tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit swift-mode sunny-day-theme sublime-themes subatomic256-theme subatomic-theme sql-indent spaceline spacegray-theme soothe-theme solidity-mode solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode sass-mode rvm ruby-tools ruby-test-mode ruby-refactor rubocop rspec-mode robe rjsx-mode reverse-theme reveal-in-osx-finder restart-emacs rebecca-theme rbenv rake rainbow-delimiters railscasts-theme pyvenv pytest pyenv-mode py-isort purple-haze-theme pug-mode professional-theme popwin planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pbcopy paradox osx-trash osx-dictionary organic-green-theme org-projectile org-present org-pomodoro org-mime org-download org-bullets open-junk-file omtose-phellack-theme omnisharp oldlace-theme occidental-theme obsidian-theme ob-elixir noctilux-theme nginx-mode neotree naquadah-theme mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mocha mmm-mode minitest minimal-theme material-theme markdown-toc markdown-preview-mode majapahit-theme magit-gitflow madhat2r-theme macrostep lush-theme lorem-ipsum livid-mode live-py-mode linum-relative link-hint light-soap-theme less-css-mode launchctl kotlin-mode json-mode js2-refactor js-doc jbeans-theme jazz-theme jade-mode ir-black-theme intero inkpot-theme indent-guide hy-mode hungry-delete htmlize hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-hoogle helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme haskell-snippets gruvbox-theme gruber-darker-theme grandshell-theme gradle-mode gotham-theme google-translate golden-ratio go-guru go-eldoc gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md gandalf-theme fuzzy fsharp-mode flycheck-mix flycheck-credo flx-ido flatui-theme flatland-theme find-file-in-project fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exotica-theme exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu espresso-theme eshell-z eshell-prompt-extras esh-help emr emmet-mode elisp-slime-nav dumb-jump dracula-theme django-theme diminish darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cypher-mode cyberpunk-theme csv-mode company-web company-tern company-statistics company-go company-ghci company-ghc company-cabal column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode cmm-mode clues-theme clean-aindent-mode chruby cherry-blossom-theme busybee-theme bundler bubbleberry-theme bracketed-paste birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes alchemist aggressive-indent ag afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(safe-local-variable-values
   (quote
    ((mocha-options . "--webpack-config ./tools/webpack.server.js")
     (mocha-options . "--compilers :./tools/babel-setup.js --recursive")
     (mocha-environment-variables . "NODE_ENV=test")
     (elixir-enable-compilation-checking . t)
     (elixir-enable-compilation-checking)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

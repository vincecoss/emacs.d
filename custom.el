;; bring back menu bar
(menu-bar-mode 1) 

;; OS X specific config
(setq mac-command-modifier 'meta)
;;(setq mac-option-modifier 'meta)

;; Custom keybindings
(normal-erase-is-backspace-mode 1) ; proper backspace/delete

;; Plugins
(add-to-list 'load-path "~/.emacs.d/vendor/")
(require 'php-mode)

(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet-0.6.1c")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet-0.6.1c/snippets")

(add-to-list 'load-path "~/.emacs.d/vendor/textmate.el")
(require 'textmate)
(textmate-mode)

;; Lisp
(setq inferior-lisp-program "/usr/local/bin/sbcl") ; your Lisp system
(add-to-list 'load-path "~/Library/Slime/slime/")  ; SLIME directory
(require 'slime)
(setq slime-net-coding-system 'utf-8-unix
      lisp-indent-function 'common-lisp-indent-function
      slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
(slime-setup '(slime-fancy))


;; Tramp to edit files over ssh
(require 'tramp)
(setq tramp-default-method "ssh")

;;; pref
(color-theme-twilight)

(column-number-mode t)
(line-number-mode t)

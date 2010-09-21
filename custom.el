;; bring back menu bar
(menu-bar-mode 1) 

;; OS X specific config
(setq mac-command-modifier 'meta)

;; Custom keybindings
(normal-erase-is-backspace-mode 1) ; proper backspace/delete

;; Plugins
(add-to-list 'load-path "~/.emacs.d/vendor/")
(require 'php-mode)

(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet-0.6.1c")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet-0.6.1c/snippets")

;; Tramp to edit files over ssh
(require 'tramp)
(setq tramp-default-method "ssh")

;;; pref
(color-theme-twilight)

(column-number-mode t)
(line-number-mode t)

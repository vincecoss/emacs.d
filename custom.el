;; bring back menu bar
(menu-bar-mode 1) 

;;; OS X specific config
(setq mac-command-modifier 'meta)

;;; Plugins
(add-to-list 'load-path "~/.emacs.d/plugins/")
(require 'php-mode)

(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1c")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")

;;; pref
(color-theme-twilight)

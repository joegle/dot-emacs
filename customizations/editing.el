(require 'use-package)

(bind-keys*
 ("DEL" . backward-kill-word))

(setq backup-directory-alist `(("." . "~/.saves")))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(require 'use-package)

(bind-keys*
 ("M-DEL" . backward-delete-char)
 ("DEL" . backward-kill-word))

(setq backup-directory-alist `(("." . "~/.saves")))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

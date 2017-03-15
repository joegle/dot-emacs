(require 'use-package)

(require 'move-text)
(move-text-default-bindings)

(bind-keys*
 ("M-DEL" . backward-delete-char)
 ("DEL" . backward-kill-word)
 ("M-j" . move-text-down)
 ("M-k" . move-text-up))

(setq backup-directory-alist `(("." . "~/.saves")))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

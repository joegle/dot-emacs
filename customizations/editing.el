(require 'use-package)

(require 'move-text)
(move-text-default-bindings)

(require 'goto-last-change)

(require 'fix-word)
(global-set-key (kbd "M-u") #'fix-word-upcase)
(global-set-key (kbd "M-l") #'fix-word-downcase)
(global-set-key (kbd "M-c") #'fix-word-capitalize)

(require 'expand-region)

(bind-keys*
 ("M-DEL" . backward-delete-char)
 ("DEL" . backward-kill-word)
 ("M-/" . delete-horizontal-space)
 ("C-c C-d" . er/expand-region)
 ("C-x C-\\" . goto-last-change)

 ("M-k" . move-text-up)
 ("M-j" . move-text-down))

(setq backup-directory-alist `(("." . "~/.saves")))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

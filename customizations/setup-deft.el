(require 'deft)

(use-package deft
  :bind ("<f8>" . deft)
  :commands (deft)
  :config (setq deft-extensions '("org"))
          (setq deft-default-extension "org")
          (setq deft-directory "~/deft")
          (setq deft-text-mode 'org-mode)
          (setq deft-use-filename-as-title t)
          (setq deft-use-filter-string-for-filename t)
  
  )

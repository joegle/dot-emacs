;disable backups
(setq backup-inhibited t)
(setq backup-directory-alist `(("." . "~/.saves")))

;disable auto save
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)

;; Show line numbers
(global-linum-mode)

; line number format
(setq linum-format "%3d ")

(global-visual-line-mode t)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

(setq inhibit-startup-screen t)
(setq initial-scratch-message "")

; disable the toolbar with icons
(tool-bar-mode -1)

(setq-default
 tab-width 2
 standard-indent 2
 indent-tabs-mode nil)


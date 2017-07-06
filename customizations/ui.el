;disable backups
(setq backup-inhibited t)

;disable auto save
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)

;; Show line numbers
(global-linum-mode)

(global-visual-line-mode t)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

(setq inhibit-startup-screen t)
(setq initial-scratch-message "")


; disable the toolbar with icons
(tool-bar-mode -1)


(require 'fill-column-indicator)

(setq-default fill-column 80)
(define-globalized-minor-mode my-global-fci-mode fci-mode turn-on-fci-mode)

(my-global-fci-mode 1)

(global-hl-line-mode 1)



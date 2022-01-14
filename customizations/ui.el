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

(require 'zen-mode)

;(global-hl-line-mode 1)

(set-face-background 'vertical-border "gray")
(set-face-foreground 'vertical-border (face-background 'vertical-border))

(setq ring-bell-function
      (lambda ()
        (let ((orig-fg (face-foreground 'mode-line)))
          (set-face-foreground 'mode-line "#F2804F")
          (run-with-idle-timer 0.1 nil
                               (lambda (fg) (set-face-foreground 'mode-line fg))
                               orig-fg))))

;install xsel for this to work
(defun yank-to-x-clipboard ()
  (interactive)
  (if (region-active-p)
	  (progn
		(shell-command-on-region (region-beginning) (region-end) "xsel -i -b")
		(message "Yanked region to clipboard!")
		(deactivate-mark))
	(message "No region active; can't yank to clipboard!")))

(global-set-key [f8] 'yank-to-x-clipboard)

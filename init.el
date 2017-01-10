;disable backups
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/elpa/neotree-20161028.2314/")
(add-to-list 'load-path "~/.emacs.d/elpa/org-tree-slide-20160513.2325/")
(add-to-list 'load-path "~/.emacs.d/downloads/")

(require 'neotree)
(global-set-key [f5] 'neotree-toggle)

(require 'org-tree-slide)
(when (require 'org-tree-slide nil t)
  (global-set-key (kbd "<f8>") 'org-tree-slide-mode)
  (global-set-key (kbd "S-<f8>") 'org-tree-slide-skip-done-toggle)
  (define-key org-tree-slide-mode-map (kbd "<f9>")
    'org-tree-slide-move-previous-tree)
  (define-key org-tree-slide-mode-map (kbd "<f10>")
    'org-tree-slide-move-next-tree)
  (define-key org-tree-slide-mode-map (kbd "<f11>")
    'org-tree-slide-content)
  (setq org-tree-slide-skip-outline-level 4)
  (org-tree-slide-narrowing-control-profile)
  (setq org-tree-slide-skip-done nil))

(global-visual-line-mode t)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; syntax highlight code in org-mode
(setq org-src-fontify-natively t)

(require 'org-daypage)
;(setq daypage-path "~/notes/days/")
(setq daypage-path "~/Documents/notes/")
(define-key daypage-mode-map (kbd "<C-left>") 'daypage-prev)
(define-key daypage-mode-map (kbd "<C-right>") 'daypage-next)
;; (define-key daypage-mode-map (kbd "<C-up>") 'daypage-prev-week)
;; (define-key daypage-mode-map (kbd "<C-down>") 'daypage-next-week)
;; (define-key daypage-mode-map "\C-c." 'daypage-time-stamp)
;;
;; (global-set-key [f11] 'todays-daypage)
;; (global-set-key [f10] 'yesterdays-daypage)
(global-set-key "\C-con" 'todays-daypage)
(global-set-key "\C-coN" 'find-daypage)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :foreground "color-39")))))

(setq org-image-actual-width nil)

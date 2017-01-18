(require 'org-daypage)
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

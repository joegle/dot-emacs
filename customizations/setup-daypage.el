(require 'org-daypage)
(setq daypage-path "~/daypages/")

(define-key daypage-mode-map (kbd "<C-left>") 'daypage-prev)
(define-key daypage-mode-map (kbd "<C-right>") 'daypage-next)
(define-key daypage-mode-map (kbd "C-c 5") 'daypage-random-prompt)

;; (define-key daypage-mode-map (kbd "<C-left>") 'daypage-prev)
;; (define-key daypage-mode-map (kbd "<C-right>") 'daypage-next)
;; (define-key daypage-mode-map (kbd "<C-up>") 'daypage-prev-week)
;; (define-key daypage-mode-map (kbd "<C-down>") 'daypage-next-week)
;; (define-key daypage-mode-map "\C-c." 'daypage-time-stamp)

(bind-keys*
 ("C-c on" . todays-daypage)
 ("C-c ol" . daypage-new-item)
 ("C-c oN" . find-daypage)
 )

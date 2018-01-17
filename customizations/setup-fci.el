(require 'fill-column-indicator)

(setq-default fill-column 80)
(define-globalized-minor-mode my-global-fci-mode fci-mode turn-on-fci-mode)

(my-global-fci-mode 1)

(global-hl-line-mode 1)


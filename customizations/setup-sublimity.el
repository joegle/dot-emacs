(require 'sublimity)
(require 'sublimity-scroll)
;; (require 'sublimity-map)
;; (require 'sublimity-attractive)


(defcustom joegle-enable-sublimity 3
  "idle time limit to trigger prompt"
  :type 'boolean
  :group 'joegle)


(if joegle-enable-sublimity
    (sublimity-mode 1))

(push 'self-insert-command sublimity-ignored-scroll-commands)

;(setq sublimity-scroll-weight 50
;      sublimity-scroll-drift-length 45)

					; (setq sublimity-map-size 20)
; (setq sublimity-map-fraction 0.3)
; (setq sublimity-map-text-scale -7)


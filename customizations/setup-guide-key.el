(require 'guide-key)

(setq guide-key/guide-key-sequence
      '("C-x r" "C-x"
        (org-mode "C-c")
        (deft-mode "C-c")
        (projectile-mode "C-c p")
        (magit "C")))

(guide-key-mode 1)  ; Enable guide-key-mode


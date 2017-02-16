(require 'god-mode)

; (global-set-key (kbd "ESC") 'god-local-mode)

(defun my-update-cursor ()
  (setq cursor-type (if (or god-local-mode buffer-read-only)
			'box
		      'bar)))

(add-hook 'god-mode-enabled-hook 'my-update-cursor)
(add-hook 'god-mode-disabled-hook 'my-update-cursor)

(defun c/god-mode-update-cursor ()
  (let ((limited-colors-p (> 257 (length (defined-colors)))))
    (cond (god-local-mode (progn
			    (set-face-background 'mode-line (if limited-colors-p "white" "#e9e2cb"))
			    (set-face-background 'mode-line-inactive (if limited-colors-p "white" "#e9e2cb"))))
	  (t (progn
	       (set-face-background 'mode-line (if limited-colors-p "black" "#0a2832"))
	       (set-face-background 'mode-line-inactive (if limited-colors-p "black" "#0a2832")))))))


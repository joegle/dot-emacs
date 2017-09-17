;; race-mode
;; Copyright 2017 Joseph Wright joe@joegle.com

; followed http://nullprogram.com/blog/2013/02/06/

(make-variable-buffer-local
 (defvar race-target nil
   "Cursor target position"))

(defun race-start ()
  "start the race"
  (interactive)
  (message "Race started!"))

(defun random-from-range (start end)
  (+ start (random (+ 1 (- end start)))))

(defun random-window-position ()
  "pick random character to select as "
  (interactive)
  (random-from-range (window-start) (window-end)))

(defun race-pick-target ()
  "pick a good target"
  (interactive)
  (let ((target (random-window-position)))
    (while (is-newline target)
      (setq target (random-window-position)))
    (setq race-target target)))

  
(defun is-newline (position)
  "check if buffer position is whitespace"
  (interactive)
  (let ((the-char (char-after position)))
        (or
         (char-equal the-char ?\s)
         (char-equal the-char ?\t)
         (char-equal the-char ?\n))))

(defun race-target-overlay (@begin @end)
    "highlight the target with overlay"
    (interactive "r")
    (progn
      (overlay-put (make-overlay @begin @end) 'face '(:underline t :background "#5fd700" :box t :foreground "black"))
      (setq mark-active nil)))

(defun race-mark ()
  "select and mark the target"
  (interactive)
  (progn
    ;(race-target-acquired)
    (race-pick-target)
    (race-target-overlay race-target (+ 1 race-target))))

(defun race-target-remove (@begin @end)
    "Remove target overlay on region"
    (interactive "r")
    (progn
      (remove-overlays @begin @end)
      (setq mark-active nil)))

(defun race-clear-target ()
  "clear the active target"
  (interactive)
  (progn
    (race-target-remove race-target (+ 1 race-target))
    (setq race-target nil)))
  

(defun race-point ()
  (interactive)
  (message "The point is at %s" (point)))

(defun race-end ()
  "end the race"
  (interactive)
  (message "Race ended"))


(defun race-init ()
  (interactive)
  (setq race-target (1+ race-target)))

;;;###autoload
(define-minor-mode race-mode
  "Cursor movement racing game"
  :lighter " race"
  :init-value t
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "C-c t") 'race-target-overlay)
            (define-key map (kbd "C-c p") 'race-point)
            (define-key map (kbd "C-c m") 'race-mark)
            (define-key map (kbd "C-c c") 'race-clear-target)
            (define-key map (kbd "C-c s") 'race-start)
            (define-key map (kbd "C-c e") 'race-end)
            map))

;;;###autoload
(add-hook 'text-mode-hook 'race-mode)

(defvar last-post-command-position 0
  "Holds the cursor position from the last run of post-command-hooks.")

(make-variable-buffer-local 'last-post-command-position)

(defun race-target-aquired ()
  "function to fun when target is aquired"
  (progn
    (write-region (format "%s\n" (float-time)) nil "log.txt" 'append))
    (race-clear-target)
    (race-mark)
    (message "Bingo")
  )
    

(defun race-hook ()
  "run for each movement to check if on target"
  (unless (equal (point) last-post-command-position)
    (let ((sights (point)))
      
      (if (equal sights race-target)
          (race-target-aquired)))
    
  (setq last-post-command-position (point))))

(add-to-list 'post-command-hook #'race-hook)

(global-auto-revert-mode t)

(provide 'race)


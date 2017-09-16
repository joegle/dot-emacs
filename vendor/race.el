;; race-mode
;; Copyright 2017 Joseph Wright joe@joegle.com

; Followed http://nullprogram.com/blog/2013/02/06/

(make-variable-buffer-local
 (defvar race-target 0
   "Cursor target position"))

(defun race-start ()
  "start the race"
  (interactive)
  (message "Race started!"))

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
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "C-c s") 'race-start)
            (define-key map (kbd "C-c e") 'race-end)
            map))

;;;###autoload
(add-hook 'text-mode-hook 'race-mode)

(provide 'race)


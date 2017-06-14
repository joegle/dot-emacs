;; Misc
(require 'use-package)

(defun grep-at-cursor ()
  (interactive)
  (with-output-to-temp-buffer "*grep-results*"
    (let* ((cur-word (thing-at-point 'word))
	 (cmd (concat "grep -C1 -r --color" " " cur-word " .")))
      (shell-command cmd
		     "*grep-results*"
		     "*Messages*")
      (pop-to-buffer "*grep-results*"))))


(bind-keys*
 ("C-c C-g" . grep-at-cursor)
 ("C-c C-s" . cheatsheet-show))



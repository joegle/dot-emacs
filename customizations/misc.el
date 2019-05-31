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
 ("C-x g" . magit-status)
 ("C-c C-s" . cheatsheet-show))

(setq-default initial-scratch-message
	      (concat ";; We do not rise to the level of our hopes. We fall to the level of our training.\n\n"))

(require 'dash-at-point)
(global-set-key (kbd "C-c d a") 'dash-at-point)


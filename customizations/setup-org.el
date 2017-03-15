(require 'org)

(defun guide-key/my-hook-function-for-org-mode ()
  (guide-key/add-local-guide-key-sequence "C-c")
  (guide-key/add-local-guide-key-sequence "C-c C-x")
  (guide-key/add-local-highlight-command-regexp "org-"))

(add-hook 'org-mode-hook 'guide-key/my-hook-function-for-org-mode)


;; Youtube embed
(defvar yt-iframe-format
  ;; You may want to change your width and height.
  (concat "<iframe width=\"440\""
	  " height=\"335\""
	  " src=\"https://www.youtube.com/embed/%s\""
	  " frameborder=\"0\""
	  " allowfullscreen>%s</iframe>"))

(setq org-export-with-sub-superscripts nil)
(setq org-hide-leading-stars t)

(org-add-link-type
 "yt"
 (lambda (handle)
   (browse-url
    (concat "https://www.youtube.com/embed/"
	    handle)))
 (lambda (path desc backend)
   (cl-case backend
     (html (format yt-iframe-format
		   path (or desc "")))
     (latex (format "\href{%s}{%s}"
		    path (or desc "video"))))))
; end youtube

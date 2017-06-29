; ███████╗███╗   ███╗ █████╗  ██████╗███████╗
; ██╔════╝████╗ ████║██╔══██╗██╔════╝██╔════╝
; █████╗  ██╔████╔██║███████║██║     ███████╗
; ██╔══╝  ██║╚██╔╝██║██╔══██║██║     ╚════██║
; ███████╗██║ ╚═╝ ██║██║  ██║╚██████╗███████║
; ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝
; ------------ THE EDITOR OF A LIFETIME -----

(defun foo ()
  "my foo"
  (interactive)
  (with-temp-message "hello world"))

; https://www.gnu.org/software/emacs/manual/html_node/elisp/Idle-Timers.html
; https://stackoverflow.com/questions/2321904/elisp-how-to-save-data-in-a-file
(defun ff ()
  "Prompt user to enter a file name, with completion and history support."
  (interactive)
  (if (y-or-n-p "Would you like to review cheatsheet?")
      (progn
	;; code to do something here
	(cheatsheet-show)
	)
    (progn
      ;; code if user answered no.
      )
    )
  )

;; Define package repositories
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;; Load and activate emacs packages. Do this first so that the
;; packages are loaded before you start trying to modify them.
;; This also sets the load path.
(package-initialize)


;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;; The packages you want installed. You can also install these
;; manually with M-x package-install
(defvar my-packages
  '(
    ;; Enhances M-x to allow easier execution of commands. Provides
    ;; a filterable list of possible commands in the minibuffer
    ;; http://www.emacswiki.org/emacs/Smex
    smex

    ;; colorful parenthesis matching
    rainbow-delimiters

    ;; git integration
    magit

    ;; sidebar / file explorer
    neotree

    goto-last-change
    
    god-mode

    cheatsheet

    move-text
    
    auto-complete

    guide-key

    moe-theme
    all-the-icons

    markdown-mode

    dockerfile-mode

    yaml-mode

    sublimity

    expand-region

    smooth-scrolling

    js2-mode

    ace-jump-mode

    json-mode

    use-package

    go-mode))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Place downloaded elisp files in ~/.emacs.d/vendor. You'll then be able
;; to load them.
;;
;; For example, if you download yaml-mode.el to ~/.emacs.d/vendor,
;; then you can add the following code to this file:
;;
;; (require 'yaml-mode)
;; (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
;;
;; Adding this code will make Emacs enter yaml mode whenever you open
;; a .yml file
(add-to-list 'load-path "~/.emacs.d/vendor")


;; Customization qq

;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")

(load "ui.el")
(load "editing.el")

(load "misc.el")

(load "setup-neotree.el")
(load "setup-moe.el")
(load "setup-deft.el")
(load "setup-daypage.el")
(load "setup-org.el")
(load "setup-guide-key.el")
(load "setup-auto-complete.el")
(load "setup-expand-region.el")
(load "setup-ace-jump-mode.el")
(load "setup-god-mode.el")
(load "setup-sublimity.el")
(load "setup-javascript.el")
(load "setup-clojure.el")

;; Language-specific
;(load "setup-clojure.el")
;(load "setup-js.el")

(message "== dot-emacs git status ==")
(message (shell-command-to-string "git -C ~/.emacs.d/ status -s "))


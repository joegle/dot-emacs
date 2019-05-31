; -------------------------------------------
; ███████╗███╗   ███╗ █████╗  ██████╗███████╗
; ██╔════╝████╗ ████║██╔══██╗██╔════╝██╔════╝
; █████╗  ██╔████╔██║███████║██║     ███████╗
; ██╔══╝  ██║╚██╔╝██║██╔══██║██║     ╚════██║
; ███████╗██║ ╚═╝ ██║██║  ██║╚██████╗███████║
; ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝
; ------------ THE EDITOR OF A LIFETIME -----

; https://www.gnu.org/software/emacs/manual/html_node/elisp/Idle-Timers.html
; https://stackoverflow.com/questions/2321904/elisp-how-to-save-data-in-a-file
(random t)

; '(browse-url-browser-function (quote browse-url-chrome))
; '(browse-url-chrome-program
;    "/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe")

; Customizations file
; git update-index --assume-unchanged local-customizations.el
(setq custom-file "~/.emacs.d/local-customizations.el")
(load custom-file)

(defgroup joegle nil
  "Namespace for my stuff"
  :group 'emacs)

(defcustom joegle-enable-cs-timeout t
  "Enable to random alert for cheatsheet review"
  :type 'boolean
  :group 'joegle)

(defcustom joegle-cs-do-repeat t
  "Enable for cheatsheet alert timeout to repeat"
  :type 'boolean
  :group 'joegle)

(defcustom joegle-timeout-seconds 3
  "idle time limit to trigger prompt"
  :type 'integer
  :group 'joegle)

(defcustom joegle-chance-factor 200
  "set chance of prompt to be 1/n"
  :type 'integer
  :group 'joegle)

(defcustom joegle-prompt-file "~/.prompts"
  "each line of this file is a prompt"
  :type 'file
  :group 'joegle)

(defun read-lines (filePath)
  "Return a list of lines of a file at filePath."
  (with-temp-buffer
    (insert-file-contents filePath)
    (split-string (buffer-string) "\n" t)))

(defun random-pick-from-list (m lst)
  "pick m non-repeating elements from list 
    burubaxair.wordpress.com"
  (let ((lng-lst (length lst)))
    (if (or (<= m 0) (> m lng-lst))
      nil
      (loop 
        with el 
        until (= (length rand-lst) m)
        when (not (find 
                    (setf el (nth (random lng-lst) lst)) 
                    rand-lst))
          append (list el) into rand-lst 
        finally (return rand-lst)))))

(defun r-prompt ()
  "Return random prompt from prompt set"
  (interactive)
  (car (random-pick-from-list 1 (read-lines joegle-prompt-file))))
    
(defun chance-n (n)
  "Random chance out of n"
  (eq 0 (random n)))

(defun ff ()
  "Prompt user to enter a file name, with completion and history support."
  (interactive)

  (if (y-or-n-p-with-timeout "Would you like to review cheatsheet?" 3 nil)
      (cheatsheet-show)))


(defun maybe-ask-cheatsheet ()
  (if (chance-n joegle-chance-factor)
      (ff)))

(if joegle-enable-cs-timeout
    (run-with-idle-timer joegle-timeout-seconds joegle-cs-do-repeat 'maybe-ask-cheatsheet))

;; Define package repositories
(require 'package)

(setq package-archives '(("melpa" . "http://melpa.org/packages/")
			 ("melpa-stable" . "http://stable.melpa.org/packages/")
			 ("org" . "http://orgmode.org/elpa/")))

(package-initialize)

;; Load and activate emacs packages. Do this first so that the
;; packages are loaded before you start trying to modify them.
;; This also sets the load path.


;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.

; When you have trouble getting packages:
;(package-refresh-contents)

; This adds a lot of start up delay
;(when (not package-archive-contents)
;  (package-refresh-contents))

;; The packages you want installed. You can also install these
;; manually with M-x package-install
(defvar my-packages
  '(
    ;; Enhances M-x to allow easier execution of commands. Provides
    ;; a filterable list of possible commands in the minibuffer
    ;; http://www.emacswiki.org/emacs/Smex
    smex

    rg

    rjsx-mode
    
    projectile

    multi-web-mode

    dash-at-point

    fix-word

    fill-column-indicator

    ;; colorful parenthesis matching
    rainbow-delimiters

    ;; git integration
    magit

    ;; sidebar / file explorer
    neotree

    goto-last-change
    
    god-mode

    move-text
    
    auto-complete

    guide-key

    moe-theme
    all-the-icons

    markdown-mode

    dockerfile-mode

    openwith
    
    yaml-mode

    ob-ipython

    sublimity

    expand-region

    js2-mode

    ace-jump-mode

    json-mode

    use-package

    ein

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
(load "uncommitted-dmz-todo-changes-DO-NOT-SAVE" 'ignore-if-missing)

(load "setup-fci.el")
(load "setup-grep.el")
(load "setup-moe.el")
(load "setup-deft.el")
(load "setup-daypage.el")
(load "setup-org.el")
(load "setup-guide-key.el")
(load "cheatsheet-groups.el")
(load "setup-auto-complete.el")
(load "setup-expand-region.el")
(load "setup-ace-jump-mode.el")
(load "setup-god-mode.el")
(load "setup-sublimity.el")
(load "setup-javascript.el")
(load "setup-go.el")
(load "setup-bookmarks.el")
(load "setup-python.el")

(if (eq system-type 'darwin)
    (load "setup-mac.el"))

;; Language-specific
;(load "setup-clojure.el")
;(load "setup-js.el")


(message "🔸🔸 dot-emacs git status 🔷🔷")
(message (shell-command-to-string "git -C ~/.emacs.d/ status -s "))

(message (format "Load time: %s" (emacs-init-time)))

(with-eval-after-load 'rjsx-mode
  (define-key rjsx-mode-map "<" nil)
  (define-key rjsx-mode-map (kbd "C-d") nil)
  (define-key rjsx-mode-map ">" nil))



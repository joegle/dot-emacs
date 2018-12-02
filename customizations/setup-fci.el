(require 'fill-column-indicator)

(setq-default fill-column 80)
(setq fci-handle-truncate-lines t)

; https://github.com/alpaker/Fill-Column-Indicator/issues/67#issuecomment-195611974
(use-package fill-column-indicator
  :ensure t
  :init
  (add-hook 'prog-mode-hook #'fci-mode)
  :config
  (defvar eos/fci-disabled nil)
  (make-variable-buffer-local 'eos/fci-disabled)
  ;; Add a hook that disables fci if enabled when the window changes and it
  ;; isn't wide enough to display it.
  (defun eos/maybe-disable-fci ()
    (interactive)
    ;; Disable FCI if necessary
    (when (and fci-mode
               (< (window-width) (or fci-rule-column fill-column))
               )
      (fci-mode -1)
      (setq-local eos/fci-disabled t))
    ;; Enable FCI if necessary
    (when (and eos/fci-disabled
               (eq fci-mode nil)
               (> (window-width) (or fci-rule-column fill-column)))
      (fci-mode 1)
      (setq-local eos/fci-disabled nil)))

  (defun eos/add-fci-disabling-hook ()
    (interactive)
    (add-hook 'window-configuration-change-hook
              #'eos/maybe-disable-fci))
  (add-hook 'prog-mode-hook #'eos/add-fci-disabling-hook))


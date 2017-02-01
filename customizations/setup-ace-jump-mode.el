(require 'ace-jump-mode)
(require 'bind-key)

(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))

(bind-key* "C-c SPC" 'ace-jump-mode)
(bind-key* "C-x SPC" 'ace-jump-mode-pop-mark)


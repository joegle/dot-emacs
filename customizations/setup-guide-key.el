(require 'guide-key)

(setq guide-key/guide-key-sequence
      '("C-x r" "C-x"
        (org-mode "C-c")
        (deft-mode "C-c")
        (projectile-mode "C-c p")
        (magit "C")))

(guide-key-mode 1)  ; Enable guide-key-mode

(global-set-key (kbd "C-c C-s") 'cheatsheet-show)

; M-x cheatsheet-show
(cheatsheet-add-group 'Learn
                      '(:key "C-c on" :description "Open daypage")
                      '(:key "C-c ol" :description "Log item to daypage")
                      '(:key "C-c 5" :description "start 5 minute log prompt")
                      '(:key "C-x C-\\" :description "goto-last-change")
                      '(:key "C-c C-g" :description "grep-at-cursor")
                      '(:key "C-h r" :description "start emacs info manual")
                      '(:key "C-h c [key]" :description "describe key")
                      '(:key "C-h a [topic]" :description "search help")
                      '(:key "C-c d a" :description "dash-at-point")
                      '(:key "M-x apropos" :description "apropos help search")
                      '(:key "where-is" :description "Find key for function")
                      '(:key "M-x customize-group" :description "customize group"))

(cheatsheet-add-group 'A
                      '(:key "C-x C-w" :description "save buffer as")
                      '(:key "C-x C-v" :description "find-alternate-file"))

(cheatsheet-add-group 'Deleting
                      '(:key "M-z [char]" :description "delete to char")
                      '(:key "M-/" :description "delete whitespace")
                      '(:key "M-[SPC]" :description "delete whitespace except 1 space")
                      '(:key "C-x C-o" :description "delete blank lines"))
                      
(cheatsheet-add-group 'Editing
                      '(:key "C-o" :description "insert line")
                      '(:key "M-^" :description "conjoin current line to previous")
                      '(:key "M-c" :description "capitalize word")
                      '(:key "M-w" :description "copy")
                      '(:key "C-y" :description "paste")
                      '(:key "C-x C-x" :description "swap point and mark"))

(cheatsheet-add-group 'Windows
                      '(:key "C-x ^" :description "window taller")
                      '(:key "C-x {}" :description "window width")
                      '(:key "C-x C-v" :description "replace buffer"))

(cheatsheet-add-group 'Moving
                      '(:key "M-m" :description "goto first char of line")
                      '(:key "C-x C-f" :description "find file"))


(cheatsheet-add-group 'Common
                      '(:key "M-r" :description "move cursor to top, middle, bottom")
                      '(:key "C-x C-x" :description "exchange point and mark")
                      '(:key "C-x o n" :description "Open day page")
                      '(:key "C-x C-b" :description "list buffers")
                      '(:key "C-u M-! [CMD]" :description "Insert command output")
                      '(:key "F10" :description "open menu bar")
                      '(:key "C-x C-p" :description "select entire page")
                      '(:key "C-x C-h" :description "select entire buffer")
                      '(:key "C-x zzzzz" :description "repeat last command and keep repeating"))

(cheatsheet-add-group 'Org
                      '(:key "C-c C-x n/p" :description "goto next link")
                      '(:key "C-x C-f" :description "find file")
                      '(:key "C-c C-f/b" :description "move to same heading"))

(cheatsheet-add-group 'Debugging
                      '(:key "C-h m" :description "show active modes")
                      '(:key "M-x <mode>" :description "toggle mode on/off"))

(cheatsheet-add :group 'Notes
                :key "C-con"
                :description "todays daypage")

(cheatsheet-add :group 'Notes
                :key "C-coN"
                :description "find daypage")


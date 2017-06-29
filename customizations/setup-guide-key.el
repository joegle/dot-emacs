(require 'guide-key)
(setq guide-key/guide-key-sequence
      '("C-x r" "C-x 4"
	(org-mode "C-c")
	(magit "C")))

(guide-key-mode 1)  ; Enable guide-key-mode

(global-set-key (kbd "C-c C-s") 'cheatsheet-show)

; M-x cheatsheet-show
(cheatsheet-add :group 'Common
		:key "C-x C-c"
		:description "leave Emacs.")

(cheatsheet-add-group 'Learn
		      '(:key "C-x C-\\" :description "goto-last-change")
		      '(:key "C-c C-g" :description "grep-at-cursor")
		      '(:key "C-q" :description "close cheatsheet"))
		      

(cheatsheet-add :group 'Common
		:key "C-x o n"
		:description "Open day page")

(cheatsheet-add :group 'Common
		:key "C-x C-b"
		:description "list buffers")

(cheatsheet-add :group 'Org
		:key "C-c C-c 'noexport'"
		:description "tag export disable")

(cheatsheet-add :group 'Org
		:key "C-c -"
		:description "Make selection into list")

(cheatsheet-add :group 'Common
		:key "C-u M-! [CMD]"
		:description "Insert command output")

(cheatsheet-add :group 'Org
		:key "<s [TAB]"
		:description "Insert code block")

(cheatsheet-add :group 'Common
		:key "F10"
		:description "open menu bar")

(cheatsheet-add :group 'Common
		:key "C-x C-p"
		:description "select entire page")

(cheatsheet-add :group 'Common
		:key "C-x C-p"
		:description "select entire page")

(cheatsheet-add :group 'Common
		:key "C-x C-h"
		:description "select entire buffer")

(cheatsheet-add :group 'Common
		:key "C-x zzzzz"
		:description "repeat last command")

(cheatsheet-add :group 'Common
		:key "M-r"
		:description "move cursor to top, middle, bottom")

(cheatsheet-add :group 'Common
		:key "C-x zzzzz"
		:description "repeat last command")

(cheatsheet-add :group 'Learn
		:key "M-x customize-group"
		:description "customize group")

(cheatsheet-add :group 'Common
		:key "C-x C-x"
		:description "exchange point and mark")

(cheatsheet-add :group 'Learn
		:key "C-h c [key]"
		:description "describe key")

(cheatsheet-add :group 'Learn
		:key "C-h a [topic]"
		:description "search help")

(cheatsheet-add :group 'Learn
		:key "where-is"
		:description "Find key for function")

(cheatsheet-add :group 'Common
		:key "C-x C-o"
		:description "delete blank lines")

(cheatsheet-add :group 'Notes
		:key "C-con"
		:description "todays daypage")

(cheatsheet-add :group 'Notes
		:key "C-coN"
		:description "find daypage")




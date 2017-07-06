(require 'guide-key)
(setq guide-key/guide-key-sequence
      '("C-x r" "C-x"
	(org-mode "C-c")
	(magit "C")))

(guide-key-mode 1)  ; Enable guide-key-mode

(global-set-key (kbd "C-c C-s") 'cheatsheet-show)

; M-x cheatsheet-show
(cheatsheet-add-group 'A
		      '(:key "C-x C-c" :description "leave Emacs")
		      '(:key "C-x C-f" :description "find file"))

(cheatsheet-add-group 'Editing
		      '(:key "C-o" :description "insert line")
		      '(:key "M-z [char]" :description "delete to char")
		      '(:key "C-x C-f" :description "find file")
		      '(:key "M-/" :description "delete whitespace")
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


(cheatsheet-add :group 'Common
		:key "C-x C-c"
		:description "leave Emacs.")

(cheatsheet-add-group 'Learn
		      '(:key "C-x C-\\" :description "goto-last-change")
		      '(:key "C-c C-g" :description "grep-at-cursor")
		      '(:key "C-q" :description "close cheatsheet")
		      '(:key "C-h r" :description "start emacs info manual")
		      '(:key "C-h c [key]" :description "describe key")
		      '(:key "C-h a [topic]" :description "search help")
		      '(:key "where-is" :description "Find key for function")
		      '( :key "M-x customize-group" :description "customize group"))

(cheatsheet-add :group 'Common
		:key "C-x o n"
		:description "Open day page")

(cheatsheet-add :group 'Common
		:key "C-x C-b"
		:description "list buffers")

(cheatsheet-add-group 'Org
		      '(:key "C-c C-x n/p" :description "goto next link")
		      '(:key "C-x C-f" :description "find file")
		      '(:key "C-c C-f/b" :description "move to same heading"))


(cheatsheet-add :group 'Common
		:key "C-u M-! [CMD]"
		:description "Insert command output")

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

(cheatsheet-add :group 'Common
		:key "C-x C-x"
		:description "exchange point and mark")

(cheatsheet-add :group 'Common
		:key "C-x C-o"
		:description "delete blank lines")

(cheatsheet-add :group 'Notes
		:key "C-con"
		:description "todays daypage")

(cheatsheet-add :group 'Notes
		:key "C-coN"
		:description "find daypage")




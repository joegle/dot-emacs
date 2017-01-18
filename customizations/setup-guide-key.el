(require 'guide-key)
(setq guide-key/guide-key-sequence '("C-x r" "C-x 4"))
(guide-key-mode 1)  ; Enable guide-key-mode


; M-x cheatsheet-show
(cheatsheet-add :group 'Common
		:key "C-x C-c"
		:description "leave Emacs.")

(cheatsheet-add :group 'Common
		:key "C-x o n"
		:description "Open day page")


(cheatsheet-add :group 'Common
		:key "C-x C-b"
		:description "list buffers")


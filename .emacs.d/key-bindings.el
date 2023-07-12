;;keys.el
;;My keybindings
(global-set-key (kbd "C-x t e") 'eshell)
(global-set-key (kbd "C-x t v") 'vterm)

(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(global-set-key (kbd "C-=") #'text-scale-increase)
(global-set-key (kbd "C--") #'text-scale-decrease)

(global-set-key [remap dabbrev-expand] 'hippie-expand)
;;Macros
(fset 'open-last-buffer-in-new-frame
   (kmacro-lambda-form [?\C-w ?v ?\C-x ?b return] 0 "%d"))

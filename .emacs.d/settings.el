(setq inhibit-startup-message t)
(require 'bookmark)
(list-bookmarks)
(switch-to-buffer "*Bookmark List*")
(setq next-line-add-newlines t)

(defalias 'yes-or-no-p 'y-or-n-p)
(setq epg-gpg-program "gpg2")

(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-fringe-mode 5)
(menu-bar-mode -1)

;;Auto refresh buffers
(setq auto-revert-interval 1)
(setq auto-revert-check-vc-info t)
(global-auto-revert-mode) 

;;Visible bell
(setq visible-bell t)

;;Electric pair
(electric-pair-mode 1)

;;Ibuffers
(defalias 'list-buffers 'ibuffer)

;;Fido
(fido-vertical-mode 1)

;;CUA
(cua-mode 1)

;;Font
(when (member "Hack" (font-family-list))
    (set-frame-font "Hack-17" t t))

;;Hooks
(add-hook 'text-mode-hook 'visual-line-mode)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq-default display-line-numbers-width 1)

;;Recentf
(require 'recentf)
(global-set-key (kbd "C-x C-r") 'ido-recentf-open)

(recentf-mode t)
(setq recentf-max-saved-items 50)

(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))

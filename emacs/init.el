(setq inhibit-startup-message t)
(require 'bookmark)
(list-bookmarks)
(switch-to-buffer "*Bookmark List*")

(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-fringe-mode 5)

(menu-bar-mode -1)

;;Global Keybindings
(global-set-key (kbd "C-c o") #'eshell)
(global-set-key (kbd "C-c C-o") 'vterm)

(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(global-set-key (kbd "C-=") #'text-scale-increase)
(global-set-key (kbd "C--") #'text-scale-decrease)

;;Hooks
(add-hook 'text-mode-hook 'visual-line-mode)

(require 'recentf)
(recentf-mode 1)
;;visible bell
(setq visible-bell t)

;;Font
(when (member "Hack" (font-family-list))
    (set-frame-font "Hack-17" t t))

;;electric pair
(electric-pair-mode 1)

;;ibuffers
(defalias 'list-buffers 'ibuffer)

;;Fido
(fido-vertical-mode 1)

;;CUA
(cua-mode 1)

;;Set numbered lines
(global-display-line-numbers-mode 1)

;;Org Mode
     (setq org-html-head "orgmode"
           org-html-head-extra ""
           org-html-head-include-default-style nil
           org-html-head-include-scripts nil
           org-html-preamble nil
           org-html-postamble nil
           org-html-use-infojs nil)

;;Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Initialize package sources
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))


(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
  (setq use-package-always-ensure t)


;;EVIL MODE
(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil--cursor-after
  :ensure t
  :config
  (evil-collection-init))

(use-package evil-snipe)
(require 'evil-snipe)
(evil-snipe-mode +1)

;;rainbow-delimeters
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;;Theme
(use-package gruvbox-theme)
(load-theme 'gruvbox-dark-soft t)

;;which-key
(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.5))

(use-package company)
(add-hook 'after-init-hook 'global-company-mode)

;;AUCTEX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;;flycheck
(use-package flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;;EMMS
(use-package web-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;;EMMS
(use-package emms)
(require 'emms-setup)
(emms-all)
(setq emms-player-list '(emms-player-mpv)
      emms-source-file-default-directory "~/music"
      emms-info-functions '(emms-info-native))
(require 'emms-browser)

;;doom-modeline
(use-package doom-modeline)
:ensure t
:init (doom-modeline-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(custom-safe-themes
   '("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))
 '(desktop-save-mode t)
 '(dired-dwim-target t)
 '(dired-listing-switches "-hal --color=auto")
 '(dired-use-ls-dired t)
 '(doom-modeline-battery nil)
 '(doom-modeline-hud nil)
 '(doom-modeline-lsp t)
 '(emms-mode-line-mode t)
 '(emms-mode-line-mode-line-function 'emms-mode-line-icon-function)
 '(evil-undo-system 'undo-fu)
 '(evil-want-C-w-in-emacs-state t)
 '(global-display-line-numbers-mode t)
 '(make-backup-files nil)
 '(package-selected-packages
   '(doom-modeline vterm magit pass tramp which-key web-mode use-package undo-fu-session undo-fu rainbow-delimiters projectile pdf-tools org-evil gruvbox-theme flycheck evil-snipe evil-collection emms counsel company auctex))
 '(sml/theme 'dark)
 '(tab-bar-mode nil)
 '(tab-bar-position t)
 '(tab-bar-select-tab-modifiers '(alt)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(sml/filename ((t (:foreground "#bea9de" :weight bold))))
 '(sml/line-number ((nil nil))))

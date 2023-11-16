;;init.el
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;;Settings
(load-file "~/.emacs.d/settings.el")

;;Keybindings & Macros
(load-file "~/.emacs.d/key-bindings.el")

;;Org mode config
(load-file "~/.emacs.d/config-org.el")

;;Custom config
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Initialize package sources
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
  (setq use-package-always-ensure t)

;;MAGIT
(use-package magit
  :ensure t
  :bind ("C-x M-g j" . magit-status))

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

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

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

;;flycheck
(use-package flycheck)

(use-package pdf-tools
  :ensure t
  :mode ("\\.pdf\\'" . pdf-view-mode)
  :config
  (pdf-tools-install)
  (setq-default pdf-view-display-size 'fit-page)
  (setq pdf-annot-activate-created-annotations t))
;;web-mode
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
;; Covers
(setq emms-browser-covers #'emms-browser-cache-thumbnail-async)
;; Filters
(emms-all)
(setq emms-playlist-buffer-name "*MUSIC*")
(setq emms-info-asynchronously nil)
(require 'emms-history)
(emms-history-load)
(require 'emms-info-mp3info)
(add-to-list 'emms-info-functions 'emms-info-mp3info 'emms-info-metaflac)

;;Defaults
(setq-default
 emms-source-file-default-directory "~/music/"
 emms-playlist-default-major-mode 'emms-playlist-mode
 emms-player-list '(emms-player-mplayer))

;;doom-modeline
(use-package doom-modeline
:ensure t
:hook (after-init . doom-modeline-mode))


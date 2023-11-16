;; org.el
(require 'org)
(setq org-clock-sound t)
;;Org mode html export
(setq org-html-head ""
      org-html-html5-fancy t
      org-html-head-include-default-style nil
      org-html-head-include-scripts nil
      org-export-with-section-numbers nil
      org-html-preamble nil
      org-html-postamble nil
      org-html-use-infojs nil
      org-startup-indented t)

;;Org Agenda
(require 'org-super-agenda)
(setq org-agenda-files '("~/docs/org/inbox.org"
			 "~/docs/org/tickler.org"
			 "~/docs/org/todo.org"
			 "~/docs/org/gtd.org"))
;;Org Capture
(setq org-capture-templates '(("t" "Todo [inbox]" entry
			       (file+headline "~/docs/org/inbox.org" "Tasks")
			       "* TODO %i%?")
			      ("T" "Tickler" entry
			       (file+headline "~/docs/org/tickler.org" "Tickler")
			       "* %i%? \n %U")))

;; Org Publish
(require 'ox-publish)
(setq org-publish-project-alist
      '(("Org"
	 :base-directory "~/docs/org/web/"
	 :base-extension "org"
	 :publishing-directory "~/code/web/"
	 :publishing-function org-html-publish-to-html
	 :recursive
	 :section-numbers nil
	 :with-toc nil

	 ("Images"
	  :base-directory "~/docs/org/web/images/"
	  :base-extension "jpg\\|gif\\|png"
	  :publishing-directory "~/code/web/images/"
	  :publishing-function org-publish-attachment
	 ))))

;;Org Roam
(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/docs/org/"))
  (org-roam-db-autosync-mode)
  :bind (("C-c n l" . org-roam-buffer-toggle)
	 ("C-c n f" . org-roam-node-find)
	 ("C-c n g" . org-roam-graph)
	 ("C-c n i" . org-roam-node-insert)
	 ("C-c n c" . org-roam-capture)
	 ;;Dailies
	 ("C-c n j" . org-roam-dailies-capture-today)))

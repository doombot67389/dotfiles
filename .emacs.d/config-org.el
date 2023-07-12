;; org.el
;;Org mode html export
(setq org-html-head "orgmode"
      org-html-head-extra ""
      org-html-head-include-default-style nil
      org-html-head-include-scripts nil
      org-html-preamble nil
      org-html-postamble nil
      org-html-use-infojs nil
      org-startup-indented t)

;;Org Agenda
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

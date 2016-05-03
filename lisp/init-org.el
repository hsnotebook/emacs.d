(global-set-key (kbd "C-c a") 'org-agenda)

(define-key global-map "\C-cc" 'org-capture)

(setq org-agenda-files (quote ("~/org-notes/")))
(setq org-default-notes-file "~/org-notes/gtd.org")

(setq org-capture-templates
      '(("l" "Life" entry (file+headline "~/org-notes/gtd.org" "Life")
	 "* TODO [#B] %?\n  %i\n"
	 :empty-lines 1)
	("w" "Work" entry (file+headline "~/org-notes/gtd.org" "Work")
	 "* TODO [#B] %?\n  %i\n"
	 :empty-lines 1)
	("n" "notes" entry (file+headline "~/org-notes/notes.org" "Quick notes")
	 "* TODO [#C] %?\n  %i\n %U"
	 :empty-lines 1)
	("j" "Journal Entry"
	 entry (file+datetree "~/org-notes/journal.org")
	 "* %?"
	 :empty-lines 1)))

(require-package 'org-pomodoro)


(provide 'init-org)

(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-agenda-files '("~/org"))

(define-key global-map "\C-cc" 'org-capture)
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
	 "* TODO %?\n  %i\n  %a")))


(provide 'init-org)

(winner-mode t)

(require-package 'ace-window)
(global-set-key (kbd "M-p") 'acen-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
(setq aw-background nil)


(provide 'init-window)

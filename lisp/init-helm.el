(require-package 'helm)
(helm-mode t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(setq helm-mode-fuzzy-match t)
(setq helm-completion-in-region-fuzzy-match t)

(require-package 'projectile)
(require 'projectile)
(require-package 'helm-projectile)
(helm-projectile-on)

;; If current working directory is project, use helm-projectile
;; else, user helm-fild-files
;; Copy from Renn Seo. See https://www.youtube.com/watch?v=qpv9i_I4jYU.
(defun sr-open-file ()
  (interactive)
  (if (projectile-project-p)
      (helm-projectile)
    (helm-fild-files)))

(global-set-key (kbd "M-o") 'sr-open-file)


(provide 'init-helm)


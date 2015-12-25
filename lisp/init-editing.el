;; undo-tree
(require-package 'undo-tree)
(global-undo-tree-mode t)

(electric-pair-mode t)

;; multiple cursors
(require-package 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; expand region
(require-package 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; kill trailing whitespacs
(add-hook 'before-save-hook (lambda () (whitespace-cleanup)))

;; coding system
(setq buffer-file-coding-system 'utf-8)

;; auto refresh buffer, when file in disk is changed.
(global-auto-revert-mode t)

;; indent tabs or spaces
(add-hook 'java-mode-hook (lambda ()
			    (setq c-basic-offset 4
				  tab-width 4
				  indent-tabs-mode t)))
(add-hook 'html-mode-hook (lambda ()
			    (setq sgml-basic-offset 2
				  tab-width 2
				  indent-tabs-mode t)))
(add-hook 'nxml-mode-hook (lambda ()
			    (setq tab-width 2
				  indent-tabs-mode t)))
(add-hook 'js-mode-hook (lambda ()
			    (setq tab-width 2
				  indent-tabs-mode t)))

;; search regex
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)

;; ace-jump
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;; you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)


(provide 'init-editing)

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


(provide 'init-editing)

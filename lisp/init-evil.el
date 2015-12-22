(require-package 'evil)
(evil-mode t)

(setq evil-search-wrap nil)

(define-key evil-normal-state-map "\C-k" 'evil-window-up)
(define-key evil-normal-state-map "\C-j" 'evil-window-down)
(define-key evil-normal-state-map "\C-h" 'evil-window-left)
(define-key evil-normal-state-map "\C-l" 'evil-window-right)

(require-package 'evil-commentary)
(evil-commentary-mode)

(require-package 'evil-jumper)
(global-evil-jumper-mode)

(require-package 'evil-mc)
(global-evil-mc-mode 1)

(require-package 'evil-surround)
(global-evil-surround-mode 1)

(require-package 'evil-visualstar)
(global-evil-visualstar-mode t)

(require-package 'linum-relative)
(linum-relative-mode 1)

(provide 'init-evil)

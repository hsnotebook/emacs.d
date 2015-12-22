(require-package 'evil)
(evil-mode t)

(setq evil-search-wrap nil)

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

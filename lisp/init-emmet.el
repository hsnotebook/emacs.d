(require-package 'emmet-mode)
(require 'emmet-mode)

;; html-mode's parent is sgml-mode,
;; so just config for sgml-mode
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'nxml-mode-hook 'emmet-mode)

(eval-after-load 'emmet-mode
  '(define-key emmet-mode-keymap (kbd "C-c C-h") 'emmet-prev-edit-point))
(eval-after-load 'emmet-mode
  '(define-key emmet-mode-keymap (kbd "C-c C-l") 'emmet-next-edit-point))


(provide 'init-emmet)

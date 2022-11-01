(setq inhibit-startup-message t)

; ui
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(blink-cursor-mode -1)

(load-theme 'wombat)
(add-to-list 'default-frame-alist
             '(font . "Source Code Pro-13"))

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(require 'use-package)
(setq straight-use-package-by-default t)

(use-package which-key
  :config (which-key-mode))

; evil
(use-package undo-tree
  :config
  (global-undo-tree-mode))

(use-package evil
  :demand t
  :bind (("<escape>" . keyboard-escape-quit))
  :init (setq evil-want-keybinding nil)
  :config
  (evil-set-undo-system 'undo-tree)
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :config
  (setq evil-want-integration t)
  (evil-collection-init))

(use-package evil-commentary
  :after evil
  :config (evil-commentary-mode))

(use-package evil-matchit
  :after evil
  :config (evil-matchit-mode))

(use-package fcitx
  :after evil
  :config
  (when (setq fcitx-remote-command
	      (or (executable-find "fcitx5-remote")
		  (executable-find "fcitx-remote")))
    (fcitx-evil-turn-on)))

(use-package smartparens
  :config (smartparens-mode))

;; git
(use-package magit)

(use-package youdao-dictionary)

(use-package ivy
  :config
  (ivy-mode))

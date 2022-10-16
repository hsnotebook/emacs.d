(setq inhibit-startup-message t)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(load-theme 'wombat)

(require 'package)

(setq package-archives '(("gnu"   . "http://1.15.88.122/gnu/")
			 ("org"   . "http://1.15.88.122/org/")
                         ("melpa" . "http://1.15.88.122/melpa/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package evil
  :demand t
  :bind (("<escape>" . keyboard-escape-quit))
  :init (setq evil-want-keybinding nil)
  :Config
  (evil-mode 1)

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

(require-package 'emacs-eclim)
(global-eclim-mode)

(custom-set-variables
 '(eclim-eclipse-dirs '("/home/hs/bin/eclipse"))
 '(eclim-executable "/home/hs/bin/eclipse/eclim"))

(setq help-at-pt-display-when-idle t)
(help-at-pt-set-timer)

(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)


(provide 'init-java)

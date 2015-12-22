(require-package 'color-theme-sanityinc-solarized)
(color-theme-sanityinc-solarized-dark)

(defun hs/dark()
  (interactive)
  (color-theme-sanityinc-solarized-dark))

(defun hs/light()
  (interactive)
  (color-theme-sanityinc-solarized-light))


(provice 'init-theme)

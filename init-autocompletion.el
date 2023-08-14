(use-package company
  :demand t
  ;; Bind here rather than in ":bind" to avoid complaints about
  ;; company-mode-map not existing.
  :hook ((emacs-lisp-mode . company-mode)
         (python-mode . company-mode)
         (web-mode . company-mode)
         (typescript-mode . company-mode)
         (restclient-mode . company-mode)
         (js-mode . company-mode)))



(use-package python) ;; builtin


(use-package pyvenv
  :demand t)  ; Automatically use pyvenv-workon via dir-locals
(pyvenv-tracking-mode 1)

;; adding elpy
(use-package elpy
  :ensure t
  :init
  (elpy-enable))

;; Configure Elpy to use the specific shebang interpreter
(setq elpy-rpc-python-command "~/.pyenv/pyenv-win/versions/3.11.3/python3.11.exe")

;; forcing completion
(keymap-global-set "M-c" 'belpy-company-backend)

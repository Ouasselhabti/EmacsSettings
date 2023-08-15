(setq ring-bell-function 'ignore)
(setq inhibit-startup-screen t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode 1)
(global-display-line-numbers-mode 1)
(hl-line-mode 1)
(blink-cursor-mode 1)
(set-fringe-mode 2)
(ido-mode 1)
(set-face-attribute 'default nil :height 150)
(setq backup-directory-alist `(("." . "~/.emacs_backup_files")))
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs_autosave_files/" t)))
;;leader-map
(define-prefix-command 'md/leader-map)
(defvar md/org-mode-leader-map (make-sparse-keymap))
(set-keymap-parent md/org-mode-leader-map md/leader-map)
;; adding melpa 
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; adding use-package
(require 'use-package)
(setq use-package-always-ensure t)



;; Use git bash as my shell inside emacs
;; Set the explicit shell path for ansi-term
(setq explicit-shell-file-name "C:/Program Files/Git/bin/bash.exe")
(setq shell-file-name explicit-shell-file-name)
(setq explicit-bash.exe-args '("--noediting" "--login" "-i"))

;; Use 'shell' as the default shell in eshell
(setq eshell-shell "shell")

;; Set the shell program for use in M-x shell
(setq explicit-shell-file-name "C:/Program Files/Git/bin/bash.exe")
(setq shell-file-name "bash")
(setq explicit-bash.exe-args '("--noediting" "--login" "-i"))

;; Set the TERM environment variable to avoid display issues
(setq system-uses-terminfo nil)
(setq term-default-bg-color nil)
(setq term-default-fg-color nil)

;; all custom shit goes to .custom-settings.el
(setq custom-file "~/.emacs.d/.custom-settings.el")
(load custom-file)

;;multiple cursors
(load "~/.emacs.d/init-multiple-cursors.el")
;;expand region
(load "~/.emacs.d/init-expand-region.el")
;;python
(load "~/.emacs.d/python-settings.el")
;; themes (gruber or something idk yet)
(load "~/.emacs.d/init-themes.el")
;;autocompletion(company)
(load "~/.emacs.d/init-autocompletion.el")
;;lsp-mode
(load "~/.emacs.d/init-lsp-mode.el")
;;projectile
(load "~/.emacs.d/init-projectile.el")
;;ace-jump-mode
(load "~/.emacs.d/init-ace-jump.el")
;;6502 assembly
(load "~/.emacs.d/6502.el")
(require '6502-mode)
(add-to-list 'auto-mode-alist '("\\.s65" . 6502-mode))


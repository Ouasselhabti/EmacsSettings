;; Dont show the splash screen
(setq inhibit-startup-message t)
(setq visible-bell t)

;;Turn off some uneeded UI elements
(menu-bar-mode  -1)
(scroll-bar-mode -1)
(load-theme 'gruber-darker t)
;;Display line numbers in every buffer
(global-display-line-numbers-mode 1)
(recentf-mode 1)
(setq history-length 25)
(savehist-mode 1)
(prefer-coding-system 'utf-8)
;;Activate ido mode
(ido-mode 1)

;;Remeber the last cursor position of a opened file
(save-place-mode 1)

;; Move custom variables to another file
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;;Stop poping up UIS dialogs when prompting
(setq use-dialog-box nil)

;;Revert buffers when the underlying file has changed
(global-auto-revert-mode 1)

;; Add company to all buffers
;;(add-hook 'after-init-hook 'global-company-mode)

;;Adding MELPA Package manger
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;;Duplicating stuffs
(require 'duplicate-thing)
(global-set-key (kbd "M-c") 'duplicate-thing)

;; Package: smartparens
(require 'smartparens-config)
(setq sp-base-key-bindings 'paredit)
(setq sp-autoskip-closing-pair 'always)
(setq sp-hybrid-kill-entire-symbol nil)
(sp-use-paredit-bindings)

;;(yassnipet)
(require 'yasnippet)
(yas-global-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGES: projectile  for projects managment ;;
;;                                  ;;
;; GROUP: Convenience -> Projectile ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(projectile-global-mode)

;;(add auto complete , i commented above company)
(require 'auto-complete)
(global-auto-complete-mode t)
;;use default config for autocomplete
(require 'auto-complete-config)
(ac-config-default)

;; automaticly show documentation
(setq company-quickhelp-delay 0.5)


;;git integration
(use-package magit
  :ensure t
  :init
  (progn
    (bind-key "C-x g" 'magit-status)))

;;requiring use package
(require 'use-package)


;;Compiling c++ code with f9
(defun code-compile ()
  (interactive)
  (unless (file-exists-p "Makefile")
    (set (make-local-variable 'compile-command)
     (let ((file (file-name-nondirectory buffer-file-name)))
       (format "%s -o %s %s"
           (if  (equal (file-name-extension file) "cpp") "g++" "gcc" )
           (file-name-sans-extension file)
           file)))
    (compile compile-command)))

(global-set-key [f9] 'code-compile)

;;use bash
(setq explicit-shell-file-name "C:/Program Files/Git/bin/bash.exe")
(setq shell-file-name explicit-shell-file-name)
(setq explicit-bash.exe-args '("--noediting" "--login" "-i"))
(setenv "SHELL" shell-file-name)
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)

(setenv "TERM" "xterm")


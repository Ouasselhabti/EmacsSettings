(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map))
  :custom ((projectile-completion-system 'ivy)))
(setq projectile-project-search-path '("~/Code/" "~/work/" ("~/OneDrive/Documents/GitHub/" . 1)))

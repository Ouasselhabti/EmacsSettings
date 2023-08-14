;;multiple cursors
(use-package multiple-cursors)
(require 'multiple-cursors)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c C-n") 'mc/mark-next-like-this-symbol)
(global-set-key (kbd "C-c C-p") 'mc/mark-previous-like-this-symbol)




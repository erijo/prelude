;; Global keybindings
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-x f") 'ff-get-other-file)
(global-set-key (kbd "M-e") 'dabbrev-expand)
(global-set-key (kbd "C-x '") 'next-error)
(global-set-key (kbd "C-x m") 'my-move-buffer-to-other-window)
(global-set-key (kbd "M-SPC") 'cycle-spacing)
(global-set-key (kbd "<f5>") 'compile)

;; Unset the override of M-e in c++-keymap
(defun my-c++-keymap ()
  (local-set-key (kbd "M-e") nil))
(add-hook 'c-mode-common-hook 'my-c++-keymap)

;; dabbrev settings
(setq dabbrev-case-fold-search t
      dabbrev-case-replace nil)

;; Prelude config
(setq prelude-auto-save nil
      prelude-guru nil
      prelude-clean-whitespace-on-save nil
      prelude-c-mode-common-hook nil)

;; Smart mode line
(setq sml/theme 'dark
      sml/position-percentage-format nil)

;; Better scroll when e.g. searching
(setq scroll-conservatively 10)

;; Projectile
(setq projectile-enable-caching t
      projectile-use-git-grep t)

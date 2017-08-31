;; Global keybindings
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-x f") 'ff-get-other-file)
(global-set-key (kbd "M-e") 'hippie-expand)
(global-set-key (kbd "C-x '") 'next-error)
(global-set-key (kbd "C-x m") 'my-move-buffer-to-other-window)
(global-set-key (kbd "M-SPC") 'cycle-spacing)
(global-set-key (kbd "<f5>") 'compile)

;; Unset the override of M-e in c++-keymap
(defun my-c++-keymap ()
  (local-set-key (kbd "M-e") nil))
(add-hook 'c-mode-common-hook 'my-c++-keymap)

;; dabbrev settings
(setq dabbrev-case-fold-search t)
(setq dabbrev-case-replace nil)
(setq dabbrev-case-distinction nil)

;; Prelude config
(setq prelude-guru nil)
(setq prelude-clean-whitespace-on-save nil)
(setq prelude-c-mode-common-hook nil)

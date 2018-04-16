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

;; Don't auto revert when underlying files are changed externally
(global-auto-revert-mode nil)

;; Disable smartparens mode
(defun my-prog-mode-override ()
  (smartparens-mode nil))
(add-hook 'prelude-prog-mode-hook 'my-prog-mode-override t)

;; Projectile
(setq projectile-enable-caching t
      projectile-use-git-grep t)

;; Helm
(setq helm-buffer-details-flag nil)

;; Disable flycheck and flyspell
(global-flycheck-mode -1)
(setq prelude-flyspell nil)


;; ggtags (https://github.com/leoliu/ggtags)
;; (setq ggtags-highlight-tag nil)
;; (prelude-require-package 'ggtags)
;; (setenv "GTAGSLABEL" "new-ctags")
;; (add-hook 'c-mode-common-hook
;;           (lambda ()
;;             (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
;;               (ggtags-mode 1))))

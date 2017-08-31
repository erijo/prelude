(defvar my-kreatv-dir "/home/tools/elisp")

(when (file-exists-p my-kreatv-dir)
  (add-to-list 'load-path my-kreatv-dir)
  (require 'kreatv-recommended)

  ;; Setup compile commands
  (require 'kreatv-compile)
  (global-set-key (kbd "<f6>") 'kreatv-compile-clean)
  (global-set-key (kbd "<f7>") 'kreatv-run-pre-commit))

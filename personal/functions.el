(defun my-move-buffer-to-other-window ()
  "Move the current buffer to the other window"
  (interactive)
  (let ((current (current-buffer)))
    (bury-buffer)
    (switch-to-buffer-other-window current)))

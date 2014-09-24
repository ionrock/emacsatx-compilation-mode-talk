(defun tail-log-create-cmd (host path &optional key)
  (concat "ssh"
	  (if key (concat " -i " key) " ")
	  host " tail -f " path))

(defun tail-log (arg)
  (interactive "P")
  (let* ((host (read-string "[user@]host: "))
	 (path (read-string "log path: "))
	 (key (if arg (read-file-name "ssh key: ") nil)))
    (start-compile (tail-log-create-cmd host path key)
		   (concat "*tail:" host "/" path))))

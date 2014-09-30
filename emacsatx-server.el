(defun emacsatx-server-buffername (mode-name)
  (format "*emacsatx-server %s*" mode-name))

(defun start-emacsatx-server ()
  (interactive)
  (let ((python "server-example/venv/bin/python")
	(filename "server-example/server.py"))
    (compilation-start
     ;; the command to run
     (format "%s %s" python filename)
     ;; The mode or t if we want to use a comint buffer
     t
     ;; a function to create a buffer name
     'emacsatx-server-buffername)))

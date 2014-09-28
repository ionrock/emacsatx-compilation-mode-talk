(add-to-list 'compilation-error-regexp-alist-alist '(my-serving-example "^SERVING: \\(.*\\)" 1))
(add-to-list 'compilation-error-regexp-alist 'my-serving-example)

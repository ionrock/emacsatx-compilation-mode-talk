;; First add our regex and give it a name
(add-to-list
 'compilation-error-regexp-alist-alist
 '(emacsatx-serving-example "^SERVING: \\(.*\\)" 1))

;; Then add it to the regexp alist
(add-to-list
 'compilation-error-regexp-alist
 'emacsatx-serving-example)

(defun my-bmkp-make-dired-record ()
  (let* ((newbookmark (bmkp-make-dired-record))
         (root (ede-cpp-root-project-root))
        (relpath (substring (bookmark-prop-get newbookmark 'dired-directory) (length root))))
    (bookmark-prop-set  newbookmark 'handler  'bmkp-jump-dired-relative)
    (bookmark-prop-set  newbookmark 'dired-directory  relpath)
    (bookmark-prop-set  newbookmark 'filename  (concat "*[ " relpath " ]*" ))
    newbookmark))

(defun bmkp-jump-dired-relative (bookmark)
  (let* ((olddir (bookmark-prop-get bookmark 'dired-directory))
        (newdir (concat (ede-cpp-root-project-root) olddir)))
    (cond
     ((file-exists-p newdir)
      (bookmark-prop-set bookmark 'dired-directory  newdir)
      (bmkp-jump-dired bookmark)
      (bookmark-prop-set bookmark 'dired-directory olddir))
     (t (message (concat "nodir " newdir))))))


(defun bookmark-dired-make-relative ()
  (interactive)
  (let ((bookmark-make-record-function  'my-bmkp-make-dired-record))
    (bookmark-set)))


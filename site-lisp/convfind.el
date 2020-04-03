(require 'helm)

(setq find-masks '("*.*" "*.py" "*.cpp *.h" "*.el"))

(defun mask-to-find (mask)
  (mapconcat (lambda (elem) (format "-iname \"%s\"" elem)) mask " -or "))

(defun my-find-files (masks dir)
  (interactive 
   (let ((fPath
          (if (equal major-mode 'dired-mode)
              default-directory
            (file-name-directory (buffer-file-name)))))
     (list (helm-comp-read "File masks(*.*):"  'find-masks :default "*.*")
           (read-file-name "Search path: " fPath))))
  (message dir)
  (find-dired dir (mask-to-find (split-string masks))))


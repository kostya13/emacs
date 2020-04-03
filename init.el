;; Local links
;[[Setup vars]]
;[[Custom setup vars]]
;[[Shortcuts]]
;[[Hooks]]

;;; Loads
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/cedet-bzr/trunk/contrib")
(load-file "~/.emacs.d/config/global.el") ; глобальные настройки
(load-file "~/.emacs.d/config/helpers.el") ; различные вспомогательные функции

(load-file "~/.emacs.d/site-lisp/mybookmark.el")
(load-file "~/.emacs.d/site-lisp/convfind.el")

(if (file-exists-p "~/.emacs.d/initlocal.el")
  (load-file "~/.emacs.d/initlocal.el"))

;;; Require
(require 'eassist)
(require 'bs) ; buffer selection
(require 'ido)
(require 'buftoggle)
(require 'fm)
(require 'expand-region)
(require 'dired )
(require 'dired-details)
(require 'dired-details+)
(require 'dired-sort-menu)
(require 'ido-select-window)
(require 'hl-tags-mode)
(require 'org-link-minor-mode)
(require 'bookmark+)
(require 'occur-x)
(require 'highlight-symbol)

;;; Setup vars 
(ido-mode t)
(ido-vertical-mode t)
;;(dired-details-install)
(org-link-minor-mode t)
(setq ido-enable-flex-matching t)
(setq nav-disable-overeager-window-splitting)
(show-paren-mode t)
;(yas-global-mode 1)
(setq compile-history
      '("wmake  vs release=0" 
        "wmake test_vs"
        "wmake public public_language=english public_edition=standard product=enterprise "))
(setq ibuffer-shrink-to-minimum-size t)
(setq ibuffer-always-show-last-buffer nil)
(setq ibuffer-sorting-mode 'recency)
(setq ibuffer-use-header-line t)
(setq ac-auto-start nil)
(setq universal-map (make-sparse-keymap))
(put 'dired-find-alternate-file 'disabled nil)
(ac-config-default)
(setq dired-dwim-target t)
(setq helm-ag-thing-at-point 'word)
(recentf-mode 1)
(set-default 'truncate-lines t)
(setq  ffap-c-path '("C:/cygwin/usr/include" "C:/Development/web_console/trunk/include" "C:/Development/web_console/trunk" "C:/cygwin/lib/gcc/i686-pc-cygwin/4.7.3/include/c++" ))
;; Prevent issues with the Windows null device (NUL)
;; when using cygwin find with rgrep.
(defadvice grep-compute-defaults (around grep-compute-defaults-advice-null-device)
  "Use cygwin's /dev/null as the null-device."
  (let ((null-device "/dev/null"))
  ad-do-it))
(ad-activate 'grep-compute-defaults)

(setq inferior-lisp-program "D:/usr/bin/sbcl/sbcl.exe")
(require 'slime-autoloads)
(setq slime-net-coding-system 'utf-8-unix)
(setq slime-contribs '(slime-fancy)) ; almost everything

(setq lisp-indent-function 'common-lisp-indent-function)
(add-hook 'occur-mode-hook 'turn-on-occur-x-mode)

;;; [[Custom setup vars]]
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "InputMonoNarrow Medium" :foundry "outline" :slant normal :weight normal :height 113 :width normal))))
 '(ace-jump-face-foreground ((t (:foreground "light green"))) t)
 '(helm-action ((t (:underline t))))
 '(helm-buffer-directory ((t (:background "dark slate gray"))))
 '(helm-ff-directory ((t (:foreground "dodger blue"))))
 '(helm-selection ((t (:background "dark green" :underline t))))
 '(ido-indicator ((t (:background "dark slate gray" :foreground "yellow1" :width condensed))))
 '(ido-subdir ((t (:foreground "cornflower blue")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ag-arguments
   (quote
    ("--line-numbers" "--ignore-case" "--nogroup" "--column" "--")))
 '(ag-reuse-buffers t)
 '(ag-reuse-window nil)
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(blink-cursor-mode nil)
 '(bm-highlight-style (quote bm-highlight-only-fringe))
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/project.bkm")
 '(bs-max-window-height 40)
 '(bs-must-always-show-regexp "scratch\\|compile")
 '(calendar-week-start-day 1)
 '(cua-mode t nil (cua-base))
 '(dabbrev-expand-multiple-inline-show-face (quote underline))
 '(dabbrev-expand-multiple-multi-selection-keys (quote ("m")))
 '(dabbrev-expand-multiple-next-keys (quote ("n" " ")))
 '(dabbrev-expand-multiple-previous-keys (quote ("b")))
 '(dabbrev-expand-multiple-tooltip-params t)
 '(dired-listing-switches "-a")
 '(dired-sort-dialogue-own-frame nil)
 '(dired-sort-menu-saved-config
   (quote
    ((dired-actual-switches . "-a")
     (ls-lisp-ignore-case . t)
     (ls-lisp-dirs-first . t))))
 '(ecb-layout-name "left9")
 '(ecb-layout-window-sizes
   (quote
    (("left9"
      (ecb-methods-buffer-name 0.2126865671641791 . 0.9848484848484849)))))
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-source-path (quote (("c:" "c:"))))
 '(ecb-tip-of-the-day nil)
 '(explicit-shell-file-name "cmd.exe")
 '(global-semantic-idle-completions-mode t nil (semantic/idle))
 '(global-srecode-minor-mode nil)
 '(helm-ag-insert-at-point (quote symbol))
 '(helm-boring-buffer-regexp-list
   (quote
    ("\\` " "\\*helm" "\\*helm-mode" "\\*Echo Area" "\\*Minibuf" "\\*Mes" "\\*[^s]")))
 '(helm-boring-file-regexp-list
   (quote
    ("\\.git$" "\\.hg$" "\\.svn$" "\\.CVS$" "\\._darcs$" "\\.la$" "\\.o$" "~$" "/\\.$")))
 '(helm-buffer-max-length 42)
 '(helm-buffers-fuzzy-matching t)
 '(helm-split-window-in-side-p t)
 '(highlight-symbol-idle-delay 0)
 '(ido-max-prospects 50)
 '(ido-max-window-height 15)
 '(inhibit-startup-screen t)
 '(ls-lisp-verbosity nil)
 '(minimap-window-location (quote right))
 '(nav-filtered-p t)
 '(nav-width 30)
 '(package-check-signature nil)
 '(popwin-mode t)
 '(popwin:popup-window-position (quote right))
 '(popwin:popup-window-width 90)
 '(recentf-auto-cleanup (quote never))
 '(recentf-max-menu-items 50)
 '(recentf-max-saved-items 50)
 '(remember-annotation-functions nil)
 '(show-paren-mode t)
 '(speedbar-mode-hook (quote ((lambda nil (toggle-truncate-lines)))))
 '(speedbar-show-unknown-files t)
 '(speedbar-use-images nil)
 '(tool-bar-mode nil)
 '(truncate-lines t)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify)))


;;; Hooks
(add-hook 'c-mode-hook 'myc-hook)
(add-hook 'c++-mode-hook 'myc-hook)
(add-hook 'c-mode-hook 'programmode-keys-hook)
(add-hook 'c++-mode-hook 'programmode-keys-hook)
(add-hook 'emacs-lisp-mode-hook 'programmode-keys-hook)
(add-hook 'python-mode-hook  'programmode-keys-hook)

(add-hook 'sgml-mode-hook (lambda () (hl-tags-mode 1)))
(add-hook 'nxml-mode-hook (lambda () (hl-tags-mode 1)))
(add-hook 'compilation-mode-hook 'my-compilation-mode-hook)
(add-hook 'ag-mode-hook 'fm-start)
(add-hook 'bookmark-after-jump-hook (lambda () (kill-buffer "*Bookmark List*")))
(add-hook 'find-file-hook 'org-link-minor-mode)

;;; Shortcuts
;; [[F-keys]]
;; [[H-keys]]
;; [[C-keys]]
;; [[M-keys]]
;; [[Other keys]]
;; [[Custom keymaps]]
;; [[Keys hooks]]

;; F-keys
(global-set-key [f1] 'help)
(global-set-key [f2] 'save-buffer)
(global-set-key [f3] 'helm-find-files)
(global-set-key [C-f3] 'helm-recentf)
(global-set-key [S-f3] 'ido-find-file)
(global-set-key [S-f3] 'recentf-open-files)
(global-set-key [f4] 'kmacro-call-macro)
(global-set-key [S-f4] 'kmacro-start-macro)
(global-set-key [C-f4] 'kmacro-end-macro)
(global-set-key [f5] 'helm-bookmarks)
(global-set-key [C-f5] 'bookmark-bmenu-list)
(global-set-key [S-f5] 'bmkp-switch-bookmark-file)
(global-set-key [(control f6)] 'highlight-symbol-at-point)
(global-set-key [f6] 'highlight-symbol-next)
(global-set-key [(shift f6)] 'highlight-symbol-prev)
(global-set-key [(meta f6)] 'highlight-symbol-query-replace)

;(global-set-key [f6] 'helm-find-files)
;(global-set-key [S-f6] (lambda () (interactive) (dired ".")))
(global-set-key [f7] 'isearch-forward)
(global-set-key [C-f7] 'query-replace)
(global-set-key [f8]   'bm-next)
(global-set-key [C-f8] 'bm-toggle)
(global-set-key [M-f8] 'bm-show-all)
(global-set-key [S-f8] 'bm-previous)
(global-set-key [f9] 'compile)
(global-set-key [f10] 'ido-select-window)
;(global-set-key [f11] 'ido-switch-buffer)
(global-set-key [f11] 'helm-buffers-list)
(global-set-key [S-f11] 'bs-show)
(global-set-key [f12] 'delete-window)
(global-set-key [S-f12] 'kill-this-buffer)

;; H-keys [[SHORTCUTS]]
(global-set-key (kbd "H-%") 'match-paren)
(global-set-key (kbd "H-/") 'pwd)
(global-set-key (kbd "H-C") 'uncomment-region)
(global-set-key (kbd "H-c") 'comment-region)
(global-set-key (kbd "H-d") 'cut-line-or-region)
(global-set-key (kbd "H-f") 'ffap)
(global-set-key (kbd "H-p") 'yank) ; paste.
(global-set-key (kbd "H-r") 'run-current-file)
(global-set-key (kbd "H-u") universal-map)
(global-set-key (kbd "H-y") 'copy-line-or-region) 
(global-set-key (kbd "H-m") (lambda ()
                              (interactive)
                              (find-file "~/org/memo.org")))
(global-set-key (kbd "H-n") (lambda ()
                              (interactive)
                              (find-file "~/org/notes.org")))
(global-set-key (kbd "H-h") (lambda ()
                              (interactive)
                              (find-file "~/org/hotkeys.org")))
(global-set-key (kbd "H-t") (lambda ()
                              (interactive)
                              (find-file "~/org/todo.org")))
(global-set-key (kbd "H-l") (lambda ()
                              (interactive)
                              (query-replace-regexp "\\([^[:space:]]\\|.)=\\([^[:space:]]\\)" "\\1 = \\2")))


;; C-keys  [[SHORTCUTS]]
;; Ctrl+Break is a common IDE shortcut to stop compilation/find/grep
(global-set-key (kbd "C-<pause>") 'kill-compilation)
(global-set-key [C-tab] 'other-window)
(global-set-key "\C-a" 'mark-whole-buffer)
(global-set-key "\C-w" 'kill-this-buffer)
(global-set-key (kbd "C-S-w") 'kill-region)
(global-set-key (kbd "C-c i") (lambda ()
                                (interactive)
                                (find-file "~/.emacs.d/init.el")))
(global-set-key "\C-x\C-\\" 'goto-last-change)
(global-set-key (kbd "C-c f") 'iy-go-to-char)
(global-set-key (kbd "C-c F") 'iy-go-to-char-backward)
(global-set-key (kbd "C-c ;") 'iy-go-to-or-up-to-continue)
(global-set-key (kbd "C-c ,") 'iy-go-to-or-up-to-continue-backward)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "<C-kp-add>") 'enlarge-window)
(global-set-key (kbd "<C-kp-subtract>") 'shrink-window)
(global-set-key (kbd "<C-kp-multiply>") 'enlarge-window-horizontally)
(global-set-key (kbd "<C-kp-divide>") 'shrink-window-horizontally)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; M-keys [[SHORTCUTS]]
(global-set-key "\M-/" 'auto-complete)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)
(global-set-key (kbd "M-p") (lambda ()
                              (interactive)
                              (switch-to-buffer (other-buffer (current-buffer) 1))))

;; Other keys          
(global-set-key (kbd "<S-tab>") (lambda () (interactive) (insert "  ")))

;; Custom keymaps [[SHORTCUTS]]
;dired-mode
(define-key dired-mode-map (kbd "<return>") 'dired-find-alternate-file) ; was dired-advertised-find-file
(define-key dired-mode-map (kbd "^") (lambda () (interactive) (find-alternate-file "..")))  ; was dired-up-directory
(define-key dired-mode-map (kbd "M-<return>") 'bookmark-dired-make-relative)
; Menu-u
(define-key universal-map (kbd "s")  (lambda() (interactive) (split-window-vertically) (next-multiframe-window) (shell)))
(define-key universal-map (kbd "p")  'put-file-name-on-clipboard)
(define-key universal-map (kbd "l")  'org-link-minor-mode)

;M-s
(define-key search-map (kbd "s") 'search-forward)
(define-key search-map (kbd "b") 'search-backward)
(define-key search-map (kbd "a") 'ag)
(define-key search-map (kbd "f") 'my-find-files)
(define-key search-map (kbd "r") 'vr/query-replace)
(define-key search-map (kbd "o") 'my-occur)
;while search
(define-key isearch-mode-map [f7] 'isearch-repeat-forward)
(define-key isearch-mode-map (kbd "C-v") 'isearch-yank-kill)

;; Keys hooks [[SHORTCUTS]]
(defun programmode-keys-hook ()
  (local-set-key "\C-c?" 'semantic-ia-complete-symbol)
;  (local-set-key "\C-c>" semantic-complete-analyze-inline)
  (local-set-key "\C-c=" 'semantic-decoration-include-visit)
  (local-set-key "\C-cj" 'semantic-ia-fast-jump)
  (local-set-key "\C-cb" 'semantic-mrub-switch-tag)
  (local-set-key "\C-cq" 'semantic-ia-show-doc)
  (local-set-key "\C-cs" 'semantic-ia-show-summary)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)
  (local-set-key "\C-ct" 'eassist-switch-h-cpp)
  (local-set-key "\C-ce" 'eassist-list-methods) 
  (local-set-key "\C-c\C-r" 'semantic-symref)
  (local-set-key "\C-c\C-e" 'ecb-activate)
  (local-set-key "\C-c\C-d" 'ecb-deactivate))


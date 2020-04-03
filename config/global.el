(require 'server)
(defun server-ensure-safe-dir (dir) "Noop" t)
(server-start)
(fset 'yes-or-no-p 'y-or-n-p)  
(tool-bar-mode -1)
(setq-default case-fold-search 1)
(setq stack-trace-on-error t)
(global-auto-revert-mode t)
(cua-mode 1)
(global-linum-mode t)
(setq compilation-scroll-output t)
(windmove-default-keybindings 'meta) 

(setq compilation-ask-about-save nil)

(prefer-coding-system 'windows-1251)
(prefer-coding-system 'utf-8)

(setq make-backup-files nil) ; stop creating those backup~ files 
(setq auto-save-default nil) ; stop creating those #auto-save# files

(when (equal window-system 'w32)
  (setq locale-coding-system 'windows-1251)
;  (setq window-setup-hook (lambda () 
;                            "maximize window"
;                            (w32-send-sys-command #xf030)))
  (setq w32-apps-modifier 'hyper)
  (setq find-program "C:/cygwin/bin/find.exe"
        grep-program "C:/cygwin/bin/grep.exe"))

(when (>= emacs-major-version 24)
  (load-theme 'wheatgrass t)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                           ("marmalade" . "http://marmalade-repo.org/packages/")
                           ("melpa" . "http://melpa.milkbox.net/packages/")
                           ("ELPA" . "http://tromey.com/elpa/"))))


;;;
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2)))   
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-conservatively 50)
(setq scroll-preserve-screen-position 't)
(setq scroll-margin 4)

;;; tab setup
(setq-default indent-tabs-mode nil)
(setq c-basic-indent 2)
(setq tab-width 2)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.mak$" . makefile-mode))
(add-to-list 'auto-mode-alist '("\\.ion$" . makefile-mode))
(add-to-list 'auto-mode-alist '("\\.h$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.xidl$" . c++-mode))

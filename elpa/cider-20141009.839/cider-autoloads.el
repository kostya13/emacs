;;; cider-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "cider" "cider.el" (21563 31164 0 0))
;;; Generated autoloads from cider.el

(autoload 'cider-version "cider" "\
Display CIDER's version.

\(fn)" t nil)

(autoload 'cider-jack-in "cider" "\
Start a nREPL server for the current project and connect to it.
If PROMPT-PROJECT is t, then prompt for the project for which to
start the server.

\(fn &optional PROMPT-PROJECT)" t nil)

(autoload 'cider-connect "cider" "\
Connect to an nREPL server identified by HOST and PORT.
Create REPL buffer and start an nREPL client connection.

\(fn HOST PORT)" t nil)

(eval-after-load 'clojure-mode '(progn (define-key clojure-mode-map (kbd "C-c M-j") 'cider-jack-in) (define-key clojure-mode-map (kbd "C-c M-c") 'cider-connect)))

;;;***

;;;### (autoloads nil "cider-browse-ns" "cider-browse-ns.el" (21563
;;;;;;  31164 0 0))
;;; Generated autoloads from cider-browse-ns.el

(autoload 'cider-browse-ns "cider-browse-ns" "\
List all NAMESPACE's vars in BUFFER.

\(fn NAMESPACE)" t nil)

(autoload 'cider-browse-ns-all "cider-browse-ns" "\
List all loaded namespaces in BUFFER.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider-classpath" "cider-classpath.el" (21563
;;;;;;  31164 0 0))
;;; Generated autoloads from cider-classpath.el

(autoload 'cider-classpath "cider-classpath" "\
List all classpath entries.

\(fn)" t nil)

(autoload 'cider-open-classpath-entry "cider-classpath" "\
Open a classpath entry.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider-inspector" "cider-inspector.el" (21563
;;;;;;  31164 0 0))
;;; Generated autoloads from cider-inspector.el

(autoload 'cider-inspect "cider-inspector" "\
Eval the string EXPRESSION and inspect the result.

\(fn EXPRESSION)" t nil)

;;;***

;;;### (autoloads nil "cider-macroexpansion" "cider-macroexpansion.el"
;;;;;;  (21563 31164 0 0))
;;; Generated autoloads from cider-macroexpansion.el

(autoload 'cider-macroexpand-1 "cider-macroexpansion" "\
Invoke 'macroexpand-1' on the expression preceding point.
If invoked with a PREFIX argument, use 'macroexpand' instead of
'macroexpand-1'.

\(fn &optional PREFIX)" t nil)

(autoload 'cider-macroexpand-all "cider-macroexpansion" "\
Invoke 'clojure.walk/macroexpand-all' on the expression preceding point.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider-mode" "cider-mode.el" (21563 31164 0
;;;;;;  0))
;;; Generated autoloads from cider-mode.el

(defvar cider-mode-line '(:eval (format " cider[%s]" (cider-current-ns))) "\
Mode line ligher for `cider-mode'.

The value of this variable is a mode line template as in
`mode-line-format'.  See Info Node `(elisp)Mode Line Format' for
details about mode line templates.

Customize this variable to change how `cider-mode' displays its
status in the mode line.  The default value displays the current ns.
Set this variable to nil to disable the mode line
entirely.")

(custom-autoload 'cider-mode-line "cider-mode" t)

(autoload 'cider-mode "cider-mode" "\
Minor mode for REPL interaction from a Clojure buffer.

\\{cider-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "cider-scratch" "cider-scratch.el" (21563 31164
;;;;;;  0 0))
;;; Generated autoloads from cider-scratch.el

(autoload 'cider-scratch "cider-scratch" "\
Create a scratch buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider-selector" "cider-selector.el" (21563
;;;;;;  31164 0 0))
;;; Generated autoloads from cider-selector.el

(autoload 'cider-selector "cider-selector" "\
Select a new buffer by type, indicated by a single character.
The user is prompted for a single character indicating the method by
which to choose a new buffer.  The `?' character describes then
available methods.  OTHER-WINDOW provides an optional target.

See `def-cider-selector-method' for defining new methods.

\(fn &optional OTHER-WINDOW)" t nil)

;;;***

;;;### (autoloads nil nil ("cider-client.el" "cider-doc.el" "cider-eldoc.el"
;;;;;;  "cider-interaction.el" "cider-pkg.el" "cider-repl.el" "cider-stacktrace.el"
;;;;;;  "cider-test.el" "cider-util.el" "nrepl-client.el") (21563
;;;;;;  31164 200839 100000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; cider-autoloads.el ends here

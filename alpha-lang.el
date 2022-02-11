;;; alpha-lang.el --- Major mode and flycheck integration for the
;;; alpha language implemented in UB's CSE443

;;; Commentary:
;; The flycheck mode for this language finds errors by running the
;; compiler and reading the error messages it returns.  Because error
;; messages are not implemented until Part 2 of the project, this is
;; likely not useful for Part 1.  Additionally, this means that you
;; will want to ensure your error messages are correct.

;; This searches for the compiler on the path with the name
;; "alpha-compiler".  I recommend symlinking your compiler to
;; somewhere in your PATH (i.e. /usr/local/bin)

;; alpha-mode is enabled for files with the extension ".alpha"

;;;; CSE 443 Alpha language ;;;;

(require 'flycheck)

;;;; Code:
(define-derived-mode alpha-mode fundamental-mode "α-mode"
  "A major mode for editing Sample files."
  (flycheck-mode)
  )

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.alpha\\'" . alpha-mode))

(flycheck-define-checker flycheck-alpha
  "Flycheck checker for alpha"
  :command
  ("alpha-compiler" source)
  :error-patterns
  ((error line-start "LINE " line ":" column " **ERROR: " (message) line-end))
  :modes alpha-mode
  )

;;;###autoload
(add-to-list 'flycheck-checkers 'flycheck-alpha)

(provide 'alpha-lang)
;;; alpha-lang.el ends here

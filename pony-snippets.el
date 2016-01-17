;;; pony-snippets.el --- Yasnippets for Pony

;; Author: Luke Hoersten <luke@hoersten.org>
;; URL: https://github.com/haskell/haskell-snippets
;; Keywords: snippets, haskell
;; Version: 0.1.0
;; Package-Requires: ((yasnippet "0.8.0"))

;;; Commentary:
;;
;;   Pony-Snippets is a collection of YASnippet Pony snippets for Emacs.
;;
;;   Available Expansion Keys:
;;
;;       trye - try/else/end block
;;       use  - use module
;;

;;; Code:

(setq pony-snippets-dir
      (file-name-directory load-file-name))

;;;###autoload
(defun pony-snippets-initialize ()
  (let ((snip-dir (expand-file-name "snippets" pony-snippets-dir)))
    (add-to-list 'yas-snippet-dirs snip-dir t)
    (yas-load-directory snip-dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(pony-snippets-initialize))

(require 'yasnippet)
(provide 'pony-snippets)

;;; pony-snippets.el ends here

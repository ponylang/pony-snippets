;;; pony-snippets.el --- Yasnippets for Pony

;; Copyright (C) 2016 Sean T. Allen
;; URL: https://github.com/seantallen/pony-snippets
;; Keywords: snippets, pony
;; Version: 0.0.1
;; Package-Requires: ((yasnippet "0.8.0"))

;;; Commentary:
;;
;;   Pony-Snippets is a collection of YASnippet Pony snippets for Emacs.
;;
;;   Available Expansion Keys:
;;
;;       actor     - actor definition
;;       be        - behavior definition
;;       class     - class definition
;;       for       - for/end block
;;       fore      - for/else/end block
;;       if        - if/end block
;;       ife       - if/else/end block
;;       interface - interface definition
;;       lambda    - lambda definition
;;       match     - match/end block
;;       matche    - match/else/end block
;;       new       - new method definition
;;       newc      - new create method definition
;;       object    - object literal definition
;;       primitive - primitive definition
;;       recover   - recover block
;;       repeat    - repeat/until/end block
;;       repeate   - repeat/until/else/end block
;;       struct    - struct definition
;;       trait     - trait definition
;;       try       - try/end block
;;       trye      - try/else/end block
;;       type      - type definition
;;       use       - use module
;;       while     - while/end block
;;       whilee    - while/else/end block
;;       with      - with/end block
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

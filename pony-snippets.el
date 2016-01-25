;;; pony-snippets.el --- Yasnippets for Pony

;; Copyright (C) 2016 Sean T. Allen
;; URL: https://github.com/seantallen/pony-snippets
;; Keywords: snippets, pony
;; Version: 0.0.1
;; Package-Requires: ((yasnippet "0.8.0"))

;; Permission is hereby granted, free of charge, to any person obtaining
;; a copy of this software and associated documentation files (the
;; "Software"), to deal in the Software without restriction, including
;; without limitation the rights to use, copy, modify, merge, publish,
;; distribute, sublicense, and/or sell copies of the Software, and to
;; permit persons to whom the Software is furnished to do so, subject to
;; the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
;; LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
;; OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
;; WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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

(require 'yasnippet)

(defvar pony-snippets-dir
  (file-name-directory load-file-name))

;;;###autoload
(defun pony-snippets-initialize ()
  (let ((snip-dir (expand-file-name "snippets" pony-snippets-dir)))
    (add-to-list 'yas-snippet-dirs snip-dir t)
    (yas-load-directory snip-dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(pony-snippets-initialize))

(provide 'pony-snippets)

;;; pony-snippets.el ends here

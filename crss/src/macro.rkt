#lang racket

(require "types.rkt")
(require "compile.rkt")
(require "css-defines.rkt")

(provide (all-defined-out))

(define-syntax-rule (elem name children)
	(selector name children))

(define-syntax-rule (id name children)
	(selector (string-append "#" name) children))

(define-syntax-rule (all children)
	(selector "*" children))

(define-syntax-rule (grp sels children)
	(selector (string-join sels ", ") children))

(define-syntax-rule (cl name children)
	(selector (string-append "." name) children))

(define-syntax-rule (r prop val)
	(decl prop val))

(define-syntax variable-name->string
  (lambda (stx)
    (syntax-case stx ()
    ((_ id)
       (identifier? #'id)
         (datum->syntax #'id (symbol->string (syntax->datum #'id)))))))
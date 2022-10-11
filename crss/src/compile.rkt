#lang racket

(require "types.rkt")
(provide (all-defined-out))

(define (decl->css decl)
	(format "  ~a: ~a;\n" 
	(property-name (decl-prop decl)) 
	(decl-val decl)))

(define (decls->css decls)
	(string-join (map decl->css decls) ""))

(define (compile rule)
	(format "~a {\n~a}\n\n"
	(selector-name rule)
	(decls->css (selector-children rule))))
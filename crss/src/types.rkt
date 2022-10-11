#lang racket

(provide (all-defined-out))

(struct decl
	(prop val) #:transparent)

(struct selector 
	(name [children]) #:transparent)

(struct property 
	(name) #:transparent)

(define (rule-decls rule)
	(selector-children rule))
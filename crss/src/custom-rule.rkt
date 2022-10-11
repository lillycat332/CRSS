#lang racket

(require "compile.rkt")
(require "types.rkt")
(require "macro.rkt")
(require "css-defines.rkt")
(provide (all-defined-out))

(define (font-lit name size)
	((r font-family name) 
	 (r font-size size)))
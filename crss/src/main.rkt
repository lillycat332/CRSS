#lang racket

(require "types.rkt")

;; Testing rule structure
(define my-rule
  (rule "center"
        '((rule-field "display" "flex")
        (rule-field "justify-content" "center")
        (rule-field "align-items" "center"))))

rule-field-val (first (rule-body my-rule))

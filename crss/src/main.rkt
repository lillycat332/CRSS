#lang racket

(struct rule (body))
(struct rule-field (name val))

(define my-rule
  (rule
   (rule-field "display" "flex")))

(displayln (~a (rule-field-val  (rule-body my-rule)) " : "
               (rule-field-name (rule-body my-rule))))

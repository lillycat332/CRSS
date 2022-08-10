#lang racket

(provide (struct-out rule))
(provide (struct-out rule-field))

(struct rule (body))
(struct rule-field (name val))

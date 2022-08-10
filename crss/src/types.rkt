#lang racket

(provide (struct-out rule))
(provide (struct-out rule-field))

(struct rule (name body))
(struct rule-field (name val))

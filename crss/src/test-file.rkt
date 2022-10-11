#lang racket

(require "types.rkt")
(require "compile.rkt")
(require "macro.rkt")
(require "custom-rule.rkt")
(require "css-defines.rkt")

(display (compile
         (cl "my-class" (list
            (r font-size   "12px")
            (r color       "#fff")
            (r disp        "flex")))))

(display (compile
         (all (list
            (r font-family "Helvetica")))))

(display (compile
         (elem "h1" (list
            (r font-size   "2.5em")
            (r color       "#000")))))
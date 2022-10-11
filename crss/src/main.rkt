#lang racket

(require racket/cmdline)

(define verbose-mode (make-parameter #f))

(define outfile
  (command-line
   #:program "css-compiler"
   #:once-each
   [("-v" "--verbose") "Compile with verbose error/warn messages"
                       (verbose-mode #t)]

   #:args (output-filename)
   output-filename))


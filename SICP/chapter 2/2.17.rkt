#!/usr/bin/racket
#lang sicp

(define (last-pair L)
    (cond ((null? L) 
            (error "list empty"))
        ((null? (cdr L)) 
            L)
        (else 
            (last-pair (cdr L)))))

(last-pair (list 23))
(last-pair (list 23 72 149 34))


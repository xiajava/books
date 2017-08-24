#!/usr/bin/racket
#lang sicp

(define (parity? a b)
    (= (remainder (- a b) 2) 0))

(define (same-parity x . y)
    (define (iter L result)
        (if (null? L)
            result
            (iter 
                (cdr L) 
                (cons
                    result
                    (if (parity? x (car L))
                        (car L)
                        '())))))
    (iter y x))

(same-parity 1 2 3 4 5 6 7 )
(same-parity 2 3 4 5 6 7 )
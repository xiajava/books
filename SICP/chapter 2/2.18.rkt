#!/usr/bin/racket
#lang racket

(define (reverse L)
    (define (iter L result)
        (if (null? L)
            result
            (iter 
                (cdr L) 
                (cons (car L) result))))
    (iter L '()))

(reverse (list 1 4 9 16 25))

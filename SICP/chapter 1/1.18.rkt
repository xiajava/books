#!/usr/bin/racket
#lang racket

(define (even? x)
    (= (remainder x 2) 0))
(define (double x)
    (+ x x))
(define (halve x)
    (/ x 2)
)

(define (fast* x y)
    (define (fast*-iter a x y)
    (cond((= y 0) a)
            ((even? y) (fast*-iter a (double x) (halve y)))
            (else (fast*-iter (+ a x) x (- y 1)))))
    (fast*-iter 0 x y))

(fast* 10 11)
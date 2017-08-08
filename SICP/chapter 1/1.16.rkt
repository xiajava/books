#!/usr/bin/racket
#lang racket

(define (square x)
    (* x x))
(define (even? x)
    (= (remainder x 2) 0))

(define (fast-expt b n)
    (define (fast-expt-iter a b count)
        (cond((= count 0) a)
            ((even? count) (fast-expt-iter a (square b) (/ count 2)))
            (else (fast-expt-iter (* a b) b (- count 1)))))
    (fast-expt-iter 1 b n))

(fast-expt 2 11)
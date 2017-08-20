#!/usr/bin/racket
#lang racket

(define dx 0.00001)
(define (square x)
(* x x))
(define (compose f g)
(lambda (x) 
    (f (g x))))
(define (repeated f n)
    (if (= n 1)
        f
        (compose f (repeated f (- n 1)))))

(define (smooth f)
    (lambda (x) 
        (/ (+ (f x)
                (f (- x dx))
                (f (+ x dx)))
            3)))

(define (smooth-n f n)
    ((repeated smooth n) f))

((smooth square) 5)
; 25.000000000066663
((smooth-n square 2) 5)
; 25.00000000013333

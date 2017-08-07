#!/usr/bin/racket
#lang racket

(define (cube x)
    (* x x x))

(define (cbrt x)
    (define (cbrt-iter guess)
        (let ((new-guess (improve guess)))
        (if (good-enough? guess new-guess)
            new-guess
            (cbrt-iter new-guess))))
    (define (improve guess)
        (/ (+ (/ x (* guess guess)) 
                (* 2 guess)) 
            3))
    (define (good-enough? old-guess new-guess)
        (> 0.01
        (/ (abs (- new-guess old-guess))
            old-guess)))
    (cbrt-iter 1.0))

(cbrt 0.008)
(cube (cbrt 8))
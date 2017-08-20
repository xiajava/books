#!/usr/bin/racket
#lang racket

(define (deriv g)
    (lambda (x) 
        (/ (- (g (+ x dx)) (g x))
            dx)))
(define dx 0.00001)
(define (newtons-transform  g)
    (lambda (x) 
        (- x (/ (g x) 
                ((deriv g) x)))))
(define (newtons-method g guess)
    (fixed-point (newtons-transform g) guess))

(define (fixed-point f first-guess)
    (define tolerance 0.00001)
    (define (enuf? v1 v2)
        (< (abs (- v1 v2)) tolerance))
    (define (try guess)
        (if (enuf? guess (f guess))
            (f guess)
            (try (f guess))))
    (try first-guess))

(define (cube x)
    (* x x x))
(define (square x)
    (* x x))

(define (cubic a b c )
(lambda (x) 
    (+ (cube x)
        (* a (square x))
        (* b x)
        c)))

(newtons-method (cubic 3 2 1) 1.0)
;-2.3247179572447267
(newtons-method (cubic 2 5 5) 1.0)
;-1.2332293376819243

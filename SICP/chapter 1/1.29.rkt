#!/usr/bin/racket
#lang racket

(define (cube x)
    (* x x x))

(define (sum term a next b)
    (define (iter a r)
        (if (> a b)
            r
            (iter (next a) (+ (term a) r))))
    (iter a 0))

(define (simpson-integral f a b n)
    (define h
        (/ (- b a) n))
    (define (y k)
        (f (+ a (* k h))))
    (define (next x)
        (+ x 2))
        (* 1.0
            (/ h 3)
            (+ (* 4 (sum y 1 next (- n 1)))
                (* 2 (sum y 2 next (- n 2)))
                (y 0)
                (y n))))

(simpson-integral cube 0 1 100)
(simpson-integral cube 0 1 1000)

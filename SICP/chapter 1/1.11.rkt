#!/usr/bin/racket
#lang racket

(define (f n)
    (if (< n 3)
    n
    (+ (f (- n 1)) 
        (* 2 (f (- n 2)))
        (* 3 (f (- n 3))))))

(f 0)
(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
;;;;;;
;; 0
;; 1
;; 2
;; 4
;; 11
;; 25
;;;;;;
(define (g n)
    (define (g-iter x y z count)
        (if (< count 3)
            (if (< count 2) count z)
            (g-iter y z (+ z (* 2 y) (* 3 x)) (- count 1))))
    (g-iter 0 1 2 n))

(g 0)
(g 1)
(g 2)
(g 3)
(g 4)
(g 5)
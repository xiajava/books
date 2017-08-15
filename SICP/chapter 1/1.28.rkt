#!/usr/bin/racket
#lang racket

(define (even? x)
    (= (remainder x 2) 0))
(define (square x)
    (* x x))
(define (!= a b)
    (not (= a b)))

(define (nontrivial-square-root? a n)
    (and (!= a 1)
         (!= a (- n 1))
         (= 1 (remainder (square a) n)))) 

(define (expmod base exp m)
    (cond   
        ((= exp 0) 1)
        ((nontrivial-square-root? base m) 0)
        ((even? exp)
        (remainder (square (expmod base (/ exp 2) m)) 
                    m))
        (else 
            (remainder (* base (expmod base (- exp 1) m)) 
                        m))))

(define (MR-test n)
    (define (try-it a)
        (= (expmod a (- n 1) n) 1))
    (try-it (+ 1 (random (- n 1)))))

(define (fast-primer? n times)
    (cond ((= times 0) #t)
        ((MR-test n)(fast-primer? n (- times 1)))
        (else #f)
        ))

(define (Miller-Rabin-test n)
    (fast-primer? n (ceiling (/ n 2))))

(Miller-Rabin-test 561)
(Miller-Rabin-test 1105)
(Miller-Rabin-test 1729)
(Miller-Rabin-test 2465)
(Miller-Rabin-test 2821)
(Miller-Rabin-test 6601)
(newline)
(Miller-Rabin-test 7)
(Miller-Rabin-test 17)
(Miller-Rabin-test 19)
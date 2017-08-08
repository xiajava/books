#!/usr/bin/racket
#lang racket

;http://sicp.readthedocs.io/en/latest/chp1/19.html
(define (square x)
    (* x x))

(define (fib n)
    (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q n)
    (cond ((= n 0)
            b)
          ((even? n)
            (fib-iter a 
                      b
                      (+ (square p) (square q))     ; compute p'
                      (+ (* 2 p q) (square q))      ; compute q'
                      (/ n 2)))
          (else
            (fib-iter (+ (* b q) (* a q) (* a p))
                      (+ (* b p) (* a q))
                      p
                      q
                      (- n 1)))))

(fib 0)
(fib 5)
(fib 8)
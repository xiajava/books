#!/usr/bin/racket
#lang racket

(define (square x)
(* x x))

(define (compose f g)
(lambda (x) 
    (f (g x))))

(define (repeated f n)
    (if (= n 1)
        f
        (compose f (repeated f (- n 1)))))

(define (repeated-iter f n)
    (define (iter i rf)
        (if (= i 1)
            rf
            (iter (- i 1) (compose f rf))))
    (iter n f))

((repeated square 2) 5) ;625
((repeated-iter square 2) 5) ;625
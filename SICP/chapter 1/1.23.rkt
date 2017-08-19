#!/usr/bin/racket
#lang racket

(define (square x)
    (* x x))

(define (prime? n)

    (define (next n)
        (if (= n 2)
            3
            (+ n 2)))

    (define (smallest-divisor n)
        (find-divisor n 2))

    (define (find-divisor n test-divisor)
        (cond ((> (square test-divisor) n)
                n)
            ((divides? test-divisor n)
                test-divisor)
            (else
                (find-divisor n (next test-divisor))))) 

    (define (divides? a b)
        (= (remainder b a) 0))

    (= n (smallest-divisor n)))

(prime? 15)
(prime? 11)
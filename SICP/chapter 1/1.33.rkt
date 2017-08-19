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



(define (filtered-accumulate combiner null-value term a next b predicate?)
     (if (> a b)
        null-value
        (let (
                (rest (filtered-accumulate combiner null-value term (next a) next b predicate?))
            )
            (if (predicate? a) 
                (combiner (term a) rest) 
                rest))))

(define (filtered-accumulate-iter combine null-value term a next b valid?)
    (define (iter i result)
        (cond ((> i b)
                result)
              ((valid? i)
                (iter (next i) (combine (term i) result)))
              (else 
                (iter (next i) result))))
    (iter a null-value))

(define (primes-sum a b)
    (filtered-accumulate + 
                         0
                         square
                         a
                         (lambda (i) (+ i 1))
                         b
                         prime?))

(primes-sum 1 10) ;;88

(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

(define (coprime? i n)
    (and
        (< i n)
        (= 1 (gcd i n))))

(define (product-of-coprimes n)
    (filtered-accumulate *
                         1
                         (lambda (x) x)
                         1
                         (lambda (i) (+ i 1))
                         n
                         (lambda (x) (coprime? x n))))

(product-of-coprimes 10) ;;189

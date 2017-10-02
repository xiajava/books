#!/usr/bin/racket
#lang racket

(define (map2 proc items)
    (if (null? items)
        '()
        (cons (proc (car items))
            (map2 proc (cdr items)))))

(define (filter predicate sequence)
    (cond 
        ((null? sequence) 
            '())
        ((predicate (car sequence))
            (cons (car sequence) (filter predicate (cdr sequence))))
        (else 
            (filter predicate (cdr sequence)))))

(define (accumulate op initial sequence)
    (if (null? sequence)
        initial
        (op (car sequence)
            (accumulate op initial (cdr sequence)))))

(define (enumerate-interval low high)
    (if (> low high)
        '()
        (cons low (enumerate-interval (+ 1 low) high))))

(define (enumerate-tree tree)
    (cond 
        ((null? tree) 
            '())
        ((not (pair? tree))
            (list tree))
        (else 
            (append (enumerate-tree (car tree))
                    (enumerate-tree (cdr tree))))))

(define (square x)
    (* x x))

(define (prime? n)

    (define (next t)
        (if (= t 2)
            3
            (+ t 2)))

    (define (divides? a b)
        (= (remainder b a) 0))

    (define (find-divisor n test-divisor)
        (cond ((> (square test-divisor) n)
                n)
            ((divides? test-divisor n)
                test-divisor)
            (else
                (find-divisor n (next test-divisor)))))

    (define (smallest-divisor n)
        (find-divisor n 2))

    (= n (smallest-divisor n)))
    
;(map (lambda (x) (* 2 x)) (list 1 2 3))
;(define (odd? x)
;    (= (remainder x 2) 1))
;(filter odd? (list 1 2 3 4 5))
;(accumulate + 0 (list 1 2 3 4 5))
;(enumerate-interval 2 7)
;(enumerate-tree (list 1 (list 2 (list 3 4)) 5))

(define (flatmap proc seq)
    (accumulate append
                '()
                (map proc seq)))

(define (prime-pair? pair)
    (prime? (+ (car pair) (cadr pair))))

(define (make-pair-sum pair)
    (list (car pair) 
            (cadr pair) 
            (+ (car pair) (cadr pair))))

(define (prime-sum-pairs n)
    (map make-pair-sum  ;组合
        (filter prime-pair?  ;过滤
            (flatmap (lambda (i) 
                        (map (lambda (j) (list i j))
                            (enumerate-interval 1 (- i 1))))
                    (enumerate-interval 1 n)))))

(prime-sum-pairs 6)
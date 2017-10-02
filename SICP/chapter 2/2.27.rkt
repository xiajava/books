#!/usr/bin/racket
#lang racket

(define (reverse L)
(define (iter L result)
    (if (null? L)
        result
        (iter 
            (cdr L) 
            (cons (car L) result))))
(iter L '()))

(define (deep-reverse t)
    (cond ((null? t) '())
        ((not (pair? t)) t)
        (else (reverse (list (deep-reverse (car t))
                            (deep-reverse (cadr t)))))))

(define (tree-reverse t)
(define (iter i result)
    (if (null? i)
        result
        (iter 
            (cdr i) 
            (cons (if (pair? (car i))
                    (tree-reverse (car i))
                    (car i))
                result))))
(iter t '()))

(define x (list (list 1 2) (list 3 4) (list 5 6)))
x
(reverse x)
(deep-reverse x)
(tree-reverse x)
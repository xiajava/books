#!/usr/bin/racket
#lang racket

(define (accumulate op initial sequence)
    (if (null? sequence)
        initial
        (op (car sequence)
            (accumulate op initial (cdr sequence)))))

(define (flatmap proc seq)
    (accumulate append
                '()
                (map proc seq)))

(define (enumerate-interval low high)
    (if (> low high)
        '()
        (cons low (enumerate-interval (+ 1 low) high))))

(define (filter predicate sequence)
    (cond 
        ((null? sequence) 
            '())
        ((predicate (car sequence))
            (cons (car sequence) (filter predicate (cdr sequence))))
        (else 
            (filter predicate (cdr sequence)))))

(define (unique-pairs n) ;所有序对(i,j), 1 <= i < j <= n
    (flatmap (lambda (i) 
                (map (lambda (j) (list i j))
                    (enumerate-interval 1 (- i 1))))
            (enumerate-interval 1 n)))

(define (unique-triples n)
    (flatmap (lambda (i)
                 (map (lambda (j) (cons i j))       ; cons 起 i 元素和二元组 j ，组成三元组
                      (unique-pairs (- i 1))))      ; 生成不大于 i 的所有相异整数二元组
             (enumerate-interval 1 n)))             ; 生成 1 至 n 的所有整数，作为 i 

(define (same? sum triple)
    (= sum 
        (+ (car triple) (cadr triple) (caddr triple))))

(define (make-triples n sum)
    (filter (lambda (t)
                (same? sum t))
            (unique-triples n)))

(make-triples 10 13)
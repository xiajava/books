#!/usr/bin/racket
#lang racket

(define (cont-frac n d k)
    (define (cf i)
    (if (= k i)
        (/ (n i) (d i) )
        (/ (n i) 
            (+ (d i) (cf (+ i 1))))))
    (cf 1))

(cont-frac 
    (lambda (i) 1.0) 
    (lambda (i) 1.0) 
    11) ;;0.6180555555555556

(define (cont-frac-iter n d k)
    (define (cf-iter i truncation)
        (if (= i 1)
            truncation
            (cf-iter (- i 1) 
                    (/ (n i) 
                        (+ (d i) truncation)))))
    (cf-iter k 
            (/ (n k) (d k))))
    

(cont-frac-iter 
    (lambda (i) 1.0) 
    (lambda (i) 1.0) 
    11) ;;0.6180555555555556

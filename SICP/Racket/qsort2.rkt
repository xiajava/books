#!/usr/bin/racket
#lang racket

(define lst (list 234 123 68 74 100 1 3 5 8 4 2))

(
    define (qsort2 l cmp)
        (
            if(or (empty? l) (empty? (cdr l))) l
            (
                let*-values 
                (
                    [(key) (car l)]
                    [(small big) 
                    (
                        partition (lambda (x) (cmp x key)) (cdr l)
                    )
                    ]
                )
                (
                    append (qsort2 small cmp) (list key) (qsort2 big cmp)
                )
            )
        )
)
(qsort2 lst <)
(qsort2 lst >)
(qsort2 (list "hello" "world" "baby") string<?)

(
    define (qsort3 l cmp key)
        (
            if(or (empty? l) (empty? (cdr l))) l
            (
                let*-values 
                (
                    [(item) (car l)]
                    [(small big) 
                    (
                        partition (lambda (x) (cmp (key x) (key item))) (cdr l)
                    )
                    ]
                )
                (
                    append (qsort3 small cmp key) (list item) (qsort3 big cmp key)
                )
            )
        )
)
(qsort3 (list '(3 "关上冰箱") '(1 "打开冰箱") '(2 "把大象塞到冰箱里")) < car)

(
    define (qsort l [cmp <] [key (lambda (x) x)])
        (
            if(or (empty? l) (empty? (cdr l))) l
            (
                let*-values 
                (
                    [(item) (car l)]
                    [(small big) 
                    (
                        partition (lambda (x) (cmp (key x) (key item))) (cdr l)
                    )
                    ]
                )
                (
                    append (qsort small cmp key) (list item) (qsort big cmp key)
                )
            )
        )
)
(qsort lst <)
(qsort lst >)

(newline)
(sort lst <)
(sort (list "hello" "world" "babay") string<?)
(sort (list '(3 "关上冰箱") '(1 "打开冰箱") '(2 "把大象塞到冰箱里")) #:key car <)

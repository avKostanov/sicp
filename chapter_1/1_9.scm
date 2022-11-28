#lang sicp

(define (inc x) (+ x 1))
(define (dec x) (- x 1))

(define (sum a b) 
    (if (= a 0) b (inc (sum (dec a) b) ))
)
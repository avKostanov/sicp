#lang sicp
(define (square x) (* x x))
(define (sum_of_squares x y) (+ (square x) (square y)))


(define (sum_2_biggest_squares a b c) 
    (cond ((and (< c b a)) (sum_of_squares a b))
          ((and (< b c a)) (sum_of_squares a c))
          (else (sum_of_squares b c))
    )
)

(sum_2_biggest_squares 1 3 4)
; (< 6 3 4)
#lang sicp
(define (abs x) (if (< x 0) (- x) x))
(define (cube x)(* x x x))
(define (average a b) (/ (+ a b) 2))
(define tolerance 0.001)

(define (impove x guess) 
    (/ (+ 
            (* 2 guess) 
            (/ x (* guess guess))
        ) 
        3
    )
)

(define (good_enough? x guess) 
    (< (abs (- (cube guess) x)) tolerance)
)

(define (cube_iter x guess) (
    if (good_enough? x guess) 
        guess
        (cube_iter x (impove x guess))
)
)

(cube_iter 64 1.0)
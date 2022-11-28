#lang sicp
(define (abs x)
    (if (< x 0)
    (- x)
    x)
)

(define tolerance 0.0001)

(define (square x) 
    (* x x)
)

(define (average x y)
    (/ (+ x y) 2)
)

(define (improve guess x)
    (average guess (/ x guess))
)

(define (good_enough_new? guess x)
    (<  (abs (- 
            (improve guess x) 
            (improve (improve guess x) x)) 
            )
        tolerance
        
    )
)

(define (sqrt_iter_new guess x)
    (if (good_enough_new? guess x)
    guess
    (sqrt_iter_new (improve guess x)
    x)
    )
)

(define (sqrt x)
    (sqrt_iter_new 12222.0 x)
)

(sqrt 0.00000001)
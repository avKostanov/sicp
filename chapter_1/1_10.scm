#lang sicp

(define (Akkerman x y)
    (cond 
        ((= y 0) 0) 
        ((= x 0) (* 2 y)) 
        ((= y 1) 2)
        (else (
            Akkerman (- x 1) (Akkerman x (- y 1))
        )
        )
     )
)



(define (f n) (Akkerman 0 n)) ;2*n
(define (g n) (Akkerman 1 n)) ;2^n
(define (h n) (Akkerman 2 n))
(f 4)
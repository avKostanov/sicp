#lang sicp


;recursive
(define (f n) (
    if 
    (< n 3) 
    n
    (+  (f (- n 1)) 
        (* 2 (f (- n 2)))
        (* 3 (f (- n 3)))
    )
    )
    
)

(f 4)

; iterative
(define (f n)
    (if 
    (< n 3) 
    n)
)

; (define (f_iter 0 1 2 count)
;     ()
; )
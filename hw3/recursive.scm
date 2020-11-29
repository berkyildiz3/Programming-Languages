(define (f n)
  (+ (* 2 n) (* 3 n) ))

(define (product-of-f k)
  (cond ((= k 0) 0)
        ((<= k 1) 5)
        (#T (* (f k) (product-of-f (- k 1))))))


(display "Output of recursive function: ")
(display (product-of-f 4))
(newline)

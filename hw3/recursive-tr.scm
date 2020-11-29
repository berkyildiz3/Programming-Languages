(define (f n)
  (+ (* 2 n) (* 3 n) ))

(define (product-of-f-helper k product-of-fpartial)
   (if (<= k 1)
       product-of-fpartial
       (product-of-f-helper (- k 1) (* (f k) product-of-fpartial))))
    
(define (product-of-f-tr k)
    (cond ((= k 0) (product-of-f-helper k 0))
   ((if (>= k 1) (product-of-f-helper k 5)))))
    

(display "Output of tail-recursive function: ")
(display(product-of-f-tr 4))
(newline)


(define (inc x) (+ x 1))
(define (dec x) (- x 1))

(define (plusR a b)
  (if (= a 0)
    b
    (inc (plusR (dec a) b))))

(define (plusI a b)
  (if (= a 0)
    b
    (plusI (dec a) (inc b))))

(display "This one is recursive.\n")
(trace plusR)
(plusR 4 5)

(display "\n\nThis one is iterative.\n")
(trace plusI)
(plusI 4 5)

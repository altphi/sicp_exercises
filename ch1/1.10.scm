(load "../util.scm")

; NB There are variaions on Ackermann's function that get called the same name.  This one might be Ackermann-Peter.
(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(else (A (- x 1) (A x (- y 1))))))

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))

(quiet-trace f g h)
(display "f(n) => (A 0 n) => 2n\n")
(for-each f (list 0 1 2 3 4 5 6))
(newline)

(display "g(n) => (A 1 n) => 2^n when n>0 | 0 when n=0\n")
(for-each g (list 0 1 2 3 4 10 20))
(newline)

(display "h(n) => (A 2 n) => n^(2^(n-1))\n")
(for-each h '(0 1 2 3 4))
(newline)

; (h 6) is too big to compute

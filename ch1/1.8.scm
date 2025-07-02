; Exercise 1.8
; Newton's method for cube roots is based on the fact that if y is an approximation
; to the cube root of x, then a better approximation is given by the value
; (x/y^2 + 2y) / 3
; Use this forumula to implement a cube-root procedure analogous to the square-root procedure.

(define (cube x) (* x x x))
(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess x) (< (abs (- (cube guess) x)) 0.001))
(define (cbrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (cbrt-iter (improve guess x) x)))
(define (cbrt x) (cbrt-iter 1.0 x))

(trace cbrt)
(cbrt 27)
(cbrt (* 12 12 12))
(cbrt (* 1e13 1e13 1e13))

(load "newton_sqrt.scm")

; The use of new-if will result in an infinite loop because Scheme uses 'applicative order' (_except_ for special forms like `if` and `cond` which use normal order) and will execute both branches of new-if every time.
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(display (sqrt-iter 2 8))
(exit)

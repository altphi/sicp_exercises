(load "newton_sqrt.scm")

(display "The use of new-if will result in an infinite loop because Scheme uses 'applicative order' (_except_ for special forms like `if` and `cond` which use normal order) and will execute both branches of new-if every time.\n")

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(sqrt-iter 2 8)

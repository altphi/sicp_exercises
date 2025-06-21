(load "./1.7_definitions.scm")

(define (check-delta guess next-guess)
  (< (abs (- guess next-guess)) 0.001))

(define (sqrt-iter-b guess x)
  (if (good-enough? guess x)
    guess
    (let ((next-guess (improve guess x)))
      (if (check-delta guess next-guess)
        guess
        (sqrt-iter-b next-guess x)))))
(define (sqrt-b x) (sqrt-iter-b 1.0 x))

(trace sqrt-b)
(display "These work\n")
(sqrt-b 16)
(sqrt-b .016)

; Note that even though this should fail but does not.
(sqrt-b (* 10e99 10e99))

(display "This is incorrect, as expected.\n")
(sqrt-b (* 10e-20 10e-20))

(display "This works now that we're checking the delta for very little change between the last and next guess.\n")
(sqrt-b 1e13)

; 1.7
; The good-enough? test used in computing square roots will not be very eﬀective for ﬁnding
; the square roots of very small numbers. Also, in real computers, arithmetic operations are
; almost always performed with limited precision. This makes our test inadequate for very large
; numbers. Explain these statements, with examples showing how the test fails for small and
; large numbers. An alternative strategy for implementing good-enough? is to watch how
; guess changes from one iteration to the next and to stop when the change is a very small
; fraction of the guess. Design a square-root procedure that uses this kind of end test.
;  Does this work better for small and large numbers?
(load "./1.7_definitions.scm")

(trace sqrt)
(display "These work\n")
(sqrt 16)
(sqrt .016)

; Note that even though this should fail but does not.
(sqrt (* 10e99 10e99))

(display "This is incorrect, as expected.\n")
(sqrt (* 10e-20 10e-20))

(display "This hits an infinite loop when the guess is around 3162276.66016838 because the next guess is always the same number.\n")
(sqrt 1e13)

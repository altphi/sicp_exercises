; utils.scm
; display evaluation and also a newline
(define (displayln v)
  (display v)
  (newline)
  v)

; alias for displayln
(define d displayln)

; display all, i.e. the expression to be evaluated and then the value of the evaluation
(define-syntax da
  (syntax-rules ()
    ((_ expr)
     (begin
       (display 'expr)
       (newline)
       (display " ==> ")
       (newline)
       (display expr)
       (newline)(newline)
       ))))

; Add other utility functions here
(define (square x) (* x x))

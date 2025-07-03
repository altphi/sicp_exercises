; (define-syntax quiet-trace-one
;   (syntax-rules ()
;     ((_ proc)
;      (begin
;        (define original-proc proc)
;        (set! proc
;          (lambda args
;            (printf "(~s ~a)" 'proc
;              (let loop ((args args) (first? #t))
;                (if (null? args)
;                    ""
;                    (string-append
;                      (if first? "" " ")
;                      (format "~s" (car args))
;                      (loop (cdr args) #f)))))
;            (let ((result (apply original-proc args)))
;              (printf " => ~s\n" result)
;              result)))
;        proc))))

(define-syntax quiet-trace-one
  (syntax-rules ()
    ((_ proc)
     (begin
       (define original-proc proc)
       (set! proc
         (lambda args
           (printf "(~s~a)" 'proc
             (if (null? args)
                 ""
                 (let loop ((args args) (first? #t))
                   (if (null? args)
                       ""
                       (string-append
                         (if first? " " " ")
                         (format "~s" (car args))
                         (loop (cdr args) #f))))))
           (let ((result (apply original-proc args)))
             (printf " => ~s\n" result)
             result)))
       proc))))


(define-syntax quiet-trace
  (syntax-rules ()
    ((_ proc ...)
     (begin
       (quiet-trace-one proc)
       ...))))

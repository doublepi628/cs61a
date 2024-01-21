(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ascending? asc-lst) 
    (if (null? (cdr asc-lst))
        #t
        (if (>= (cadr asc-lst) (car asc-lst))
            (ascending? (cdr asc-lst))
            #f)))

(define (square n) (* n n))

(define (pow base exp)
    (cond ((= exp 0) 1)
          ((odd? exp) (* base (pow base (- exp 1))))
          (else (pow (square base) (/ exp 2)))))

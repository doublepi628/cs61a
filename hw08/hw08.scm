(define (my-filter pred s) (if (null? s) nil (if (pred (car s)) (cons (car s) (my-filter pred (cdr s))) (my-filter pred (cdr s)))))

(define (interleave lst1 lst2) (cond ((null? lst1) lst2)
                                     ((null? lst2) lst1)
                                     (else (cons (car lst1) (cons (car lst2) (interleave (cdr lst1) (cdr lst2)))))))

(define (culmulating jn st end tr) (if (< st end) (jn (tr st) (culmulating jn (+ st 1) end tr)) (tr st)))

(define (accumulate joiner start n term) (joiner start (culmulating joiner 1 n term)))

(define (no-repeats lst) (if (null? lst) nil (cons (car lst) (no-repeats (my-filter (lambda (x) (not (= x (car lst)))) (cdr lst))))))

#lang racket

; (list.filter pred lst): F X L -> L
; returns list of elements in lst that satisfy the predicate pred
; : size(lst)=0   -> ()
; : else if pred? -> (lst[0] . (list.filter pred lst[1..end]))
; : else          -> (list.filter pred lst[1..end])
(define list.filter
  (lambda (pred lst)
    (if (null? lst)
        (list)
        (if (pred (car lst))
            (cons (car lst) (list.filter pred (cdr lst)))
            (list.filter pred (cdr lst))))))

#lang racket

; (filter-in pred lst): F X L -> L
; returns list of elements in lst that satisfy the predicate pred
; : size(lst)=0   -> ()
; : else if pred? -> (lst[0] . (filter-in pred lst[1..end]))
; : else          -> (filter-in pred lst[1..end])
(define filter-in
  (lambda (pred lst)
    (if (null? lst)
        (list)
        (if (pred (car lst))
            (cons (car lst) (filter-in pred (cdr lst)))
            (filter-in pred (cdr lst))))))

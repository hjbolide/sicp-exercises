;; exercise1.2
(/
 (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
 (* 3 (- 6 2) (- 2 7)))

;; exercise1.3
(define (max x y) (if (> x y) x y))
(define (min x y) (if (> x y) y x))
(define (ne x y) (or (> x y) (< x y)))
(define (mid x y z) (cond
                     ((and (ne x (max x (max y z)))
                           (ne x (min x (min y z)))) x)
                     ((and (ne y (max x (max y z)))
                           (ne y (min x (min y z)))) y)
                     ((and (ne z (max x (max y z)))
                           (ne z (min x (min y z)))) z)))
(define (square x) (* x x))
(define (ch x y z) (+ (square (max x (max y z)))
                      (square (mid x y z))))
(define (ch2 x y z) (+ (square (max x y))
                       (square (max (min x y) z))))

;; exercise1.5
; If the interpreter uses normal-order evaluation, the (p) operand will not be evaluated until its value is needed. This is because when using normal-order evaluation the interpreter will substitute operand expressions for parameters. Since the conditional statement in the body is structured such that the second argument never needs to be evaluated, the entire test procedure will evaluate to 0 under normal-order evaluation.

;; exercise1.5
; Applicative order will evaluate all operand first, program will not stop.

;; exercise1.6
; new-if is a function, the first thing a function is called is to evaluate all arguments. That results in dead end.


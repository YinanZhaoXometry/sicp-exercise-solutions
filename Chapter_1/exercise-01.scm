; -----------------
; Exercise 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

; -----------------
; Exercise 1.3
(define (square x)
	(* x x))

(define (max x y)
	(if (> x y) x y))

(define (min x y)
	(if (> x y) y x))

(define (sum-of-squares-two-largest x y z)
	(+ (square (max x y)) (square (max z (min x y)))))

(sum-of-squares-two-largest 1 2 3)
(sum-of-squares-two-largest 3 1 2)
(sum-of-squares-two-largest 3 2 1)

; -----------------
; Exercise 1.5

; (define (p) (p))
; (define (test x y)
; 	(if (= x 0) 0 y))
; (test 0 (p))

; Normal-order evaluation order:
; 1. the `(p)` in `(test 0 (p))` will be replaced as `(p)`, and the arguments won't be evaluated until is used
; 2. The body of the procedure is evaluated and the parameters are replaced as corresponding arguments, thus: `(if (= 0 0) 0 (p))
; 3. The _if expression_'s predicate expression is evaluated first, and it evaluates to true, thus the value of this if expression is 0
; 4. The result of procedure call result to 0, evaluation finished.


; Applicative-order evaluation order:
; 1. The arguments of procedure call are evaluted first:
; - 0 evalutes to 0
; - `(p)` evaluates to `(p)`, which is procedure call to itself, its result is evaluated subsequently..., this result in recursive call of the procedure itself, the evaluation never finish.


; ----------------
; Exercise 1.6
;
; When the following code was evaluated, specificly `(new-if (good-enough? guess x) guess (sqrt-iter (improve guess x) x))`
; due to the nature of Scheme language, all 3 arguments passed the `new-if` procedure call are evaluated sequentially,
; which will result in a recursive call of `sqrt-iter`, thus the execution will hang there without a return.
;
; (define (new-if predicate then-clause else-clause)
; 	(cond (predicate then-clause)
; 	(else else-clause)))

; (define (sqrt-iter guess x)
; 	(new-if (good-enough? guess x)
; 		guess
; 		(sqrt-iter (improve guess x) x)))

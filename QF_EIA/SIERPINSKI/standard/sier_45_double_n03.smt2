(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 4 x) (- (exp 2 (+ 0 (* 5 x)))) (- (exp 2 (exp 2 (+ 0 (* 4 x)))))) 37) 11))
(check-sat)
(get-model)

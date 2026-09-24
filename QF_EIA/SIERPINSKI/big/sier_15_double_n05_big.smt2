(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 2) x) (- (exp 2 (+ 0 (* 3 x)))) (- (exp 2 (exp 2 (+ 0 (* 5 x)))))) 6) 5))
(check-sat)
(get-model)

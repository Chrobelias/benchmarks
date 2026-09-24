(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 5) x) (- (exp 2 (+ 0 (* 5 x)))) (- (exp 2 (exp 2 (+ 3 (* 9 x)))))) 32) 21))
(check-sat)
(get-model)

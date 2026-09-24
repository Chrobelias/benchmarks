(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 5) x) (* (- 2) (exp 2 (+ 3 (* 0 x)))) (- (exp 2 (exp 2 (+ 0 (* 2 x)))))) 13) 4))
(check-sat)
(get-model)

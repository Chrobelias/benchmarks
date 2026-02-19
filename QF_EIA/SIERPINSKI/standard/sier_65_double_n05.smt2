(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 7) x) (* 3 (exp 2 (+ 0 (* 1 x)))) (- (exp 2 (exp 2 (+ 5 (* 6 x)))))) 56) 20))
(check-sat)
(get-model)

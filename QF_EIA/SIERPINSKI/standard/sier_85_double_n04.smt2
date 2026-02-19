(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 5) x) (* 2 (exp 2 (+ 10 (* 0 x)))) (- (exp 2 (exp 2 (+ 5 (* 0 x)))))) 81) 74))
(check-sat)
(get-model)

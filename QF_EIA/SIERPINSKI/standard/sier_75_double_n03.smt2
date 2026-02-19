(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 2 x) (* 3 (exp 2 (exp 2 (+ 7 (* 0 x)))))) 71) 51))
(check-sat)
(get-model)

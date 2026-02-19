(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 4 x) (* 6 (exp 2 (exp 2 (+ 3 (* 3 x)))))) 21) 3))
(check-sat)
(get-model)

(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 4 (exp 2 (+ 9 (* 0 x)))) (* 9 (exp 2 (exp 2 (+ 0 (* 3 x)))))) 54) 31))
(check-sat)
(get-model)

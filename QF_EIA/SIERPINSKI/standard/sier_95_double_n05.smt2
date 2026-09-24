(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 2 x) (* 5 (exp 2 (+ 5 (* 0 x)))) (* 9 (exp 2 (exp 2 (+ 0 (* 1 x)))))) 86) 40))
(check-sat)
(get-model)

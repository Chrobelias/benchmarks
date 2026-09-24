(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 4 x) (* 5 (exp 2 (+ 0 (* 7 x)))) (* 5 (exp 2 (exp 2 (+ 0 (* 9 x)))))) 69) 10))
(check-sat)
(get-model)

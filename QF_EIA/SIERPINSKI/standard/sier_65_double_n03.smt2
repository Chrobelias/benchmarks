(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 6 x) (* 5 (exp 2 (+ 0 (* 3 x)))) (* 9 (exp 2 (exp 2 (+ 3 (* 0 x)))))) 59) 34))
(check-sat)
(get-model)

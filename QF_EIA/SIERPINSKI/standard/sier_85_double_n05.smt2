(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 2 x) (* 7 (exp 2 (+ 8 (* 0 x)))) (* 9 (exp 2 (exp 2 (+ 3 (* 0 x)))))) 83) 62))
(check-sat)
(get-model)

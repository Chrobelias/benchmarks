(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 4 x) (* 3 (exp 2 (+ 3 (* 9 x)))) (* 2 x)) 14) 0))
(check-sat)
(get-model)

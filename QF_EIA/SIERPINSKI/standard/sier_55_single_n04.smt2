(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 10 x) (exp 2 (+ 0 (* 9 x))) (* 4 x)) 45) 3))
(check-sat)
(get-model)

(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 10) (exp 2 (+ 3 (* 5 x)))) (* (- 2) x)) 92) 9))
(check-sat)
(get-model)

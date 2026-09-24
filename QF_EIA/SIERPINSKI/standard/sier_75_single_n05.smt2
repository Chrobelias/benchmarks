(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 3 (exp 2 (+ 7 (* 8 x)))) (* (- 10) x)) 74) 10))
(check-sat)
(get-model)

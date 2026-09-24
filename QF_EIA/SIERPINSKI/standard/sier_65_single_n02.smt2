(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 10) x) (- x)) 59) 38))
(check-sat)
(get-model)

(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 3 (** 2 (+ 7 (* 8 x)))) (* (- 10) x)) 74) 10))
(check-sat)
(get-model)

(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 8) (** 2 (+ 0 (* 8 x)))) (* (- 2) x)) 23) 3))
(check-sat)
(get-model)

(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 4 x) (* (- 9) (** 2 (+ 0 (* 4 x)))) x) 14) 0))
(check-sat)
(get-model)

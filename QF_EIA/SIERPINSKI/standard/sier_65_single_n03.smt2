(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 10) x) (* (- 5) (** 2 (+ 0 (* 2 x)))) (* 5 x)) 63) 36))
(check-sat)
(get-model)

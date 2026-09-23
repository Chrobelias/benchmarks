(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 7) x) (* 4 (** 2 (+ 7 (* 0 x)))) (* (- 9) x)) 105) 8))
(check-sat)
(get-model)

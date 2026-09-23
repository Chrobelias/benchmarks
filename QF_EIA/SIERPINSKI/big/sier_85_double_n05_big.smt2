(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 10) x) (* (- 4) (** 2 (** 2 (+ 5 (* 0 x)))))) 75) 62))
(check-sat)
(get-model)

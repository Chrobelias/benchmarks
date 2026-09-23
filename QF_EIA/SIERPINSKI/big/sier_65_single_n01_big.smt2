(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 4) x) (* (- 3) (** 2 (+ 4 (* 0 x)))) x) 58) 53))
(check-sat)
(get-model)

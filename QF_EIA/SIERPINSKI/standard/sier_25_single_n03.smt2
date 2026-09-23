(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 2 x) (* (- 9) (** 2 (+ 0 (* 9 x)))) (* (- 8) x)) 17) 8))
(check-sat)
(get-model)

(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 8 x) (* (- 8) (** 2 (+ 0 (* 2 x)))) (* (- 8) x)) 31) 21))
(check-sat)
(get-model)

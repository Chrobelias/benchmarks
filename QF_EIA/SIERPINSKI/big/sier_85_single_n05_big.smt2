(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 8 x) (** 2 (+ 8 (* 0 x))) (* 3 x)) 81) 8))
(check-sat)
(get-model)

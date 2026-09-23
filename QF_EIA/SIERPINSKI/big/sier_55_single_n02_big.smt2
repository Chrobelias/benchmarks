(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 7 x) (** 2 (+ 0 (* 8 x))) (* 6 x)) 45) 40))
(check-sat)
(get-model)

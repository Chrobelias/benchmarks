(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 8 x) (* 10 (** 2 (+ 0 (* 7 x)))) (* 4 x)) 82) 2))
(check-sat)
(get-model)

(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 7 x) (* 6 (** 2 (+ 0 (* 9 x)))) (* 8 x)) 104) 33))
(check-sat)
(get-model)

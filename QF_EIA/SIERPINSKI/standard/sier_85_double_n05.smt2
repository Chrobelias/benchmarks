(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 2 x) (* 7 (** 2 (+ 8 (* 0 x)))) (* 9 (** 2 (** 2 (+ 3 (* 0 x)))))) 83) 62))
(check-sat)
(get-model)

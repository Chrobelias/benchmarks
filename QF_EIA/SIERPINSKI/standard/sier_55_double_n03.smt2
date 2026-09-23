(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 4 (** 2 (+ 9 (* 0 x)))) (* 9 (** 2 (** 2 (+ 0 (* 3 x)))))) 54) 31))
(check-sat)
(get-model)

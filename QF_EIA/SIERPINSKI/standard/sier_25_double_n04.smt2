(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 4 x) (* 6 (** 2 (** 2 (+ 3 (* 3 x)))))) 21) 3))
(check-sat)
(get-model)

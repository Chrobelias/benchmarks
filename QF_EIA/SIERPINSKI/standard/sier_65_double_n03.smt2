(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 6 x) (* 5 (** 2 (+ 0 (* 3 x)))) (* 9 (** 2 (** 2 (+ 3 (* 0 x)))))) 59) 34))
(check-sat)
(get-model)

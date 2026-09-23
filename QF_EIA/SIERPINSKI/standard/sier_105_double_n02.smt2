(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 6 x) (* 4 (** 2 (+ 0 (* 8 x)))) (* 10 (** 2 (** 2 (+ 1 (* 0 x)))))) 96) 76))
(check-sat)
(get-model)

(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 10 x) (* 3 (** 2 (+ 0 (* 10 x)))) (* 4 (** 2 (** 2 (+ 0 (* 8 x)))))) 29) 3))
(check-sat)
(get-model)

(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 7 (** 2 (+ 0 (* 6 x)))) (* 5 (** 2 (** 2 (+ 3 (* 0 x)))))) 38) 30))
(check-sat)
(get-model)
